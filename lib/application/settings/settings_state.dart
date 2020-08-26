part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState(
      {@required Name name,
        @required UniqueId uid,
      @required Directory path,
      @required bool darkMode}) = _SettingsState;

  factory SettingsState.initial() =>
      _SettingsState(name: Name('Abhishek Upmanyu'), uid: UniqueId(), path: Directory('/'), darkMode: false);
}
