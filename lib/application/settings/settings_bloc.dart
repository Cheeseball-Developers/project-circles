import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:projectcircles/infrastructure/settings/my_shared_preferences.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/domain/settings/prefs_load_failure.dart';
import 'package:projectcircles/domain/settings/settings_object.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState.initial());

  final MySharedPreferences _mySharedPreferences = MySharedPreferences();
  SettingsObject _settingsObject;

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(loadPrefs: (e) async* {
      yield const SettingsState.isLoading();
      final failureOrSettingsObject = await _mySharedPreferences.load();
      yield failureOrSettingsObject.fold(
          (failure) => SettingsState.hasFailed(failure), (settingsObject) {
        _settingsObject = settingsObject;
        return SettingsState.hasLoaded(_settingsObject);
      });
    }, nameChanged: (e) async* {
      _settingsObject.name = e.name;
      yield SettingsState.hasLoaded(_settingsObject);
    }, selectDefaultDirectory: (e) async* {
      _settingsObject.path = e.directory;
      yield SettingsState.hasLoaded(_settingsObject);
    }, toggleAskBeforeReceiving: (e) async* {
      _settingsObject.askBeforeReceiving = !_settingsObject.askBeforeReceiving;
      yield SettingsState.hasLoaded(_settingsObject);
    }, toggleDarkMode: (e) async* {

      _settingsObject.darkMode = !_settingsObject.darkMode;
      yield SettingsState.hasLoaded(_settingsObject);
    });
  }
}
