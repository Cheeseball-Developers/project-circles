import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
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
  Stream<CurrentCircleState> mapEventToState(
    CurrentCircleEvent event,
  ) async* {
    final nearbyConnections = getIt<NearbyConnections>();
    yield* event.map(
        startCircle: (e) async* {
          final Either<AppsLoadFailure, bool> startAdvertising = await nearbyConnections.startAdvertising();
          yield* startAdvertising.fold((AppsLoadFailure failure) async* {
            //TODO Show in the ui that eror has occured
            debugPrint("Some error has occured, more precisely $failure");
          }, (bool success) async* {
            print(nearbyConnections.members);
            //e.host = nearbyConnections.host;
          });

          yield CurrentCircleState.hasJoined(host: e.host, members: <User>[]);
        },
        fileSent: (e) async* {
          //nearbyConnections.sendFilePayload(files: tu bata de files ke list);
          yield null;
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
