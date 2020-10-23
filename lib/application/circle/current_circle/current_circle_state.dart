part of 'current_circle_bloc.dart';

@freezed
abstract class CurrentCircleState with _$CurrentCircleState {
  const factory CurrentCircleState.initial() = _Initial;

  const factory CurrentCircleState.isLoading({
    @required String loadingText,
  }) = _IsLoading;

  const factory CurrentCircleState.hasStarted({
    @required Map<User, bool> members,
    @required Map<FileInfo, double> outgoingFiles,
    @required Map<FileInfo, double> incomingFiles,
    @required List<FileTransaction> transactions,
    @required bool showMembersPage,
    @required bool showFilesPage,
    @required bool showFilesTransferDialog,
    @required Option<FileTransferType> transferType,
    @required bool isAcceptingRequest,
    @required bool isClosing,
  }) = _HasStarted;

  const factory CurrentCircleState.hasJoined({
    @required User host,
    @required Map<FileInfo, double> outgoingFiles,
    @required Map<FileInfo, double> incomingFiles,
    @required List<FileTransaction> transactions,
    @required bool showMembersPage,
    @required bool showFilesPage,
    @required bool showFilesTransferDialog,
    @required Option<FileTransferType> transferType,
    @required bool isLeaving,
  }) = _HasJoined;

  const factory CurrentCircleState.hasFailed({
    @required ConnectionFailure failure,
  }) = _HasFailed;
}
