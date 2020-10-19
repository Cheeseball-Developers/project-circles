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
  final nearbyConnections = getIt<NearbyConnections>();
  StreamSubscription<User> streamSubscriptionDiscoveredDevice;
  StreamSubscription<String> streamSubscriptionLostDevice;

  StreamSubscription<Either<ConnectionFailure, Unit>>
      streamSubscriptionOnConnectionResult;

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    Either<ConnectionFailure, Unit> errorOrDiscovering;

    yield* event.map(
      startSearching: (e) async* {
        yield state.copyWith(isLoading: true, discoveredDevices: []);

        await nearbyConnections.permitLocation();
        await nearbyConnections.enableLocation();

        errorOrDiscovering = await nearbyConnections.startDiscovering();
        yield state.copyWith(
          isLoading: false,
          isSearching: true,
          connectionFailureOrSuccessOption: some(errorOrDiscovering),
        );

        streamSubscriptionDiscoveredDevice =
            nearbyConnections.discoveredDeviceStream.listen((event) {
          add(SearchEvent.deviceDiscovered(event));
        }, onError: (e) {
          debugPrint('Error $e');
        }, cancelOnError: false);
        streamSubscriptionLostDevice =
            nearbyConnections.lostDeviceStream.listen((event) {
          add(SearchEvent.deviceLost(uidString: event));
        }, onError: (e) {
          debugPrint("Error on removing $e");
        }, cancelOnError: false);

        yield state.copyWith(isLoading: false, isSearching: true);
      },
      deviceDiscovered: (e) async* {
        final List<User> discoveredDevices = List.from(state.discoveredDevices);
        if (!discoveredDevices.contains(e.user)) {
          discoveredDevices.add(e.user);
        }
        yield state.copyWith(
          isLoading: false,
          isSearching: true,
          discoveredDevices: discoveredDevices,
        );
      },
      showAllDiscoveredDevices: (e) async* {
        yield state.copyWith(showAllDiscoveredDevicesPopUp: true);
      },
      dismissAllDiscoveredDevices: (e) async* {
        yield state.copyWith(showAllDiscoveredDevicesPopUp: false);
      },
      deviceLost: (e) async* {
        debugPrint("A device is lost");
        final List<User> discoveredDevices = List.from(state.discoveredDevices);
        discoveredDevices
            .removeWhere((user) => user.uid.getOrCrash() == e.uidString);
        yield state.copyWith(discoveredDevices: discoveredDevices);
      },
      stopSearching: (e) async* {
        yield state.copyWith(isLoading: false);
        streamSubscriptionDiscoveredDevice?.cancel();
        streamSubscriptionLostDevice?.cancel();
        nearbyConnections.stopAllEndpoints();
        nearbyConnections.stopDiscovering();
        yield state.copyWith(
          isLoading: false,
          isSearching: false,
          connectionFailureOrSuccessOption: none(),
          discoveredDevices: [],
        );
      },
      requestConnection: (e) async* {
        streamSubscriptionDiscoveredDevice?.cancel();
        await nearbyConnections.stopDiscovering();

        yield* state.connectionFailureOrSuccessOption.fold(
          () async* {
            yield state.copyWith(
              showRequestConnectionPopUp: true,
            );

            final Either<ConnectionFailure, Unit> requestOrFail =
                await nearbyConnections.requestConnection(
              endpointId: e.discoveredUser.uid.getOrCrash(),
            );
            yield state.copyWith(
                isSearching: false,
                discoveredDevices: [],
                showRequestConnectionPopUp: false,
                connectionFailureOrRequestSent: some(requestOrFail),
                connectionFailureOrSuccessOption: none());

            streamSubscriptionOnConnectionResult =
                nearbyConnections.onConnectionResultDiscStream.listen(
              (event) {
                add(SearchEvent.connectionResult(event));
              },
            );
          },
          (_) => null,
        );
      },
      connectionResult: (e) async* {
        yield state.copyWith(
            connectionFailureOrSuccessOption: some(e.connectionStatus));
      },
      endConnectionRequest: (e) async* {
        final List<User> discoveredDevices = List.from(state.discoveredDevices);
        nearbyConnections
            .disconnectFromEndPoint(e.cancelRequestUser.uid.getOrCrash());
        discoveredDevices.remove(e.cancelRequestUser);
        yield state.copyWith(
            connectionFailureOrSuccessOption: none(),
            discoveredDevices: discoveredDevices);
      },
    );
  }
}

//TODO: Add somewhere in the ui to stop discovery as soon as the preferred devices are found
/// It is recommended to call this method
/// once you have connected to an endPoint
/// as discovery uses heavy radio operations
/// which may affect connection speed and integrity
