part of 'current_circle_bloc.dart';

@freezed
abstract class CurrentCircleState with _$CurrentCircleState {
  const factory CurrentCircleState.initial() = _Initial;

  const factory CurrentCircleState.isStarting() = _IsStarting;

  const factory CurrentCircleState.isJoining() = _IsJoining;

  const factory CurrentCircleState.hasJoined(
      {@required String host,
      @required Map<User, bool> members,
      @required Map<File, double> selectedFiles,
      @required bool filesSentPopUp}) = _HasJoined;

  const factory CurrentCircleState.hasFailed(
      {@required ConnectionFailure failure}) = _HasFailed;
}
