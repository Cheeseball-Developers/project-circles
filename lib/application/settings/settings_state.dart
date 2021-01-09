part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;

  const factory SettingsState.isLoading() = _IsLoading;

  const factory SettingsState.hasLoaded(
      {@required User user,
      @required Directory directory,
      @required bool askBeforeReceiving,
      @required bool darkMode,
      @required bool isLoading,
      @required bool isChangingName,
      @required Option<SettingsFailure> settingsFailureOption}) = _HasLoaded;

  const factory SettingsState.hasFailed(SettingsFailure failure) = _HasFailed;
}
