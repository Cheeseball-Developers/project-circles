import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'file_info.freezed.dart';

@freezed
abstract class FileInfo with _$FileInfo {
  const factory FileInfo({
    @required int hash,
    @required String path,
    @required int bytesSize,
    @required Uint8List thumbnail,
  }) = _FileInfo;

  const FileInfo._();
}
