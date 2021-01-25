import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/domain/files/transfer_progress_info.dart';
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
  List<String> acceptedFileTransferUsers;

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
            // TODO: Implement cancellation p.s- this is the cancellation before sending
            //yeild state accordingly
          },
          sendFilesInfo: (e) async* {
            final Map<FileInfo, double> filesMap = {};
            final List<TransferProgressInfo> transferProgressInfos = [];

            for (final fileInfo in state.filesOption.getOrElse(() => null)) {
              filesMap.addAll({fileInfo: 0.0});
            } // TODO: Implement error state

            _nearbyConnections.sendFilenameSizeBytesPayload(
              users: state.users,
              outgoingFiles: filesMap.keys.toList(),
            );

            for (final user in state.users) {
              transferProgressInfos.add(TransferProgressInfo(
                filesMap: filesMap,
                user: user,
                fileTransferIndex: -1,
                acceptOrRejectOption: none(),
              ));
            }

            respondingUserStreamSubscription ??=
                _nearbyConnections.responseStream.listen((event) {
              final List<String> response = event.split('@');
              logger.d(
                  'Response received from ${response.first} : ${response.last}');

              for (final int index
                  in Iterable.generate(transferProgressInfos.length)) {
                if (transferProgressInfos[index].user.uid.getOrCrash() ==
                    response.first) {
                  if (response.last == 'true') {
                    transferProgressInfos[index] = transferProgressInfos[index]
                        .copyWith(acceptOrRejectOption: some(true));
                    add(FileTransferEvent.sendFiles(
                        endPointId: response.first));
                  } else {
                    //TODO: Yield state accordingly
                    transferProgressInfos[index] = transferProgressInfos[index]
                        .copyWith(acceptOrRejectOption: some(false));
                  }
                }
              }
            });

            yield FileTransferState.sendingFiles(
              transferProgressInfos: transferProgressInfos,
            );
          },
          orElse: () async* {},
        );
      },
      sendingFiles: (state) async* {
        // TODO: This merely serves as a temporary fix to a larger problem, replace this
        progressOfFileStreamSubscription ??=
            _nearbyConnections.progressOfFileStream.listen((payloadInfo) {
          add(FileTransferEvent.updateProgress(
            payloadInfo: payloadInfo,
          ));
        }, onError: (e) {
          logger.e(e);
        });
        // TODO: till here

        yield* event.maybeMap(
          updateProgress: (e) async* {
            final transferProgressInfos = state.transferProgressInfos;
            logger.d(
                'Update progress event called, index value at ${transferProgressInfos[0].fileTransferIndex}');
            for (final transferProgressInfo in transferProgressInfos) {
              if (transferProgressInfo.user.uid.getOrCrash() ==
                  e.payloadInfo.endId) {
                transferProgressInfo.filesMap.update(
                    transferProgressInfo.filesMap.keys
                        .elementAt(transferProgressInfo.fileTransferIndex),
                    (value) => e.payloadInfo.progress);
              }
            }
            yield state.copyWith(transferProgressInfos: transferProgressInfos);
          },
          abortFileTransfer: (e) async* {
            // TODO: Implement this
          },
          filesSent: (e) async* {
            yield FileTransferState.transferComplete(
              type: const FileTransferType.outgoing(),
              transferProgressInfo: state.transferProgressInfos,
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
            _nearbyConnections.acceptOrRejectFiles(
                response: e.acceptOrReject, endId: state.endId);

            final Map<FileInfo, double> filesMap = {};

            for (final fileInfo in state.files) {
              filesMap.putIfAbsent(fileInfo, () => 0.0);
            }

            final transferProgressInfo = TransferProgressInfo(
                user: null,
                filesMap: filesMap,
                fileTransferIndex: -1,
                acceptOrRejectOption: none());

            yield FileTransferState.receivingFiles(
              transferProgressInfo: transferProgressInfo,
            );
          },
          orElse: () async* {},
        );
      },
      receivingFiles: (state) async* {
        // Cancelling stream subscriptions that are no longer needed
        incomingFileInfoStreamSubscription?.cancel();
        respondingUserStreamSubscription?.cancel();

        // Starting necessary stream subscriptions
        logger.d("Transferring Files State");
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
              logger.d(
                  'File recieved  event called, index value at ${state.transferProgressInfo.fileTransferIndex}');
              final Map<FileInfo, double> filesMap = Map.from(state.transferProgressInfo.filesMap);

          add(const FileTransferEvent.incrementFileTransferIndex());
        });

        // Setting up variables to match incoming payloads to files
        // TODO: Find a better way to do this
        yield* event.maybeMap(
          updateProgress: (e) async* {
            logger.d(
                'Update progress event called, index value at ${state.transferProgressInfo.fileTransferIndex}');
            final Map<FileInfo, double> filesMap =
                Map.from(state.transferProgressInfo.filesMap);
            filesMap.update(
                filesMap.keys
                    .elementAt(state.transferProgressInfo.fileTransferIndex),
                (value) => e.payloadInfo.progress);
            //final Map<FileInfo, double> filesMap = Map.from(state.filesMap);
            //TODO was thinking ki
            yield state.copyWith(
                transferProgressInfo: TransferProgressInfo(
              user: state.transferProgressInfo.user,
              filesMap: filesMap,
              acceptOrRejectOption:
                  state.transferProgressInfo.acceptOrRejectOption,
              fileTransferIndex: state.transferProgressInfo.fileTransferIndex,
            ));
          },
          incrementFileTransferIndex: (_) async* {
            if (state.transferProgressInfo.fileTransferIndex-1 == state.transferProgressInfo.filesMap.length) {
              debugPrint("FileSharing (incoming) Successful from $event");
              add(const FileTransferEvent.filesReceived());
            } else {
              yield state.copyWith(
                  transferProgressInfo: state.transferProgressInfo.copyWith(
                      fileTransferIndex:
                      state.transferProgressInfo.fileTransferIndex + 1));
            }
          },
          filesReceived: (e) async* {
            yield FileTransferState.transferComplete(
                type: const FileTransferType.incoming(),
                transferProgressInfo: [state.transferProgressInfo]);
          },
          orElse: () async* {},
        );
      },
      transferComplete: (state) async* {
        progressOfFileStreamSubscription?.cancel();
        fileSharedSuccessStreamSubscription?.cancel();

        yield* event.maybeMap(
          reset: (_) async* {
            yield const FileTransferState.initial(incomingFileInfo: {});
          },
          orElse: () async* {},
        );
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
