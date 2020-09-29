import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info_failure.freezed.dart';

@freezed
abstract class DeviceInfoFailure with _$DeviceInfoFailure {
  const factory DeviceInfoFailure.unrecognisedPlatform() = UnrecognisedPlatform;
  const factory DeviceInfoFailure.unexpected() = Unexpected;
}