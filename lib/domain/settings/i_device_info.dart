import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/core/value_objects.dart';

import 'device_info_failure.dart';

abstract class IDeviceInfo {
  Future<Either<DeviceInfoFailure, Name>> getDeviceName();
}