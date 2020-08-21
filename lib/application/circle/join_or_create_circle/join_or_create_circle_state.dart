part of 'join_or_create_circle_bloc.dart';

@freezed
abstract class JoinOrCreateCircleState with _$JoinOrCreateCircleState {
  const factory JoinOrCreateCircleState(
      {@required
          bool isSearching,
      @required
          bool isJoining,
      @required
          bool isCreating,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption}) = _JoinOrCreateCircleState;

  factory JoinOrCreateCircleState.initial() => JoinOrCreateCircleState(
      isSearching: true,
      isJoining: false,
      isCreating: false,
      connectionFailureOrSuccessOption: none());
}
