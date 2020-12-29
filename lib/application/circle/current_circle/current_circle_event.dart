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
  const factory CurrentCircleEvent.showFilesDialog() = ShowFilesDialog;
  const factory CurrentCircleEvent.showMembersDialog() = ShowMembersDialog;
  const factory CurrentCircleEvent.showFileTransferDialog() =
      ShowFileTransferDialog;
  const factory CurrentCircleEvent.filesDialogClosed() = FilesDialogClosed;
  const factory CurrentCircleEvent.membersDialogClosed() = MembersDialogClosed;
  const factory CurrentCircleEvent.fileTransferDialogClosed() =
      FileTransferDialogClosed;
  const factory CurrentCircleEvent.memberLeft({@required String id}) =
      MemberLeft;
  const factory CurrentCircleEvent.removeMember({@required User member}) =
      RemoveMember;
  const factory CurrentCircleEvent.leaveCircle() = LeaveCircle;
  const factory CurrentCircleEvent.closeCircle() = CloseCircle;
  const factory CurrentCircleEvent.disconnected() = Disconnected;
}
