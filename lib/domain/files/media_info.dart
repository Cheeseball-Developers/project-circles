import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'media_info.freezed.dart';

@freezed
abstract class MediaInfo with _$MediaInfo {
  const factory MediaInfo({
    required AssetEntity entity,
    required Uint8List thumbnail,
  }) = _MediaInfo;
}