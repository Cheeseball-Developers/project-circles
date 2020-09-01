part of 'current_circle_bloc.dart';

@freezed
abstract class CurrentCircleState with _$CurrentCircleState {
  const factory CurrentCircleState.initial() = _Initial;

  const factory CurrentCircleState.isStarting() = _IsStarting;

  const factory CurrentCircleState.isJoining() = _IsJoining;

  const factory CurrentCircleState.hasJoined(
      {@required User host, @required List<User> members}) = _HasJoined;
}
