part of 'current_circle_bloc.dart';

@freezed
abstract class CurrentCircleEvent with _$CurrentCircleEvent {
  const factory CurrentCircleEvent.startCircle({@required User host}) = StartCircle;
  const factory CurrentCircleEvent.fileSent() = FileSent;
  const factory CurrentCircleEvent.fileReceived() = FileReceived;
  const factory CurrentCircleEvent.memberLeft() = MemberLeft;
  const factory CurrentCircleEvent.closeCircle() = CloseCircle;
}
