part of 'current_circle_bloc.dart';

@freezed
abstract class CurrentCircleEvent with _$CurrentCircleEvent {
<<<<<<< HEAD
  const factory CurrentCircleEvent.startCircle({@required User host}) = StartCircle;
  const factory CurrentCircleEvent.acceptOrReject({@required User requestingUser, @required bool acceptConnection}) = AcceptOrReject;
=======
  const factory CurrentCircleEvent.startCircle({@required String host}) =
      StartCircle;
  const factory CurrentCircleEvent.deviceRequestedConnection(
      {@required User user}) = DeviceRequestedConnection;
  const factory CurrentCircleEvent.acceptOrReject(
      {@required User requestingUser,
      @required bool acceptConnection}) = AcceptOrReject;
>>>>>>> d859a5cb1a27e0194bfb232c88b94ca52b5dfc71
  const factory CurrentCircleEvent.addFile({@required File file}) = AddFile;
  const factory CurrentCircleEvent.sendFiles() = SendFiles;
  const factory CurrentCircleEvent.filesSent() = FilesSent;
  const factory CurrentCircleEvent.fileReceived() = FileReceived;
  const factory CurrentCircleEvent.memberLeft() = MemberLeft;
  const factory CurrentCircleEvent.leaveCircle() = LeaveCircle;
  const factory CurrentCircleEvent.closeCircle() = CloseCircle;
}
