part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadPrefs() = LoadPrefs;
  const factory SettingsEvent.changeName() = ChangeName;
  const factory SettingsEvent.nameChanged(Name name) = NameChanged;
  const factory SettingsEvent.selectDefaultDirectory(Directory directory) = SelectDefaultDirectory;
  const factory SettingsEvent.toggleAskBeforeReceiving() = ToggleAskBeforeReceiving;
  const factory SettingsEvent.toggleDarkMode() = ToggleDarkMode;
}
