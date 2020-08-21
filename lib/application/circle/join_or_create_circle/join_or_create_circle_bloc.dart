import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';

part 'join_or_create_circle_event.dart';

part 'join_or_create_circle_state.dart';

part 'join_or_create_circle_bloc.freezed.dart';

class JoinOrCreateCircleBloc
    extends Bloc<JoinOrCreateCircleEvent, JoinOrCreateCircleState> {
  JoinOrCreateCircleBloc() : super(JoinOrCreateCircleState.initial());

  @override
  Stream<JoinOrCreateCircleState> mapEventToState(
      JoinOrCreateCircleEvent event) async* {
    yield* event.map(startSearching: (e) async* {
      yield state.copyWith(
          isSearching: true,
          isJoining: false,
          isCreating: false,
          connectionFailureOrSuccessOption: none());
    }, stopSearching: (e) async* {
      yield state.copyWith(
          isSearching: false,
          isJoining: false,
          isCreating: false,
          connectionFailureOrSuccessOption: none());
    }, createCircle: (e) async* {
      yield state.copyWith(
          isSearching: false,
          isJoining: false,
          isCreating: true,
          connectionFailureOrSuccessOption: none());
    }, joinCircle: (e) async* {
      yield state.copyWith(
          isSearching: false,
          isJoining: true,
          isCreating: false,
          connectionFailureOrSuccessOption: none());
    });
  }
}

//TODO: Add functionality to join and create