import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/domain/files/value_objects.dart';
import 'package:projectcircles/infrastructure/circle/apps_repository.dart';

part 'apps_tab_view_event.dart';

part 'apps_tab_view_state.dart';

part 'apps_tab_view_bloc.freezed.dart';

@injectable
class AppsTabViewBloc extends Bloc<AppsTabViewEvent, AppsTabViewState> {
  AppsTabViewBloc() : super(const AppsTabViewState.initial());

  @override
  Stream<AppsTabViewState> mapEventToState(
    AppsTabViewEvent event,
  ) async* {
    yield* event.map(loadApps: (e) async* {
      yield const AppsTabViewState.isLoading();
      Either<AppsLoadFailure, List<AppObject>> apps =
          await AppsRepository.getApps();
      yield* apps.fold((failure) async* {
        yield AppsTabViewState.hasFailed(failure);
      }, (apps) async* {
        yield AppsTabViewState.hasLoaded(
            apps: apps, selectedApps: 0);
      });
    }, toggleAppSelection: (e) async* {
      yield* state.maybeMap(hasLoaded: (state) async* {
        state.apps[e.index] = AppObject(
            state.apps[e.index].getOrCrash(), state.apps[e.index].icon,
            selected: !state.apps[e.index].selected);
        final int selectedApps = state.apps[e.index].selected
            ? state.selectedApps + 1
            : state.selectedApps - 1;
        yield state.copyWith(
            selectedApps: selectedApps);
      }, orElse: () async* {
        yield const AppsTabViewState.hasFailed(
            AppsLoadFailure.unexpectedFailure());
      });
    }, deselectAll: (e) async* {
      yield* state.maybeMap(hasLoaded: (state) async* {
        final List<AppObject> apps = state.apps;
        for (int i=0; i<state.apps.length; ++i) {
          apps[i] = AppObject(apps[i].getOrCrash(), apps[i].icon,
              selected: false);
        }
        yield state.copyWith(
          apps: apps,
            selectedApps: 0);
      }, orElse: () async* {
        yield const AppsTabViewState.hasFailed(
            AppsLoadFailure.unexpectedFailure());
      });
    });
  }
}
