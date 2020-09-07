part of 'files_tab_view_bloc.dart';

@freezed
abstract class FilesTabViewState with _$FilesTabViewState {
  const factory FilesTabViewState.initial() = _Initial;

  const factory FilesTabViewState.isLoading() = _IsLoading;

  const factory FilesTabViewState.hasLoaded(
      {@required List<FileSystemEntity> folders,
      @required List<FileSystemEntity> files}) = _HasLoaded;
}
