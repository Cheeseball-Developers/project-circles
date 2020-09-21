part of 'files_tab_view_bloc.dart';

@freezed
abstract class FilesTabViewState with _$FilesTabViewState {
  const factory FilesTabViewState.initial() = _Initial;

  const factory FilesTabViewState.isLoading({@required bool isHome, @required Directory directory}) = _IsLoading;

  const factory FilesTabViewState.hasLoaded(
      {@required Directory directory,
        @required bool isHome,
        @required List<FileSystemEntity> folders,
      @required List<FileSystemEntity> files}) = _HasLoaded;
}
