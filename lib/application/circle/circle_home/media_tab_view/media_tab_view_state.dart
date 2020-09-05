part of 'media_tab_view_bloc.dart';

@freezed
abstract class MediaTabViewState with _$MediaTabViewState {
  const factory MediaTabViewState.initial() = _Initial;

  const factory MediaTabViewState.isLoading() = _IsLoading;

  const factory MediaTabViewState.hasLoaded(
      {@required List<MediaObject> media,
        @required bool tapToSelect,
        @required int selectedMedia}) = _HasLoaded;

  const factory MediaTabViewState.hasFailed(AppsLoadFailure failure) =
  _HasFailed;
}

