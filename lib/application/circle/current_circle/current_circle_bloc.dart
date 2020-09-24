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
import 'package:projectcircles/domain/files/apps_load_failure.dart';


part 'current_circle_event.dart';

part 'current_circle_state.dart';

part 'current_circle_bloc.freezed.dart';

@injectable
class CurrentCircleBloc extends Bloc<CurrentCircleEvent, CurrentCircleState> {
  CurrentCircleBloc() : super(const CurrentCircleState.initial());

  @override
  Stream<CurrentCircleState> mapEventToState(CurrentCircleEvent event,) async* {
    final nearbyConnections = getIt<NearbyConnections>();
    yield* event.map(
        startCircle: (e) async* {
          final Either<AppsLoadFailure,
              bool> startAdvertising = await nearbyConnections
              .startAdvertising();
          yield* startAdvertising.fold((AppsLoadFailure failure) async* {
            //TODO Show in the ui that eror has occured
            debugPrint("Some error has occured, more precisely $failure");
          }, (bool success) async* {
            print(nearbyConnections.members);
            //e.host = nearbyConnections.host;
          });

          yield CurrentCircleState.hasJoined(host: e.host,
              members: <User>[],
              selectedFiles: <File>[],
              filesSentPopUp: false);
        },
        sendFiles: (e) async* {
          // TODO: Implement sending files from here by using [state.selectedFiles], also update the double [progress] from 0 to 1, will show its x100 in UI
          // TODO: nearbyConnections.sendFilePayload(files: tu bata de files ke list);
        },
        filesSent: (e) async* {
          // TODO: Call this when files are sent successfully
          yield* state.maybeMap(hasJoined: (state) async* {
            yield state.copyWith(filesSentPopUp: true);
          }, orElse: () async* {
            yield const CurrentCircleState.hasFailed(failure: ConnectionFailure.unexpected());
          },);
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
        });
  }
}
