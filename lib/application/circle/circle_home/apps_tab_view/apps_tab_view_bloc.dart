import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:device_apps/device_apps.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/infrastructure/circle/apps_repository.dart';

part 'apps_tab_view_event.dart';

part 'apps_tab_view_state.dart';

part 'apps_tab_view_bloc.freezed.dart';

@injectable
class AppsTabViewBloc extends Bloc<AppsTabViewEvent, AppsTabViewState> {
  AppsTabViewBloc() : super(const AppsTabViewState.initial());

  @override
  Stream<AppsTabViewState> mapEventToState(AppsTabViewEvent event,) async* {
    yield* event.map(loadApps: (e) async* {
      yield const AppsTabViewState.isLoading();
      Either<AppsLoadFailure, List<ApplicationWithIcon>> apps =
      await AppsRepository.getApps();
      yield* apps.fold((failure) async* {
        yield AppsTabViewState.hasFailed(failure);
      }, (apps) async* {
        yield AppsTabViewState.hasLoaded(apps: apps);
      });
    });
  }
}
