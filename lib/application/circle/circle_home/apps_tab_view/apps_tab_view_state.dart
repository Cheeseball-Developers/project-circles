part of 'apps_tab_view_bloc.dart';

@freezed
abstract class AppsTabViewState with _$AppsTabViewState {
  const factory AppsTabViewState.initial() = _Initial;

  const factory AppsTabViewState.isLoading() = _IsLoading;

  const factory AppsTabViewState.hasLoaded(
      {@required List<AppObject> apps,
      @required bool tapToSelect,
      @required int selectedApps}) = _HasLoaded;

  const factory AppsTabViewState.hasFailed(AppsLoadFailure failure) =
      _HasFailed;
}
