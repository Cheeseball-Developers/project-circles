import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/circle/connection_failure.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

@LazySingleton()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final NearbyConnections _nearbyConnections;

  final Logger logger = Logger();

  SearchBloc(this._nearbyConnections) : super(SearchState.initial());

  StreamSubscription<User>? streamSubscriptionDiscoveredDevice;
  StreamSubscription<String>? streamSubscriptionLostDevice;
  StreamSubscription<Either<ConnectionFailure, Unit>>?
      streamSubscriptionOnConnectionResult;

  void printDebug(String initialStatement) {
    logger.d(initialStatement);
    logger.d('Values: ');
    logger.d('isSearching :${state.isSearching}');
    logger.d('isLoading :${state.isLoading}');
    logger.d('isCancelling :${state.isCancelling}');
    logger.d(
        'showAllDiscoveredDevicesPopUp :${state.showAllDiscoveredDevicesPopUp}');
    logger.d('showRequestConnectionPopUp :${state.showRequestConnectionPopUp}');
    logger.d(
        'connectionFailureOrSuccessOption :${state.connectionFailureOrSuccessOption}');
    logger.d(
        'connectionFailureOrRequestSent :${state.connectionFailureOrRequestSent}');
    logger.d(
        'streamSubscriptionDiscoveredDevice is null :${streamSubscriptionDiscoveredDevice == null}');
    logger.d(
        'streamSubscriptionOnConnectionResult is null :${streamSubscriptionOnConnectionResult == null}');
    logger.d(
        'streamSubscriptionLostDevice is null :${streamSubscriptionLostDevice == null}');
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    yield* event.map(
      startSearching: (e) async* {
        printDebug('Start Searching Event Called.');

        await streamSubscriptionLostDevice?.cancel();
        await streamSubscriptionOnConnectionResult?.cancel();
        await streamSubscriptionDiscoveredDevice?.cancel();

        streamSubscriptionLostDevice = null;
        streamSubscriptionOnConnectionResult = null;
        streamSubscriptionDiscoveredDevice = null;

        yield state.copyWith(
            isLoading: true,
            connectionFailureOrSuccessOption: none(),
            connectionFailureOrRequestSent: none(),
            discoveredDevices: []);

        await _nearbyConnections.permitLocation();
        await _nearbyConnections.enableLocation();
        await _nearbyConnections.askStroragePermission();

        final Either<ConnectionFailure, Unit> errorOrDiscovering =
            await _nearbyConnections.startDiscovering();

        yield state.copyWith(
          isLoading: false,
          isSearching: true,
          connectionFailureOrSuccessOption: some(errorOrDiscovering),
        );

        streamSubscriptionDiscoveredDevice =
            _nearbyConnections.discoveredDeviceStream!.listen((event) {
          add(SearchEvent.deviceDiscovered(event));
        }, onError: (e) {
          debugPrint('Error $e');
        }, cancelOnError: false);
        streamSubscriptionLostDevice =
            _nearbyConnections.lostDeviceStream!.listen((event) {
          add(SearchEvent.deviceLost(uidString: event));
        }, onError: (e) {
          debugPrint("Error on removing $e");
        }, cancelOnError: false);

        yield state.copyWith(isLoading: false, isSearching: true);

        printDebug('Start Searching Event Ended.');
      },
      deviceDiscovered: (e) async* {
        printDebug('Device Discovered Event Called.');

        final List<User> discoveredDevices = List.from(state.discoveredDevices);
        if (!discoveredDevices.contains(e.user)) {
          discoveredDevices.add(e.user);
        }
        yield state.copyWith(
          isLoading: false,
          isSearching: true,
          discoveredDevices: discoveredDevices,
        );

        printDebug('Device Discovered Event Ended.');
      },
      showAllDiscoveredDevices: (e) async* {
        printDebug('Show All Discovered Devices Event Called.');

        yield state.copyWith(showAllDiscoveredDevicesPopUp: true);

        printDebug('Show All Discovered Devices Event Ended.');
      },
      dismissAllDiscoveredDevices: (e) async* {
        printDebug('Dismiss All Discovered Devices Event Called.');

        yield state.copyWith(showAllDiscoveredDevicesPopUp: false);

        printDebug('Dismiss All Discovered Devices Event Ended.');
      },
      deviceLost: (e) async* {
        printDebug('Device Lost Event Called.');

        final List<User> discoveredDevices = List.from(state.discoveredDevices);
        discoveredDevices
            .removeWhere((user) => user.uid.getOrCrash() == e.uidString);
        yield state.copyWith(discoveredDevices: discoveredDevices);

        printDebug('Device Lost Event Ended.');
      },
      stopSearching: (e) async* {
        printDebug('Stop Searching Event Called.');

        yield state.copyWith(isLoading: false);
        await streamSubscriptionDiscoveredDevice?.cancel();
        await streamSubscriptionLostDevice?.cancel();
        await _nearbyConnections.stopAllEndpoints();
        await _nearbyConnections.stopDiscovering();
        yield state.copyWith(
          isLoading: false,
          isSearching: false,
          connectionFailureOrSuccessOption: none(),
          discoveredDevices: [],
        );

        printDebug('Stop Searching Event Ended.');
      },
      requestConnection: (e) async* {
        printDebug('Request Connection Event Called.');

        streamSubscriptionDiscoveredDevice?.cancel();
        await _nearbyConnections.stopDiscovering();

        yield* state.connectionFailureOrSuccessOption.fold(
          () async* {
            yield state.copyWith(
              showRequestConnectionPopUp: true,
            );

            final Either<ConnectionFailure, Unit> requestOrFail =
                await _nearbyConnections.requestConnection(
              endpointId: e.discoveredUser.uid.getOrCrash(),
            );
            yield state.copyWith(
                isSearching: false,
                discoveredDevices: [],
                showRequestConnectionPopUp: false,
                connectionFailureOrRequestSent: some(requestOrFail),
                connectionFailureOrSuccessOption: none());

            streamSubscriptionOnConnectionResult =
                _nearbyConnections.onConnectionResultDiscStream!.listen(
              (event) {
                add(SearchEvent.connectionResult(event));
              },
            );
          },
          (_) => null,
        );

        printDebug('Request Connection Event Ended.');
      },
      connectionResult: (e) async* {
        printDebug('Connection Result Event Called.');

        await streamSubscriptionOnConnectionResult?.cancel();

        yield state.copyWith(
            connectionFailureOrSuccessOption: some(e.connectionStatus));

        printDebug('Connection Result Event Ended.');
      },
      endConnectionRequest: (e) async* {
        printDebug('End Connection Request Event Called.');

        yield state.copyWith(
          isCancelling: true,
        );

        await streamSubscriptionOnConnectionResult?.cancel();

        final List<User> discoveredDevices = List.from(state.discoveredDevices);
        _nearbyConnections.disconnectFromEndPoint(
            endpointId: e.cancelRequestUser.uid.getOrCrash());
        discoveredDevices.remove(e.cancelRequestUser);

        yield state.copyWith(
          isCancelling: false,
          connectionFailureOrSuccessOption: none(),
          discoveredDevices: discoveredDevices,
        );

        printDebug('End Connection Request Event Ended.');
      },
    );
  }
}
