part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState(
      {@required Name name,
      @required Directory path,
      @required bool darkMode}) = _SettingsState;

  factory SettingsState.initial() =>
      _SettingsState(name: Name('hio'), path: Directory('/'), darkMode: false);
}
