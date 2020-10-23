import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_transfer_failure.freezed.dart';

@freezed
abstract class FileTransferFailure with _$FileTransferFailure {
  const factory FileTransferFailure.denied() = _Denied;
  const factory FileTransferFailure.cancelled() = _Cancelled;
  const factory FileTransferFailure.unexpected() = _Unexpected;
}