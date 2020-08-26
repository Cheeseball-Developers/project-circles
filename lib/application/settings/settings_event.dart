part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.nameChanged(String name) = NameChanged;
  const factory SettingsEvent.selectDefaultDirectory(Directory directory) = SelectDefaultDirectory;
  const factory SettingsEvent.toggleDarkMode() = ToggleDarkMode;
}
