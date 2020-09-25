import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';
import 'package:projectcircles/domain/circle/user.dart';
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
    yield* event.map(
      startSearching: (e) async* {
        yield state.copyWith(isLoading: true);

        nearbyConnections.permitLocation();
        nearbyConnections.enableLocation();

        List<Either<ConnectionFailure, User>> failureOrDiscoveredDevices;

        nearbyConnections.startDiscovering().listen((event) {
          print(event);
          failureOrDiscoveredDevices.add(event);
        }, onError: (e) {
          debugPrint("Can't get the device please try again $e");
        }, cancelOnError: false); //
        yield state.copyWith(
            isLoading: false,
            isSearching: true,
            connectionFailureOrSuccessOption: none(),
            connectionFailureOrDiscoveredDevice:
                some(failureOrDiscoveredDevices));
      },
      stopSearching: (e) async* {
        yield state.copyWith(isLoading: false);
        nearbyConnections.stopDiscovering();
        yield state.copyWith(
            isLoading: false,
            isSearching: false,
            connectionFailureOrSuccessOption: none());
      },
      acceptConnection: (AcceptConnection user) async* {
        final Either<ConnectionFailure, Unit> requestOrFail =
            await nearbyConnections.requestConnection(
                username: user.discoveredUser.name.getOrCrash(),
                endpointId: user.discoveredUser.uid.getOrCrash(),
                acceptConnection: user.acceptOrReject);
        yield state.copyWith(
            isLoading: true,
            isSearching: true,
            connectionFailureOrSuccessOption: some(requestOrFail));
      },
    );
  }
}

//TODO: Add functionality to join and create
