import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/settings/settings_failure.dart';
import 'package:projectcircles/infrastructure/settings/my_shared_preferences.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'package:projectcircles/injection.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState.initial());

  final MySharedPreferences _mySharedPreferences = MySharedPreferences();

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(loadPrefs: (e) async* {
      yield const SettingsState.isLoading();
      final failureOrSettingsObject = await _mySharedPreferences.load();
      yield* failureOrSettingsObject.fold(
        (f) async* {
          yield SettingsState.hasFailed(f);
        },
        (settingsObject) async* {
          getIt<NearbyConnections>().setUsername = "generic-user-name";
          yield SettingsState.hasLoaded(
            user: User(uid: settingsObject.uid, name: settingsObject.name),
            directory: settingsObject.directory,
            askBeforeReceiving: settingsObject.askBeforeReceiving,
            darkMode: settingsObject.darkMode,
            isLoading: false,
            settingsFailureOption: none(),
          );
        },
      );
    }, nameChanged: (e) async* {
      yield* state.maybeMap(hasLoaded: (state) async* {
        yield state.copyWith(isLoading: true);
        final Option<SettingsFailure> failureOption =
            await _mySharedPreferences.setName(name: e.name);
        yield state.copyWith(
          user: User(
              uid: state.user.uid,
              name: failureOption.isNone() ? e.name : state.user.name),
          isLoading: false,
          settingsFailureOption: failureOption,
        );
      }, orElse: () async* {
        yield const SettingsState.hasFailed(SettingsFailure.unexpected());
      }); // TODO: Throw an error on illegal states to crash app
    }, selectDefaultDirectory: (e) async* {
      yield* state.maybeMap(hasLoaded: (state) async* {
        final Option<SettingsFailure> failureOption =
            await _mySharedPreferences.setDirectory(
          directory: e.directory,
        );
        yield state.copyWith(
          directory: failureOption.isNone() ? e.directory : state.directory,
          isLoading: false,
          settingsFailureOption: failureOption,
        );
      }, orElse: () async* {
        yield const SettingsState.hasFailed(SettingsFailure.unexpected());
      });
    }, toggleAskBeforeReceiving: (e) async* {
      yield* state.maybeMap(hasLoaded: (state) async* {
        yield state.copyWith(isLoading: true);
        final Option<SettingsFailure> failureOption =
            await _mySharedPreferences.setBool(
          key: 'askBeforeReceiving',
          value: !state.askBeforeReceiving,
        );
        yield state.copyWith(
          askBeforeReceiving: failureOption.isNone()
              ? !state.askBeforeReceiving
              : state.askBeforeReceiving,
          isLoading: false,
          settingsFailureOption: failureOption,
        );
      }, orElse: () async* {
        yield const SettingsState.hasFailed(SettingsFailure.unexpected());
      });
    }, toggleDarkMode: (e) async* {
      yield* state.maybeMap(hasLoaded: (state) async* {
        yield state.copyWith(isLoading: true);
        final Option<SettingsFailure> failureOption =
            await _mySharedPreferences.setBool(
          key: 'darMode',
          value: !state.darkMode,
        );
        yield state.copyWith(
          darkMode: failureOption.isNone() ? !state.darkMode : state.darkMode,
          isLoading: false,
          settingsFailureOption: failureOption,
        );
      }, orElse: () async* {
        yield const SettingsState.hasFailed(SettingsFailure.unexpected());
      });
    });
  }
}
