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
  final List<User> discoveredDevices = <User>[];
  StreamSubscription<User> streamSubscriptionDiscoveredDevice;
  StreamSubscription<String> streamSubscriptionLostDevice;

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
          discoveredDevices: discoveredDevices,
        );

        streamSubscriptionDiscoveredDevice =
            nearbyConnections.discoveredDeviceStream.listen((event) {
          add(SearchEvent.deviceDiscovered(event));
        }, onError: (e) {
          debugPrint('Error $e');
        }, cancelOnError: false);

        yield state.copyWith(isLoading: false, isSearching: true);
      },
      deviceDiscovered: (e) async* {
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
        streamSubscriptionLostDevice =
            nearbyConnections.lostDeviceStream.listen((event) {
          debugPrint("A device is lost");
          discoveredDevices
              .removeWhere((user) => user.uid.getOrCrash() == event);
        }, onError: (e) {
          debugPrint("Error on removing $e");
        }, cancelOnError: false);

        yield state.copyWith(discoveredDevices: discoveredDevices);
      },
      stopSearching: (e) async* {
        yield state.copyWith(isLoading: false);
        streamSubscriptionDiscoveredDevice?.cancel();
        streamSubscriptionLostDevice?.cancel();
        discoveredDevices.clear();
        nearbyConnections.stopAllEndpoints();
        nearbyConnections.stopDiscovering();
        yield state.copyWith(
          isLoading: false,
          isSearching: false,
          connectionFailureOrSuccessOption: none(),
        );
      },
      requestConnection: (e) async* {
        yield* state.connectionFailureOrSuccessOption.fold(
          () async* {
            yield state.copyWith(
              showRequestConnectionPopUp: true,
            );

            await nearbyConnections.stopDiscovering();
            discoveredDevices.clear();
            final Either<ConnectionFailure, Unit> requestOrFail =
                await nearbyConnections.requestConnection(
              endpointId: e.discoveredUser.uid.getOrCrash(),
            );
            yield state.copyWith(
              isSearching: false,
              showRequestConnectionPopUp: false,
              connectionFailureOrSuccessOption: some(requestOrFail),
            );
          },
          (_) => null,
        );
      },
      endConnectionRequest: (e) async* {
        // TODO: Add functionality to cancel request here
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
