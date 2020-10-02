part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
      {@required
          bool isSearching,
      @required
          bool isLoading,
      @required
          bool showAllDiscoveredDevicesPopUp,
      @required
          bool showRequestConnectionPopUp,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      @required
          List<User> discoveredDevices}) = _SearchState;

  factory SearchState.initial() => SearchState(
      isSearching: true,
      isLoading: false,
      showAllDiscoveredDevicesPopUp: false,
      showRequestConnectionPopUp: false,
      connectionFailureOrSuccessOption: none(),
      discoveredDevices: <User>[]);
}
