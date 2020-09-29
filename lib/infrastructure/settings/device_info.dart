import 'dart:io' show Platform;

import 'package:dartz/dartz.dart';
import 'package:device_info/device_info.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/domain/settings/device_info_failure.dart';
import 'package:projectcircles/domain/settings/i_device_info.dart';

@LazySingleton(as: IDeviceInfo)
class DeviceInfo implements IDeviceInfo {
  final DeviceInfoPlugin _deviceInfo;

  DeviceInfo(this._deviceInfo);

  @override
  Future<Either<DeviceInfoFailure, Name>> getDeviceName() async {
    if (Platform.isAndroid) {
      try {
        final AndroidDeviceInfo info = await _deviceInfo.androidInfo;
        return right(Name(info.model));
      } catch (e) {
        return left(const DeviceInfoFailure.unexpected());
      }
    } else if (Platform.isIOS) {
      try {
        final IosDeviceInfo info = await _deviceInfo.iosInfo;
        return right(Name(info.name));
      } catch (e) {
        return left(const DeviceInfoFailure.unexpected());
      }
    } else {
      return left(const DeviceInfoFailure.unrecognisedPlatform());
    }
  }
}