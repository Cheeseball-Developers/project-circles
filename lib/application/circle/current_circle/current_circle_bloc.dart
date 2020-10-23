import 'dart:async';
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
import 'package:projectcircles/domain/files/file_transfer_type.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';

part 'current_circle_event.dart';

part 'current_circle_state.dart';

part 'current_circle_bloc.freezed.dart';

@injectable
class CurrentCircleBloc extends Bloc<CurrentCircleEvent, CurrentCircleState> {
  final NearbyConnections _nearbyConnections;

  CurrentCircleBloc(this._nearbyConnections)
      : super(const CurrentCircleState.initial());

  @override
  Stream<CurrentCircleState> mapEventToState(
    CurrentCircleEvent event,
  ) async* {
    StreamSubscription<User> _incomingRequestsStreamSubscription;
    StreamSubscription<String> _lostHostStreamSubscription;
    StreamSubscription<String> _lostDiscovererStreamSubscription;
    yield* state.map(
      initial: (state) async* {
        yield* event.maybeMap(
          startCircle: (e) async* {
            yield const CurrentCircleState.isLoading(
                loadingText: 'Starting Circle...');

            final Either<ConnectionFailure, Unit> failureOrCircleStarted =
                await _nearbyConnections.startAdvertising();

            _incomingRequestsStreamSubscription =
                _nearbyConnections.incomingRequestStream.listen((event) {
              debugPrint("A device found, wants to join: $event");
              add(CurrentCircleEvent.deviceRequestedConnection(user: event));
            });

            _lostDiscovererStreamSubscription =
                _nearbyConnections.onDiscovererLostStream.listen((event) {
              print("i am removed");
              add(CurrentCircleEvent.memberLeft(id: event));
            });

            yield* failureOrCircleStarted.fold(
              (failure) async* {
                yield CurrentCircleState.hasFailed(failure: failure);
              },
              (_) async* {
                yield CurrentCircleState.hasStarted(
                  members: <User, bool>{},
                  outgoingFiles: <FileInfo, double>{},
                  incomingFiles: <FileInfo, double>{},
                  transactions: <FileTransaction>[],
                  showMembersPage: false,
                  showFilesPage: false,
                  isAcceptingRequest: false,
                  showFilesTransferDialog: false,
                  transferType: none(),
                  isClosing: false,
                );
              },
            );
          },
          joinCircle: (e) async* {
            yield const CurrentCircleState.isLoading(
                loadingText: 'Joining Circle...');
            _lostHostStreamSubscription =
                _nearbyConnections.onHostLostStream.listen((event) {
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
              showFilesTransferDialog: false,
              transferType: none(),
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
                  await _nearbyConnections.acceptConnection(
                      endId: request.requestingUser.uid.getOrCrash());
              state.members.update(request.requestingUser, (value) => false);
              yield state.copyWith(
                  members: state.members, isAcceptingRequest: false);
            } else {
              //reject a connection
              final Either<ConnectionFailure, Unit> rejectOrFailure =
                  await _nearbyConnections.rejectConnection(
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
          showFilesTransferDialog: (e) async* {
            yield state.copyWith(
              showFilesTransferDialog: false,
            );
          },
          memberLeft: (e) async* {
            final Map<User, bool> members = Map.from(state.members);
            members.removeWhere((key, value) => key.uid.getOrCrash() == e.id);
            yield state.copyWith(members: members);
          },
          closeCircle: (e) async* {
            _nearbyConnections.stopAllEndpoints();
            _nearbyConnections.stopAdvertising();
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
          },
          showMembersPage: (_) async* {
            yield state.copyWith(
              showMembersPage: true,
            );
          },
          pageOpened: (_) async* {
            yield state.copyWith(showFilesPage: false, showMembersPage: false);
          },
          leaveCircle: (e) async* {
            _nearbyConnections
                .disconnectFromEndPoint(state.host.uid.getOrCrash());
            yield const CurrentCircleState.initial();
          },
          disconnected: (e) async* {
            print('Disconnected');
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
