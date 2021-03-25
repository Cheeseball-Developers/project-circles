part of 'files_tab_view_bloc.dart';

@freezed
abstract class FilesTabViewState with _$FilesTabViewState {
  const factory FilesTabViewState.initial() = _Initial;

  const factory FilesTabViewState.isLoading({
    required String relativePath,
  }) = _IsLoading;

  const factory FilesTabViewState.hasLoaded({
    required String relativePath,
    required List<FileSystemEntity> folders,
    required Map<FileSystemEntity, bool> files,
  }) = _HasLoaded;
}
