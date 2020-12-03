import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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

  FileTransferBloc(
    this._appsRepository,
    this._mediaRepository,
    this._filesRepository,
    this._nearbyConnections,
  ) : super(const FileTransferState.initial()) {
    add(const FileTransferEvent.initialize());
  }

  @override
  Stream<FileTransferState> mapEventToState(
    FileTransferEvent event,
  ) async* {
    StreamSubscription<FileInfo> incomingFileInfoStreamSubscription;
    StreamSubscription<PayloadInfo> progressOfFileStreamSubscription;
    StreamSubscription<String> respondingUserStreamSubscription;
    StreamSubscription<String> fileSharedSuccessStreamSubscription;
    StreamSubscription<String> fileInfoSucessStreamSubscription;
    int count = 0;
    int fileCount = 0;
    yield* state.map(
      initial: (_) async* {
        // Starting necessary stream subscriptions
        incomingFileInfoStreamSubscription =
            _nearbyConnections.sendingFileInfoStream.listen(
          (fileInfo) {
            add(
              FileTransferEvent.fileInfoReceived(fileInfo: fileInfo),
            );
          },
          onError: (e) {
            print(e);
          },
        );
        fileInfoSucessStreamSubscription = _nearbyConnections
            .fileInfoSharingSuccessfulStream
            .listen((endId) {
          print(
              "Yay the files to be received from $endId");
          add(FileTransferEvent.endIdReceived(endId: endId));
        });

        final List<FileInfo> incomingFiles = [];

        yield* event.maybeMap(
          confirmOutgoingFiles: (e) async* {
            yield* _confirmOutgoingFiles(e.users);
          },
          fileInfoReceived: (e) async* {
            incomingFiles.add(e.fileInfo);
          },
          endIdReceived: (e) async* {
            yield FileTransferState.incomingFilesConfirmation(
                files: incomingFiles, endId: e.endId);
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

            final List<FileInfo> files = state.filesOption
                .getOrElse(() => null); // TODO: Implement error state

            _nearbyConnections.sendFilenameSizeBytesPayload(
              users: state.users,
              outgoingFiles: files,
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
            fileCount = filesMap.length;

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
            final List<FileInfo> incomingFiles = List.from(state.files);
            incomingFiles.add(e.fileInfo);
            print("Yay the files to be recieved are ${e.fileInfo}");
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
            fileCount = filesMap.length;

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
        progressOfFileStreamSubscription =
            _nearbyConnections.progressOfFileStream.listen((payloadInfo) {
          add(FileTransferEvent.updateProgress(
            payloadInfo: payloadInfo,
          ));
        }, onError: (e) {
          print(e);
        });
        //TODO : Display in the ui from which device the file sharing is successful
        fileSharedSuccessStreamSubscription =
            _nearbyConnections.fileSharingSuccessfulStream.listen((event) {
          count += 1;
          if (state.type == const FileTransferType.outgoing()) {
            if (count == fileCount) {
              debugPrint("FileSharing (outgoing) Successful to $event");
              add(const FileTransferEvent.filesSent());
            }
          } else if (state.type == const FileTransferType.incoming()) {
            if (count == fileCount) {
              debugPrint("FileSharing (incoming) Successful from $event");
              add(const FileTransferEvent.filesReceived());
            }
          }
        });

        // Setting up variables to match incoming payloads to files
        // TODO: Find a better way to do this
        Option<int> lastPayloadId = none();
        int index = 0;

        yield* event.maybeMap(
          updateProgress: (e) async* {
            final Map<FileInfo, double> filesMap = Map.from(state.filesMap);

            lastPayloadId.fold(
              () {
                filesMap.update(
                  filesMap.keys.elementAt(index),
                  (_) => e.payloadInfo.progress,
                );
                lastPayloadId = some(e.payloadInfo.payloadId);
              },
              (payloadId) {
                if (e.payloadInfo.payloadId == payloadId) {
                  filesMap.update(
                    filesMap.keys.elementAt(index),
                    (_) => e.payloadInfo.progress,
                  );
                } else {
                  index++;
                  filesMap.update(
                    filesMap.keys.elementAt(index),
                    (_) => e.payloadInfo.progress,
                  );
                }
              },
            );

            yield state.copyWith(filesMap: filesMap);
            // TODO: Call filesSent ot filesReceived on completion
          },
          filesSent: (e) async* {
            yield const FileTransferState.transferComplete();
          },
          filesReceived: (e) async* {
            yield const FileTransferState.transferComplete();
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

    print('Yes this is called');

    if (appFilesInfo.isEmpty && mediaFilesInfo.isEmpty && filesInfo.isEmpty) {
      yield const FileTransferState.hasFailed(
          failure: FileTransferFailure.emptySelection());
    } else if (users.isEmpty) {
      yield const FileTransferState.hasFailed(
          failure: FileTransferFailure.noMembers());
    } else {
      yield FileTransferState.outgoingFilesConfirmation(
        users: users,
        filesOption: some(appFilesInfo + mediaFilesInfo + filesInfo),
      );
    }
  }
}
