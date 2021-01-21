part of 'file_transfer_bloc.dart';

@freezed
abstract class FileTransferState with _$FileTransferState {
  const factory FileTransferState.initial(
      {@required Set<FileInfo> incomingFileInfo}) = _Initial;

  const factory FileTransferState.outgoingFilesConfirmation({
    @required Option<Set<FileInfo>> filesOption,
    @required List<User> users,
  }) = _OutgoingFilesConfirmation;

  const factory FileTransferState.incomingFilesConfirmation({
    @required Set<FileInfo> files,
    @required String endId,
  }) = _IncomingFilesConfirmation;

  const factory FileTransferState.sendingFiles({
    @required List<TransferProgressInfo> transferProgressInfos,
  }) = _SendingFiles;

  const factory FileTransferState.receivingFiles({
    @required TransferProgressInfo transferProgressInfo,
  }) = _ReceivingFiles;

  const factory FileTransferState.transferComplete({
    @required FileTransferType type,
    @required List<TransferProgressInfo> transferProgressInfo,
  }) = _TransferComplete;

  const factory FileTransferState.hasFailed(
      {@required FileTransferFailure failure}) = _HasFailed;
}
