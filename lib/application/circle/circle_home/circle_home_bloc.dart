import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'circle_home_event.dart';

part 'circle_home_state.dart';

part 'circle_home_bloc.freezed.dart';

@injectable
class CircleHomeBloc extends Bloc<CircleHomeEvent, CircleHomeState> {
  CircleHomeBloc() : super(CircleHomeState.initial());

  @override
  Stream<CircleHomeState> mapEventToState(
    CircleHomeEvent event,
  ) async* {
    yield* event.map(changePageIndex: (e) async* {
      yield state.copyWith(pageIndex: e.index);
    });
  }
}
