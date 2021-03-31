part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
      {required
          bool isSearching,
      required
          bool isLoading,
      required
          bool isCancelling,
      required
          bool showAllDiscoveredDevicesPopUp,
      required
          bool showRequestConnectionPopUp,
      required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrRequestSent,
      required
          List<User> discoveredDevices}) = _SearchState;

  factory SearchState.initial() => SearchState(
      isSearching: false,
      isLoading: false,
      isCancelling: false,
      showAllDiscoveredDevicesPopUp: false,
      showRequestConnectionPopUp: false,
      connectionFailureOrSuccessOption: none(),
      connectionFailureOrRequestSent: none(),
      discoveredDevices: <User>[]);
}
