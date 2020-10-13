import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_info.freezed.dart';

@freezed
abstract class FileInfo with _$FileInfo {
  const factory FileInfo({
    @required String fileName,
    @required double bytesSize,
  }) = _FileInfo;

  FileInfo._();
}
