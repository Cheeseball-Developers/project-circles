import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/infrastructure/settings/my_shared_preferences.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/domain/settings/prefs_load_failure.dart';
import 'package:projectcircles/domain/settings/settings_object.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'package:projectcircles/injection.dart';

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
      getIt<NearbyConnections>().setUsername = "generic-user-name";
      yield failureOrSettingsObject.fold(
          (failure) => SettingsState.hasFailed(failure), (settingsObject) {
        _settingsObject = settingsObject;

        return SettingsState.hasLoaded(
            user: User(uid: _settingsObject.uid, name: _settingsObject.name),
            path: _settingsObject.path,
            askBeforeReceiving: _settingsObject.askBeforeReceiving,
            darkMode: _settingsObject.darkMode);
      });
    }, nameChanged: (e) async* {
      _settingsObject.name = e.name;
      yield SettingsState.hasLoaded(
          user: User(uid: _settingsObject.uid, name: _settingsObject.name),
          path: _settingsObject.path,
          askBeforeReceiving: _settingsObject.askBeforeReceiving,
          darkMode: _settingsObject.darkMode);
    }, selectDefaultDirectory: (e) async* {
      _settingsObject.path = e.directory;
      yield SettingsState.hasLoaded(
          user: User(uid: _settingsObject.uid, name: _settingsObject.name),
          path: _settingsObject.path,
          askBeforeReceiving: _settingsObject.askBeforeReceiving,
          darkMode: _settingsObject.darkMode);
    }, toggleAskBeforeReceiving: (e) async* {
      await _mySharedPreferences.setBool(
          key: 'askBeforeReceiving',
          value: !_settingsObject.askBeforeReceiving);
      _settingsObject.askBeforeReceiving = !_settingsObject.askBeforeReceiving;
      yield SettingsState.hasLoaded(
          user: User(uid: _settingsObject.uid, name: _settingsObject.name),
          path: _settingsObject.path,
          askBeforeReceiving: _settingsObject.askBeforeReceiving,
          darkMode: _settingsObject.darkMode);
    }, toggleDarkMode: (e) async* {
      await _mySharedPreferences.setBool(
          key: 'darkMode', value: !_settingsObject.darkMode);
      _settingsObject.darkMode = !_settingsObject.darkMode;
      yield SettingsState.hasLoaded(
          user: User(uid: _settingsObject.uid, name: _settingsObject.name),
          path: _settingsObject.path,
          askBeforeReceiving: _settingsObject.askBeforeReceiving,
          darkMode: _settingsObject.darkMode);
    });
  }
}
