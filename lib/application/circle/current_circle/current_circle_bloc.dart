import 'dart:async';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/domain/files/file_transaction.dart';
import 'package:projectcircles/domain/files/payload_info.dart';
import 'package:projectcircles/infrastructure/circle/apps_repository.dart';
import 'package:projectcircles/infrastructure/circle/files_repository.dart';
import 'package:projectcircles/infrastructure/circle/media_repository.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'package:projectcircles/injection.dart';

part 'current_circle_event.dart';

part 'current_circle_state.dart';

part 'current_circle_bloc.freezed.dart';

@injectable
class CurrentCircleBloc extends Bloc<CurrentCircleEvent, CurrentCircleState> {
  final AppsRepository _appsRepository;
  final MediaRepository _mediaRepository;
  final FilesRepository _filesRepository;

  CurrentCircleBloc(
      this._appsRepository, this._mediaRepository, this._filesRepository)
      : super(const CurrentCircleState.initial());
  final nearbyConnections = getIt<NearbyConnections>();
  final Map<FileInfo, double> _incomingFiles = <FileInfo, double>{};
  final Map<FileInfo, double> _outgoingFiles = <FileInfo, double>{};
  int _incomingFilePayloadId;
  int _outgoingFilePayloadId;
  int _i = 0;
  //TODO: remove _isSending bool will do later
  bool _isSending = false;

  @override
  Stream<CurrentCircleState> mapEventToState(
    CurrentCircleEvent event,
  ) async* {
    StreamSubscription<User> _incomingRequestsStreamSubscription;
    StreamSubscription<String> _lostHostStreamSubscription;
    StreamSubscription<String> _lostDiscovererStreamSubscription;
    StreamSubscription<FileInfo> _incomingFileInfoStreamSubscription;
    StreamSubscription<PayloadInfo> _progressOfFileStreamSubscription;
    yield* state.map(
      initial: (state) async* {
        yield* event.maybeMap(
          startCircle: (e) async* {
            yield const CurrentCircleState.isLoading(
                loadingText: 'Starting Circle...');

            final Either<ConnectionFailure, Unit> failureOrCircleStarted =
                await nearbyConnections.startAdvertising();

            _incomingRequestsStreamSubscription =
                nearbyConnections.incomingRequestStream.listen((event) {
              debugPrint("A device found, wants to join: $event");
              add(CurrentCircleEvent.deviceRequestedConnection(user: event));
            });

            _lostDiscovererStreamSubscription =
                nearbyConnections.onDiscovererLostStream.listen((event) {
              print("i am removed");
              add(CurrentCircleEvent.memberLeft(id: event));
            });

            yield* failureOrCircleStarted.fold(
              (failure) async* {
                yield CurrentCircleState.hasFailed(failure: failure);
              },
              (_) async* {
                yield const CurrentCircleState.hasStarted(
                  members: <User, bool>{},
                  outgoingFiles: <FileInfo, double>{},
                  incomingFiles: <FileInfo, double>{},
                  transactions: <FileTransaction>[],
                  showMembersPage: false,
                  showFilesPage: false,
                  isAcceptingRequest: false,
                  isClosing: false,
                );
              },
            );
          },
          joinCircle: (e) async* {
            yield const CurrentCircleState.isLoading(
                loadingText: 'Joining Circle...');
            _lostHostStreamSubscription =
                nearbyConnections.onHostLostStream.listen((event) {
              debugPrint("Host $event lost");
              add(const CurrentCircleEvent.disconnected());
            }, onError: (e) {});
            yield CurrentCircleState.hasJoined(
              host: e.host,
              outgoingFiles: <FileInfo, double>{},
              incomingFiles: <FileInfo, double>{},
              transactions: <FileTransaction>[],
              showMembersPage: false,
              showFilesPage: false,
              isLeaving: false,
            );
          },
          orElse: () async* {},
        );
      },
      isLoading: (state) async* {
        yield null;
      },
      hasStarted: (state) async* {
        yield* event.maybeMap(
          deviceRequestedConnection: (e) async* {
            final Map<User, bool> members = Map.from(state.members);
            members.addAll({e.user: true});
            yield state.copyWith(
              members: members,
              showMembersPage: true,
            );
            _incomingFileInfoStreamSubscription =
                nearbyConnections.sendingFileInfoStream.listen((event) {
              add(CurrentCircleEvent.fileInfoReceived(fileInfo: event));
            }, onError: (e) {
              print(e);
            });
            _progressOfFileStreamSubscription =
                nearbyConnections.progressOfFileStream.listen((event) {
              if (_isSending) {
                add(CurrentCircleEvent.sendingFiles(payloadInfo: event));
              } else {
                add(CurrentCircleEvent.fileReceiving(payloadInfo: event));
              }
            }, onError: (e) {
              print(e);
            });
          },
          acceptOrReject: (AcceptOrReject request) async* {
            if (request.acceptConnection) {
              yield state.copyWith(isAcceptingRequest: true);
              final Either<ConnectionFailure, Unit> acceptOrFailure =
                  await nearbyConnections.acceptConnection(
                      endId: request.requestingUser.uid.getOrCrash());
              state.members.update(request.requestingUser, (value) => false);
              yield state.copyWith(
                  members: state.members, isAcceptingRequest: false);
            } else {
              //reject a connection
              final Either<ConnectionFailure, Unit> rejectOrFailure =
                  await nearbyConnections.rejectConnection(
                      endId: request.requestingUser.uid.getOrCrash());
              state.members.remove(request.requestingUser);
              yield state.copyWith(members: state.members);
            }
          },
          showFilesPage: (_) async* {
            yield state.copyWith(
              showFilesPage: true,
            );
          },
          showMembersPage: (_) async* {
            yield state.copyWith(
              showMembersPage: true,
            );
          },
          pageOpened: (_) async* {
            yield state.copyWith(showFilesPage: false, showMembersPage: false);
          },
          sendFiles: (e) async* {
            _isSending = true;
            // TODO: Implement sending files from here by using [state.selectedFiles],
            //also update the double [progress] from 0 to 1, will show its x100 in UI

            // nearbyConnections.sendFilePayload(files: state.selectedFiles);
            //this function is in host side, for member side create this in ,is wahi mai sochu, one more doubt remains

            //final List<FileInfo> appFilesInfo = await _appsRepository.getFilesInfo();
            final List<FileInfo> mediaFilesInfo =
                await _mediaRepository.getFilesInfo();
            //final List<FileInfo> filesInfo = await _filesRepository.getFilesInfo();

            final List<File> appFiles = await _appsRepository.getFiles();
            final List<File> mediaFiles = await _mediaRepository.getFiles();
            //final List<File> files = await _filesRepository.getFiles();

            final List<User> users = [];

            for (final user in state.members.keys) {
              if (!state.members[user]) {
                users.add(user);
              }
            }

            nearbyConnections.sendFilenameSizeBytesPayload(
              // i didn't even touch this function , you did,
              users: users,
              outgoingFiles: mediaFilesInfo,
            );

            // TODO: create seperate events for sending file info and sending actual file
            // This is because after sending file info, we'll wait for confirmation before sending files

            nearbyConnections.sendFilePayload(
                files: mediaFiles, members: users);
          },
          sendingFiles: (e) async* {
            if (_outgoingFilePayloadId == null) {
              _outgoingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _outgoingFilePayloadId = e.payloadInfo.payloadId;
              yield state.copyWith(outgoingFiles: _outgoingFiles);
            } else if (_outgoingFilePayloadId == e.payloadInfo.payloadId) {
              _outgoingFiles.values.toList()[_i] = e.payloadInfo.progress;
            } else if (_outgoingFilePayloadId != e.payloadInfo.payloadId) {
              _outgoingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _outgoingFilePayloadId = e.payloadInfo.payloadId;
              _i++;
              yield state.copyWith(outgoingFiles: _outgoingFiles);
            }
          },
          filesSent: (e) async* {
            // TODO: Call this when files are sent successfully
            yield state.copyWith(
              showFilesPage: true,
              outgoingFiles: <FileInfo, double>{},
              incomingFiles: <FileInfo, double>{},
            );
          },
          fileInfoReceived: (e) async* {
            _incomingFiles?.putIfAbsent(e.fileInfo, () => 0.0);
            debugPrint("Yay the files to be recieved are ${e.fileInfo}");
            yield state.copyWith(
              incomingFiles: _incomingFiles,
              showFilesPage: true,
            );
          },
          fileReceiving: (e) async* {
            if (_incomingFilePayloadId == null) {
              _incomingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _incomingFilePayloadId = e.payloadInfo.payloadId;
              yield state.copyWith(incomingFiles: _incomingFiles);
            } else if (_incomingFilePayloadId == e.payloadInfo.payloadId) {
              state.incomingFiles.values.toList()[_i] = e.payloadInfo.progress;
            } else if (_incomingFilePayloadId != e.payloadInfo.payloadId) {
              _incomingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _incomingFilePayloadId = e.payloadInfo.payloadId;
              _i++;
              yield state.copyWith(incomingFiles: _incomingFiles);
            }
          },
          memberLeft: (e) async* {
            final Map<User, bool> members = Map.from(state.members);
            members.removeWhere((key, value) => key.uid.getOrCrash() == e.id);
            yield state.copyWith(members: members);
          },
          closeCircle: (e) async* {
            nearbyConnections.stopAllEndpoints();
            nearbyConnections.stopAdvertising();
            yield const CurrentCircleState.initial();
            _incomingRequestsStreamSubscription?.cancel();
            _lostDiscovererStreamSubscription?.cancel();
            _progressOfFileStreamSubscription?.cancel();
          },
          orElse: () async* {},
        );
      },
      hasJoined: (state) async* {
        yield* event.maybeMap(
          showFilesPage: (_) async* {
            yield state.copyWith(
              showFilesPage: true,
            );
            _incomingFileInfoStreamSubscription =
                nearbyConnections.sendingFileInfoStream.listen((event) {
              add(CurrentCircleEvent.fileInfoReceived(fileInfo: event));
            }, onError: (e) {});

            _progressOfFileStreamSubscription =
                nearbyConnections.progressOfFileStream.listen((event) {
              add(CurrentCircleEvent.fileReceiving(payloadInfo: event));
            }, onError: (e) {
              print(e);
            });
          },
          showMembersPage: (_) async* {
            yield state.copyWith(
              showMembersPage: true,
            );
          },
          pageOpened: (_) async* {
            yield state.copyWith(showFilesPage: false, showMembersPage: false);
          },
          sendFiles: (e) async* {
            _isSending = true;
            // TODO: Implement sending files from here by using [state.selectedFiles],
            //also update the double [progress] from 0 to 1, will show its x100 in UI

            // nearbyConnections.sendFilePayload(files: state.selectedFiles);
            //final List<FileInfo> appFilesInfo = await _appsRepository.getFilesInfo();
            final List<FileInfo> mediaFilesInfo =
                await _mediaRepository.getFilesInfo();
            //final List<FileInfo> filesInfo = await _filesRepository.getFilesInfo();

            // final List<File> appFiles = await _appsRepository.getFiles();
            final List<File> mediaFiles = await _mediaRepository.getFiles();
            //final List<File> files = await _filesRepository.getFiles();

            nearbyConnections.sendFilenameSizeBytesPayload(
              users: [state.host],
              outgoingFiles: mediaFilesInfo,
            );

            nearbyConnections.sendFilePayload(
                files:
                    mediaFiles, // run nhi ho rha app??? kaise? dekh le studi kal shai krte  ye
                members: [state.host]);
          },
          sendingFiles: (e) async* {
            if (_outgoingFilePayloadId == null) {
              _outgoingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _outgoingFilePayloadId = e.payloadInfo.payloadId;
              yield state.copyWith(outgoingFiles: _outgoingFiles);
            } else if (_outgoingFilePayloadId == e.payloadInfo.payloadId) {
              _outgoingFiles.values.toList()[_i] = e.payloadInfo.progress;
            } else if (_outgoingFilePayloadId != e.payloadInfo.payloadId) {
              _outgoingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _outgoingFilePayloadId = e.payloadInfo.payloadId;
              _i++;
              yield state.copyWith(outgoingFiles: _outgoingFiles);
            }
          },
          filesSent: (e) async* {
            // TODO: Call this when files are sent successfully
            yield state.copyWith(
              showFilesPage: true,
              outgoingFiles: <FileInfo, double>{},
              incomingFiles: <FileInfo, double>{},
            );
          },
          fileInfoReceived: (e) async* {
            _incomingFiles?.putIfAbsent(e.fileInfo, () => 0.0);
            debugPrint(
                "Yay the files to be recieved are ${e.fileInfo.toString()}");
            yield state.copyWith(
              incomingFiles: _incomingFiles,
              showFilesPage: true,
            );
            print(state.incomingFiles);
          },
          fileReceiving: (e) async* {
            if (_incomingFilePayloadId == null) {
              _incomingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _incomingFilePayloadId = e.payloadInfo.payloadId;
              yield state.copyWith(incomingFiles: _incomingFiles);
            } else if (_incomingFilePayloadId == e.payloadInfo.payloadId) {
              state.incomingFiles.values.toList()[_i] = e.payloadInfo.progress;
            } else if (_incomingFilePayloadId != e.payloadInfo.payloadId) {
              _incomingFiles.values.toList()[_i] = e.payloadInfo.progress;
              _incomingFilePayloadId = e.payloadInfo.payloadId;
              _i++;
              yield state.copyWith(incomingFiles: _incomingFiles);
            }
          },
          leaveCircle: (e) async* {
            _incomingFileInfoStreamSubscription?.cancel();
            nearbyConnections
                .disconnectFromEndPoint(state.host.uid.getOrCrash());
            yield const CurrentCircleState.initial();
          },
          disconnected: (e) async* {
            print('Disconnected');
            _incomingFileInfoStreamSubscription?.cancel();
            _lostHostStreamSubscription?.cancel();
            yield const CurrentCircleState.initial();
          },
          orElse: () async* {},
        );
      },
      hasFailed: (state) async* {},
    );
  }
}

// where is the error?
