part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(
      {@required
          bool isSearching,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption}) = _SearchState;

  factory SearchState.initial() => SearchState(
      isSearching: true,
      connectionFailureOrSuccessOption: none());
}
