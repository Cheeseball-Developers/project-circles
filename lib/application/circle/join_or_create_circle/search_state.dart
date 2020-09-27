part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
          {@required
              bool isSearching,
          @required
              bool isLoading,
          @required
              Option<Either<ConnectionFailure, Unit>>
                  connectionFailureOrSuccessOption,
          @required
              List<User> discoveredDevices}) =
      _SearchState; //maine code thoda alag kra h, ui m error h, wo sahi kr de phir mai connection

  factory SearchState.initial() => SearchState(
      isSearching: true,
      isLoading: false,
      connectionFailureOrSuccessOption: none(),
      discoveredDevices: <User>[]);
}
