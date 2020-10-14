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
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'package:projectcircles/injection.dart';

part 'current_circle_event.dart';

part 'current_circle_state.dart';

part 'current_circle_bloc.freezed.dart';

@injectable
class CurrentCircleBloc extends Bloc<CurrentCircleEvent, CurrentCircleState> {
  CurrentCircleBloc() : super(const CurrentCircleState.initial());
  final nearbyConnections = getIt<NearbyConnections>();
  final Map<FileInfo, double> _incomingFiles = <FileInfo, double>{};

  @override
  Stream<CurrentCircleState> mapEventToState(
    CurrentCircleEvent event,
  ) async* {
    StreamSubscription<User> _incomingRequestsStreamSubscription;
    StreamSubscription<String> _lostHostStreamSubscription;
    StreamSubscription<String> _lostDiscovererStreamSubscription;
    StreamSubscription<FileInfo> _incomingFileInfoStreamSubscription;
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
                  selectedFiles: <File>[],
                  outgoingFiles: <File, double>{},
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
            //TODO: Add logic to join circle here
            _lostHostStreamSubscription =
                nearbyConnections.onHostLostStream.listen((event) {
              debugPrint("Host $event lost");
              add(const CurrentCircleEvent.disconnected());
            }, onError: (e) {});
            yield CurrentCircleState.hasJoined(
              host: e.host,
              selectedFiles: <File>[],
              outgoingFiles: <File, double>{},
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
              add(CurrentCircleEvent.filesReceived(fileInfo: event));
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
          addFile: (e) async* {
            yield state.copyWith(selectedFiles: state.selectedFiles + [e.file]);
          },
          sendFiles: (e) async* {
            // TODO: Implement sending files from here by using [state.selectedFiles], also update the double [progress] from 0 to 1, will show its x100 in UI

            // nearbyConnections.sendFilePayload(files: state.selectedFiles);
            //this function is in host side, for member side create this in ,is wahi mai sochu, one more doubt remains

            nearbyConnections.sendFilenameSizeBytesPayload(
                users: List.from(state.members.keys),
                outgoingFiles: [
                  const FileInfo(fileName: 'oneThing.dart', bytesSize: 50)
                ]);
          },
          filesSent: (e) async* {
            // TODO: Call this when files are sent successfully
            yield state.copyWith(showFilesPage: true);
          },
          filesReceived: (e) async* {
            _incomingFiles?.putIfAbsent(e.fileInfo, () => 0.0);
            debugPrint("Yay the files to be recieved are ${e.fileInfo}");
            yield state.copyWith(incomingFiles: _incomingFiles);
          },
          memberLeft: (e) async* {
            final Map<User, bool> members = Map.from(state.members);
            members
                .removeWhere((key, value) => key.uid.getOrCrash() == e.id);
            yield state.copyWith(members: members);
          },
          closeCircle: (e) async* {
            nearbyConnections.stopAllEndpoints();
            nearbyConnections.stopAdvertising();
            yield const CurrentCircleState.initial();
            _incomingRequestsStreamSubscription?.cancel();
            _lostDiscovererStreamSubscription?.cancel();
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
              add(CurrentCircleEvent.filesReceived(fileInfo: event));
            }, onError: (e) {});
          },
          showMembersPage: (_) async* {
            yield state.copyWith(
              showMembersPage: true,
            );
          },
          pageOpened: (_) async* {
            yield state.copyWith(showFilesPage: false, showMembersPage: false);
          },
          addFile: (e) async* {
            yield state.copyWith(selectedFiles: state.selectedFiles + [e.file]);
          },
          sendFiles: (e) async* {
            // TODO: Implement sending files from here by using [state.selectedFiles],
            //also update the double [progress] from 0 to 1, will show its x100 in UI

            // nearbyConnections.sendFilePayload(files: state.selectedFiles);
            nearbyConnections.sendFilenameSizeBytesPayload(users: [
              state.host
            ], outgoingFiles: [
              const FileInfo(fileName: 'genericfilename.exe', bytesSize: 20)
            ]);
          },
          filesSent: (e) async* {
            // TODO: Call this when files are sent successfully
            yield state.copyWith(showFilesPage: true);
          },
          filesReceived: (e) async* {
            _incomingFiles[e.fileInfo] = 0.0;
            debugPrint(
                "Yay the files to be recieved are ${e.fileInfo.toString()}");
            yield state.copyWith(incomingFiles: _incomingFiles);
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
