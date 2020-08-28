part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;

  const factory SettingsState.isLoading() = _IsLoading;

  const factory SettingsState.hasLoaded(SettingsObject settings) = _HasLoaded;

  const factory SettingsState.hasFailed(PrefsLoadFailure failure) = _HasFailed;
}
