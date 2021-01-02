import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/domain/files/file_transfer_failure.dart';
import 'package:projectcircles/domain/files/file_transfer_type.dart';
import 'package:projectcircles/domain/files/payload_info.dart';
import 'package:projectcircles/infrastructure/circle/apps_repository.dart';
import 'package:projectcircles/infrastructure/circle/files_repository.dart';
import 'package:projectcircles/infrastructure/circle/media_repository.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';

part 'file_transfer_event.dart';

part 'file_transfer_state.dart';

part 'file_transfer_bloc.freezed.dart';

@injectable
class FileTransferBloc extends Bloc<FileTransferEvent, FileTransferState> {
  final AppsRepository _appsRepository;
  final MediaRepository _mediaRepository;
  final FilesRepository _filesRepository;
  final NearbyConnections _nearbyConnections;

  StreamSubscription<FileInfo> incomingFileInfoStreamSubscription;
  StreamSubscription<PayloadInfo> progressOfFileStreamSubscription;
  StreamSubscription<String> respondingUserStreamSubscription;
  StreamSubscription<String> fileSharedSuccessStreamSubscription;
  StreamSubscription<String> fileInfoSuccessStreamSubscription;

  // File transfer variables
  Option<int> lastPayloadId = none();
  int fileTransferIndex = 0;

  int count = 0;

  final logger = Logger();

  FileTransferBloc(
    this._appsRepository,
    this._mediaRepository,
    this._filesRepository,
    this._nearbyConnections,
  ) : super(const FileTransferState.initial(incomingFileInfo: <FileInfo>{})) {
    add(const FileTransferEvent.initialize());
  }

  @override
  Stream<FileTransferState> mapEventToState(
    FileTransferEvent event,
  ) async* {
    yield* state.map(
      initial: (state) async* {
        logger.d("FileTransferBloc initiated");

        // Starting necessary stream subscriptions
        incomingFileInfoStreamSubscription =
            _nearbyConnections.sendingFileInfoStream.listen(
          (fileInfo) {
            logger.d("FileInfo received");
            add(
              FileTransferEvent.fileInfoReceived(fileInfo: fileInfo),
            );
          },
          onError: (e) {
            logger.e(e);
          },
        );
        fileInfoSuccessStreamSubscription ??=
            _nearbyConnections.fileInfoSharingSuccessfulStream.listen((id) {
          logger.d("EndId received: $id");
          add(FileTransferEvent.endIdReceived(endId: id));
        });

        yield* event.maybeMap(
          confirmOutgoingFiles: (e) async* {
            yield* _confirmOutgoingFiles(e.users);
          },
          fileInfoReceived: (e) async* {
            final incomingFiles = Set<FileInfo>.from(state.incomingFileInfo);
            incomingFiles.add(e.fileInfo);
            yield state.copyWith(incomingFileInfo: incomingFiles);
          },
          endIdReceived: (e) async* {
            yield FileTransferState.incomingFilesConfirmation(
                files: state.incomingFileInfo, endId: e.endId);
          },
          orElse: () async* {},
        );
      },
      outgoingFilesConfirmation: (state) async* {
        yield* event.maybeMap(
          confirmOutgoingFiles: (e) async* {
            yield* _confirmOutgoingFiles(e.users);
          },
          cancelSend: (e) async* {
            // TODO: Implement cancellation
          },
          sendFilesInfo: (e) async* {
            // TODO: Add a stream subscription to listen to approval of receiver
            // If successful, add sendFiles event

            final Set<FileInfo> files = state.filesOption
                .getOrElse(() => null); // TODO: Implement error state

            _nearbyConnections.sendFilenameSizeBytesPayload(
              users: state.users,
              outgoingFiles: files.toList(),
            );
            respondingUserStreamSubscription =
                _nearbyConnections.responseStream.listen((event) {
              add(FileTransferEvent.sendFiles(endPointId: event));
            });

            yield FileTransferState.awaitingSendApproval(
              files: files,
            );
          },
          orElse: () async* {},
        );
      },
      awaitingSendApproval: (state) async* {
        yield* event.maybeMap(
          sendFiles: (e) async* {
            final List<File> appFiles = await _appsRepository.getFiles();
            final List<File> mediaFiles = await _mediaRepository.getFiles();
            final List<File> files = _filesRepository.getFiles();

            final Map<FileInfo, double> filesMap = {};

            for (final fileInfo in state.files) {
              filesMap.putIfAbsent(fileInfo, () => 0.0);
            }

            _nearbyConnections.sendFilePayload(
              receiver: e.endPointId,
              files: appFiles + mediaFiles + files,
            );

            yield FileTransferState.transferringFiles(
              type: const FileTransferType.outgoing(),
              filesMap: filesMap,
            );
          },
          orElse: () async* {},
        );
      },
      incomingFilesConfirmation: (state) async* {
        yield* event.maybeMap(
          fileInfoReceived: (e) async* {
            final Set<FileInfo> incomingFiles = Set.from(state.files);
            incomingFiles.add(e.fileInfo);
            logger.d("Files to be received are ${e.fileInfo}");
            yield FileTransferState.incomingFilesConfirmation(
              files: incomingFiles,
              endId: state.endId,
            );
          },
          confirmIncomingFiles: (e) async* {
            // TODO: Send [e.acceptOrReject] to sender
            _nearbyConnections.acceptOrRejectFiles(
                response: e.acceptOrReject, endId: state.endId);

            final Map<FileInfo, double> filesMap = {};
            for (final fileInfo in state.files) {
              filesMap.putIfAbsent(fileInfo, () => 0.0);
            }

            yield FileTransferState.transferringFiles(
              type: const FileTransferType.incoming(),
              filesMap: filesMap,
            );
          },
          orElse: () async* {},
        );
      },
      transferringFiles: (state) async* {
        // Cancelling stream subscriptions that are no longer needed
        incomingFileInfoStreamSubscription?.cancel();
        respondingUserStreamSubscription?.cancel();

        // Starting necessary stream subscriptions
        progressOfFileStreamSubscription ??=
            _nearbyConnections.progressOfFileStream.listen((payloadInfo) {
          add(FileTransferEvent.updateProgress(
            payloadInfo: payloadInfo,
          ));
        }, onError: (e) {
          logger.e(e);
        });

        //TODO : Display in the ui from which device the file sharing is successful
        fileSharedSuccessStreamSubscription ??=
            _nearbyConnections.fileSharingSuccessfulStream.listen((event) {
          logger.d("Count: $count");
          count += 1;
          if (state.type == const FileTransferType.outgoing()) {
            if (count == state.filesMap.length) {
              debugPrint("FileSharing (outgoing) Successful to $event");
              add(const FileTransferEvent.filesSent());
            }
          } else if (state.type == const FileTransferType.incoming()) {
            if (count == state.filesMap.length) {
              debugPrint("FileSharing (incoming) Successful from $event");
              add(const FileTransferEvent.filesReceived());
            }
          }
        });

        // Setting up variables to match incoming payloads to files
        // TODO: Find a better way to do this
        yield* event.maybeMap(
          updateProgress: (e) async* {
            final Map<FileInfo, double> filesMap = Map.from(state.filesMap);

            lastPayloadId.fold(
              () {
                logger.d("Last Payload ID is none");
                filesMap.update(
                  filesMap.keys.elementAt(fileTransferIndex),
                  (_) => e.payloadInfo.progress,
                );
                lastPayloadId = some(e.payloadInfo.payloadId);
              },
              (payloadId) {
                logger.d("Last Payload ID is not none");
                if (e.payloadInfo.payloadId == payloadId) {
                  filesMap.update(
                    filesMap.keys.elementAt(fileTransferIndex),
                    (_) => e.payloadInfo.progress,
                  );
                } else {
                  fileTransferIndex++;
                  filesMap.update(
                    filesMap.keys.elementAt(fileTransferIndex),
                    (_) => e.payloadInfo.progress,
                  );
                }
              },
            );

            yield state.copyWith(filesMap: filesMap);
            // TODO: Call filesSent ot filesReceived on completion
          },
          filesSent: (e) async* {
            final Map<FileInfo, bool> filesMap = {};
            for (final fileInfo in state.filesMap.keys) {
              filesMap.addAll({fileInfo: true});
            }
            yield FileTransferState.transferComplete(
              type: const FileTransferType.outgoing(),
              filesMap: filesMap,
            );
          },
          filesReceived: (e) async* {
            final Map<FileInfo, bool> filesMap = {};
            for (final fileInfo in state.filesMap.keys) {
              filesMap.addAll({fileInfo: true});
            }
            yield FileTransferState.transferComplete(
              type: const FileTransferType.incoming(),
              filesMap: filesMap,
            );
          },
          orElse: () async* {},
        );
      },
      transferComplete: (state) async* {
        progressOfFileStreamSubscription?.cancel();
        fileSharedSuccessStreamSubscription?.cancel();
      },
      hasFailed: (state) async* {
        yield* event.maybeMap(
          confirmOutgoingFiles: (e) async* {
            yield* _confirmOutgoingFiles(e.users);
          },
          orElse: () async* {},
        );
      },
    );
  }

  Stream<FileTransferState> _confirmOutgoingFiles(List<User> users) async* {
    yield FileTransferState.outgoingFilesConfirmation(
      users: users,
      filesOption: none(),
    );

    final List<FileInfo> appFilesInfo = await _appsRepository.getFilesInfo();
    final List<FileInfo> mediaFilesInfo = await _mediaRepository.getFilesInfo();
    final List<FileInfo> filesInfo = _filesRepository.getFilesInfo();

    if (appFilesInfo.isEmpty && mediaFilesInfo.isEmpty && filesInfo.isEmpty) {
      yield const FileTransferState.hasFailed(
          failure: FileTransferFailure.emptySelection());
    } else if (users.isEmpty) {
      yield const FileTransferState.hasFailed(
          failure: FileTransferFailure.noMembers());
    } else {
      yield FileTransferState.outgoingFilesConfirmation(
        users: users,
        filesOption: some(Set.from(appFilesInfo + mediaFilesInfo + filesInfo)),
      );
    }
  }
}
