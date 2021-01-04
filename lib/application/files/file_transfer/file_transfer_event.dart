part of 'file_transfer_bloc.dart';

@freezed
abstract class FileTransferEvent with _$FileTransferEvent {
  const factory FileTransferEvent.initialize() = _Initialize;

  const factory FileTransferEvent.confirmOutgoingFiles({
    @required List<User> users,
  }) = _ConfirmOutgoingFiles;

  const factory FileTransferEvent.cancelSend() = _CancelSend;

  const factory FileTransferEvent.sendFilesInfo() = _SendFilesInfo;

  const factory FileTransferEvent.sendFiles({@required String endPointId}) =
      _SendFiles;

  const factory FileTransferEvent.filesSent() = _FilesSent;

  const factory FileTransferEvent.fileInfoReceived({FileInfo fileInfo}) =
      _FileInfoReceived;

  const factory FileTransferEvent.endIdReceived({String endId}) = _EndIdReceived;

  const factory FileTransferEvent.confirmIncomingFiles({
    @required bool acceptOrReject,
  }) = _ConfirmIncomingFiles;

  const factory FileTransferEvent.updateProgress({
    @required PayloadInfo payloadInfo,
  }) = _UpdateProgress;

  const factory FileTransferEvent.filesReceived() = _FilesReceived;

  const factory FileTransferEvent.reset() = _Reset;
}
