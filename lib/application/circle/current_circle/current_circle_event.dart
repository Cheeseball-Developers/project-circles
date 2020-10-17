part of 'current_circle_bloc.dart';

@freezed
abstract class CurrentCircleEvent with _$CurrentCircleEvent {
  const factory CurrentCircleEvent.startCircle({@required User host}) =
      StartCircle;
  const factory CurrentCircleEvent.deviceRequestedConnection(
      {@required User user}) = DeviceRequestedConnection;
  const factory CurrentCircleEvent.acceptOrReject(
      {@required User requestingUser,
      @required bool acceptConnection}) = AcceptOrReject;
  const factory CurrentCircleEvent.joinCircle({@required User host}) =
      JoinCircle;
  const factory CurrentCircleEvent.showFilesPage() = ShowFilesPage;
  const factory CurrentCircleEvent.showMembersPage() = ShowMembersPage;
  const factory CurrentCircleEvent.pageOpened() = PageOpened;
  const factory CurrentCircleEvent.sendFiles() = SendFiles;
  const factory CurrentCircleEvent.sendingFiles(
      {@required PayloadInfo payloadInfo}) = SendingFiles;
  const factory CurrentCircleEvent.filesSent() = FilesSent;
  const factory CurrentCircleEvent.fileInfoReceived({FileInfo fileInfo}) =
      FileInfoReceived;
  const factory CurrentCircleEvent.fileReceiving(
      {@required PayloadInfo payloadInfo}) = FileReceived;
  const factory CurrentCircleEvent.memberLeft({@required String id}) =
      MemberLeft;
  const factory CurrentCircleEvent.leaveCircle() = LeaveCircle;
  const factory CurrentCircleEvent.closeCircle() = CloseCircle;
  const factory CurrentCircleEvent.disconnected() = Disconnected;
}
