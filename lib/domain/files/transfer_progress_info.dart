import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projectcircles/domain/files/file_info.dart';

part 'transfer_progress_info.freezed.dart';

@freezed
abstract class TransferProgressInfo with _$TransferProgressInfo {
  const factory TransferProgressInfo(
      {@required String endId,
      @required Option<bool> acceptOrRejectOption,
      @required int fileTransferIndex,
      @required Map<FileInfo, double> filesMap}) = _TransferProgressInfo;

  const TransferProgressInfo._();
}
