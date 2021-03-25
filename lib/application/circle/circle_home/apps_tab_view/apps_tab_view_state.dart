part of 'apps_tab_view_bloc.dart';

@freezed
abstract class AppsTabViewState with _$AppsTabViewState {
  const factory AppsTabViewState({
    required bool isLoading,
    required Option<Either<AppsLoadFailure, Map<AppInfo, bool>>> failureOrAppsOption,
  }) = _AppsTabViewState;

  factory AppsTabViewState.initial() => _AppsTabViewState(isLoading: true, failureOrAppsOption: none());
}
