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

  final List<User> discoveredDevices = <User>[];
  final nearbyConnections = getIt<NearbyConnections>();

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    StreamSubscription<User> streamSubscriptionDiscoveredDevice;
    Either<ConnectionFailure, Unit> errorOrDiscovering;

    yield* event.map(startSearching: (e) async* {
      yield state.copyWith(isLoading: true, discoveredDevices: []);

      nearbyConnections.permitLocation();
      nearbyConnections.enableLocation();

      errorOrDiscovering = await nearbyConnections.startDiscovering();
      streamSubscriptionDiscoveredDevice =
          nearbyConnections.stream.listen((event) {
        add(SearchEvent.deviceDiscovered(event));
      }, onError: (e) {
        debugPrint('Error $e');
      }, cancelOnError: false);
    }, deviceDiscovered: (e) async* {
      discoveredDevices.add(e.user);
      yield state.copyWith(
          isLoading: false,
          isSearching: true,
          connectionFailureOrSuccessOption: some(
              errorOrDiscovering), //change this to some(errorOnDiscovering)
          discoveredDevices: discoveredDevices);
    }, stopSearching: (e) async* {
      yield state.copyWith(isLoading: false);
      streamSubscriptionDiscoveredDevice.cancel();
      nearbyConnections.stopDiscovering();
      yield state.copyWith(
          isLoading: false,
          isSearching: false,
          connectionFailureOrSuccessOption: none());
    }, requestConnection: (user) async* {
      final Either<ConnectionFailure, Unit> requestOrFail =
          await nearbyConnections.requestConnection(
              username: user.discoveredUser.name.getOrCrash(),
              endpointId: user.discoveredUser.uid.getOrCrash());
      yield state.copyWith(
          isLoading: true,
          isSearching: true,
          connectionFailureOrSuccessOption: some(requestOrFail));
    });
  }
}

//TODO: Add functionality to join and create

//TODO: Add somewhere in the ui to stop discovery as soon as the preferred devices are found
/// It is reccomended to call this method
/// once you have connected to an endPoint
/// as discovery uses heavy radio operations
/// which may affect connection speed and integrity
