import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
abstract class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.instanceLoadFailure() = InstanceLoadFailure;
  const factory SettingsFailure.valueLoadFailure() = ValueLoadFailure;
  const factory SettingsFailure.valueSaveFailure() = ValueSaveFailure;
  const factory SettingsFailure.unexpected() = Unexpected;
}