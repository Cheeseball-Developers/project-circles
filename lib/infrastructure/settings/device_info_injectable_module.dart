import 'package:device_info/device_info.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DeviceInfoInjectableModule {
  @lazySingleton
  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();
}