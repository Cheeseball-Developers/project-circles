import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_transfer_type.freezed.dart';

@freezed
abstract class FileTransferType with _$FileTransferType {
  const factory FileTransferType.incoming() = Incoming;
  const factory FileTransferType.outgoing() = Outgoing;
}