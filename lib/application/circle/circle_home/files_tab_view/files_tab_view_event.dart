part of 'files_tab_view_bloc.dart';

@freezed
abstract class FilesTabViewEvent with _$FilesTabViewEvent {
  const factory FilesTabViewEvent.loadDirectory(Directory directory) = LoadDirectory;
}
