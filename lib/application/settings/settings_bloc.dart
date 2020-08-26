import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:uuid/uuid.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState.initial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(nameChanged: (e) async* {
      yield state.copyWith(name: Name(e.name));
    }, selectDefaultDirectory: (e) async* {
      yield state.copyWith(path: e.directory);
    }, toggleDarkMode: (e) async* {
      yield state.copyWith(darkMode: !state.darkMode);
    });
  }
}
