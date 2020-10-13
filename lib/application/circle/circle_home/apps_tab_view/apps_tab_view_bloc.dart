import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/domain/files/app_info.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/infrastructure/circle/apps_repository.dart';

part 'apps_tab_view_event.dart';

part 'apps_tab_view_state.dart';

part 'apps_tab_view_bloc.freezed.dart';

@injectable
class AppsTabViewBloc extends Bloc<AppsTabViewEvent, AppsTabViewState> {
  final AppsRepository _appsRepository;

  AppsTabViewBloc(this._appsRepository) : super(AppsTabViewState.initial());

  @override
  Stream<AppsTabViewState> mapEventToState(
    AppsTabViewEvent event,
  ) async* {
    yield* event.map(
      loadApps: (e) async* {
        yield state.copyWith(isLoading: true);
        final Either<AppsLoadFailure, Map<AppInfo, bool>> failureOrApps =
            await _appsRepository.getApps();
        yield state.copyWith(failureOrAppsOption: some(failureOrApps));
      },
      toggleAppSelection: (e) async* {
        final Either<AppsLoadFailure, Map<AppInfo, bool>> failureOrApps =
            _appsRepository.toggleAppSelection(appInfo: e.appInfo);
        yield state.copyWith(failureOrAppsOption: some(failureOrApps));
      },
      deselectAll: (e) async* {
        final Either<AppsLoadFailure, Map<AppInfo, bool>> failureOrApps =
            _appsRepository.deselectAllApps();
        yield state.copyWith(failureOrAppsOption: none());
        yield state.copyWith(failureOrAppsOption: some(failureOrApps));
      },
    );
  }
}
