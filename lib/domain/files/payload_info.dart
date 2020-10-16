import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payload_info.freezed.dart';

@freezed
abstract class PayloadInfo with _$PayloadInfo {
  const factory PayloadInfo(
      {@required int payloadId, @required double progress}) = _PayloadInfo;
  const PayloadInfo._();
}
