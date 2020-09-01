import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

@injectable
class SearchBloc
    extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
      SearchEvent event) async* {
    yield* event.map(startSearching: (e) async* {
      yield state.copyWith(
          isSearching: true,
          connectionFailureOrSuccessOption: none());
    }, stopSearching: (e) async* {
      yield state.copyWith(
          isSearching: false,
          connectionFailureOrSuccessOption: none());
    });
  }
}

//TODO: Add functionality to join and create