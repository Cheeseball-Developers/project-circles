import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/circle/user.dart';

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
    yield* event.map(
        startCircle: (e) async* {
          yield CurrentCircleState.hasJoined(host: e.host, members: <User>[]);
        },
        fileSent: (e) async* {
          yield null;
        },
        fileReceived: (e) async* {
          yield null;
        },
        memberLeft: (e) async* {
          yield null;
        },
        closeCircle: (e) async* {
          yield const CurrentCircleState.initial();
        });
  }
}
