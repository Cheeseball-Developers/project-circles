part of 'current_circle_bloc.dart';

@freezed
abstract class CurrentCircleEvent with _$CurrentCircleEvent {
  const factory CurrentCircleEvent.startCircle({@required User host}) = StartCircle;
  const factory CurrentCircleEvent.sendFiles() = SendFiles;
  const factory CurrentCircleEvent.filesSent() = FilesSent;
  const factory CurrentCircleEvent.fileReceived() = FileReceived;
  const factory CurrentCircleEvent.memberLeft() = MemberLeft;
  const factory CurrentCircleEvent.leaveCircle() = LeaveCircle;
  const factory CurrentCircleEvent.closeCircle() = CloseCircle;
}
