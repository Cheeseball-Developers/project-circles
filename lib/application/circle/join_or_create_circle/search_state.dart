part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
      {@required
          bool isSearching,
        @required bool isLoading,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
        Option<List<Either<ConnectionFailure, User>>> connectionFailureOrDiscoveredDevice
  }
      ) = _SearchState;

  factory SearchState.initial() => SearchState(
      isSearching: true,
      isLoading: false,
      connectionFailureOrSuccessOption: none());
}
