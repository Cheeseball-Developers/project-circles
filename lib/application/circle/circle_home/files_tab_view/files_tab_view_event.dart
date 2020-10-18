part of 'files_tab_view_bloc.dart';

@freezed
abstract class FilesTabViewEvent with _$FilesTabViewEvent {
  const factory FilesTabViewEvent.openDirectory({
    @required String relativePath,
  }) = LoadDirectory;
  const factory FilesTabViewEvent.toggleSelection({
    @required FileSystemEntity fileSystemEntity,
  }) = ToggleSelection;
  const factory FilesTabViewEvent.deselectAll() = DeselectAll;
}
