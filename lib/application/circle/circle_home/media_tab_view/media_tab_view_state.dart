part of 'media_tab_view_bloc.dart';

@freezed
abstract class MediaTabViewState with _$MediaTabViewState {
  const factory MediaTabViewState.initial() = _Initial;

  const factory MediaTabViewState.isLoading() = _IsLoading;

  const factory MediaTabViewState.hasLoadedAlbums(
      {required List<AssetPathEntity> albums}) = _HasLoadedAlbums;

  const factory MediaTabViewState.hasLoadedMedia({
    required AssetPathEntity album,
    required Map<MediaInfo, bool> media,
    required ScrollController scrollController,
    required bool loadingMore,
    required int previousPage,
    required int currentPage,
  }) = _HasLoaded;

  const factory MediaTabViewState.hasFailed(AppsLoadFailure failure) =
      _HasFailed;
}
