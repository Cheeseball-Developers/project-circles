import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'package:projectcircles/injection.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    final nearbyConnections = getIt<NearbyConnections>();
    //nearbyConnections.setUsername = "hehe";
    yield* event.map(startSearching: (e) async* {
      nearbyConnections.permitLocation();
      nearbyConnections.enableLocation();

      final Either<AppsLoadFailure, bool> startDiscovering =
          await nearbyConnections.startDiscovering();
      yield* startDiscovering.fold((failure) async* {
        //TODO display this in ui that error has occured error aane pr text me mai aa jaunga idhar
      }, (success) async* {});
      yield state.copyWith(
          isSearching: true, connectionFailureOrSuccessOption: none());
    }, stopSearching: (e) async* {
      nearbyConnections.stopDiscovering();
      yield state.copyWith(
          isSearching: false, connectionFailureOrSuccessOption: none());
    });
  }
}

//TODO: Add functionality to join and create
