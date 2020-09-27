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

  @override
  Stream<CurrentCircleState> mapEventToState(
    CurrentCircleEvent event,
  ) async* {
    final nearbyConnections = getIt<NearbyConnections>();
    yield* event.map(
      startCircle: (e) async* {
        yield const CurrentCircleState.isStarting();
        List<Either<ConnectionFailure, User>> failureOrIncomingRequests;
        StreamSubscription<Either<ConnectionFailure, User>>
            _incomingRequestsStreamSubsciption;
        nearbyConnections.startAdvertising().listen(
          (event) {
            if (event != null) {
              failureOrIncomingRequests.add(event);
            }
          },
          onError: (_) {
            debugPrint("Error! $_");
          },
        );

        yield CurrentCircleState.hasJoined(
            host: e.host,
            members: <User>[],
            selectedFiles: <File, double>{},
            filesSentPopUp: false);
      },
      acceptOrReject: (AcceptOrReject request) async* {
        if (request.acceptConnection) {
          final Either<ConnectionFailure, Unit> _acceptOrFailure =
              await nearbyConnections.acceptInConnection(
                  endId: request.requestingUser.uid.getOrCrash());
          yield* state.maybeMap(hasJoined: (state) async* {
            yield state.copyWith(members: nearbyConnections.members);
          }, orElse: () async* {
            yield null;
          });
        } else {
          //reject a connection
          final Either<ConnectionFailure, Unit> _rejectOrFailure =
              await nearbyConnections.rejectConnection(
                  endId: request.requestingUser.uid.getOrCrash());
        }
      },
      addFile: (e) async* {
        yield* state.maybeMap(hasJoined: (state) async* {
          state.selectedFiles.addAll({e.file: 0.0});
          yield state.copyWith(selectedFiles: state.selectedFiles);
        }, orElse: () async* {
          yield null;
        });
      },
      sendFiles: (e) async* {
        // TODO: Implement sending files from here by using [state.selectedFiles], also update the double [progress] from 0 to 1, will show its x100 in UI
        yield* state.maybeMap(hasJoined: (state) async* {
          nearbyConnections.sendFilePayload(files: state.selectedFiles);
        }, orElse: () async* {
          yield null;
        });
      },
      filesSent: (e) async* {
        // TODO: Call this when files are sent successfully
        yield* state.maybeMap(
          hasJoined: (state) async* {
            yield state.copyWith(filesSentPopUp: true);
          },
          orElse: () async* {
            yield const CurrentCircleState.hasFailed(
                failure: ConnectionFailure.unexpected());
          },
        );
      },
      fileReceived: (e) async* {
        yield null;
      },
      memberLeft: (e) async* {
        yield null;
      },
      leaveCircle: (e) async* {
        nearbyConnections.stopAllEndpoints();
      },
      closeCircle: (e) async* {
        nearbyConnections.stopAdvertising();
        yield const CurrentCircleState.initial();
      },
    );
  }
}
