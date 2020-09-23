
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discovered_device.freezed.dart';

@freezed
abstract class DiscoveredDevice with _$DiscoveredDevice{
  const factory DiscoveredDevice({@required String endId, @required String username, @required bool acceptOrReject})  = _DiscoveredDevice;
}

