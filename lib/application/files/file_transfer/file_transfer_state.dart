part of 'file_transfer_bloc.dart';

@freezed
abstract class FileTransferState with _$FileTransferState {
  const factory FileTransferState.initial() = _Initial;

  const factory FileTransferState.outgoingFilesConfirmation({
    @required Option<List<FileInfo>> filesOption,
    @required List<User> users,
  }) = _OutgoingFilesConfirmation;

  const factory FileTransferState.awaitingSendApproval({
    @required List<FileInfo> files,
  }) = _AwaitingSendApproval;

  const factory FileTransferState.incomingFilesConfirmation({
    @required List<FileInfo> files,
    @required String endId,
  }) = _IncomingFilesConfirmation;

  const factory FileTransferState.transferringFiles({
    @required FileTransferType type,
    @required Map<FileInfo, double> filesMap,
  }) = _TransferringFiles;

  const factory FileTransferState.transferComplete() = _TransferComplete;

  const factory FileTransferState.hasFailed(
      {@required FileTransferFailure failure}) = _HasFailed;
}
