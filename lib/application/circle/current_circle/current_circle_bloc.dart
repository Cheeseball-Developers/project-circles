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
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'package:projectcircles/injection.dart';

part 'current_circle_event.dart';

part 'current_circle_state.dart';

part 'current_circle_bloc.freezed.dart';

@injectable
class CurrentCircleBloc extends Bloc<CurrentCircleEvent, CurrentCircleState> {
  CurrentCircleBloc() : super(const CurrentCircleState.initial());
  final nearbyConnections = getIt<NearbyConnections>();

  @override
  Stream<CurrentCircleState> mapEventToState(
    CurrentCircleEvent event,
  ) async* {
    StreamSubscription<User> _incomingRequestsStreamSubscription;
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

            yield* failureOrCircleStarted.fold(
              (failure) async* {
                yield CurrentCircleState.hasFailed(failure: failure);
              },
              (_) async* {
                yield const CurrentCircleState.hasStarted(
                  members: <User, bool>{},
                  selectedFiles: <File>[],
                  outgoingFiles: <File, double>{},
                  incomingFiles: <File, double>{},
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
            yield CurrentCircleState.hasJoined(
              host: e.host,
              members: <User>[],
              selectedFiles: <File>[],
              outgoingFiles: <File, double>{},
              incomingFiles: <File, double>{},
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
          },
          acceptOrReject: (AcceptOrReject request) async* {
            if (request.acceptConnection) {
              yield state.copyWith(isAcceptingRequest: true);
              final Either<ConnectionFailure, Unit> acceptOrFailure =
                  await nearbyConnections.acceptConnection(
                      endId: request.requestingUser.uid.getOrCrash());
              state.members.update(request.requestingUser, (value) => false);
              yield state.copyWith(members: state.members, isAcceptingRequest: false);
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
            yield state.copyWith(
              showFilesPage: false,
              showMembersPage: false
            );
          },
          addFile: (e) async* {
            yield state.copyWith(selectedFiles: state.selectedFiles + [e.file]);
          },
          sendFiles: (e) async* {
            // TODO: Implement sending files from here by using [state.selectedFiles], also update the double [progress] from 0 to 1, will show its x100 in UI
            // nearbyConnections.sendFilePayload(files: state.selectedFiles);
          },
          filesSent: (e) async* {
            // TODO: Call this when files are sent successfully
                yield state.copyWith(showFilesPage: true);
          },
          filesReceived: (e) async* {
            yield null;
          },
          memberLeft: (e) async* {
            yield null;
          },
          closeCircle: (e) async* {
            //nearbyConnections.stopAllEndpoints();
            nearbyConnections.stopAdvertising();
            yield const CurrentCircleState.initial();
            _incomingRequestsStreamSubscription?.cancel();
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
          },
          showMembersPage: (_) async* {
            yield state.copyWith(
              showMembersPage: true,
            );
          },
          pageOpened: (_) async* {
            yield state.copyWith(
              showFilesPage: false,
              showMembersPage: false
            );
          },
          addFile: (e) async* {
            yield state.copyWith(selectedFiles: state.selectedFiles + [e.file]);
          },
          sendFiles: (e) async* {
            // TODO: Implement sending files from here by using [state.selectedFiles], also update the double [progress] from 0 to 1, will show its x100 in UI
            // nearbyConnections.sendFilePayload(files: state.selectedFiles);
          },
          filesSent: (e) async* {
            // TODO: Call this when files are sent successfully
                yield state.copyWith(showFilesPage: true);
          },
          filesReceived: (e) async* {
            yield null;
          },
          leaveCircle: (e) async* {
            nearbyConnections.stopAllEndpoints();
            nearbyConnections.stopAdvertising();
          },
          orElse: () async* {},
        );
      },
      hasFailed: (state) async* {
      },
    );
  }
}
