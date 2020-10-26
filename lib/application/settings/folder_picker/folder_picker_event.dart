part of 'folder_picker_bloc.dart';

@freezed
abstract class FolderPickerEvent with _$FolderPickerEvent {
  const factory FolderPickerEvent.openDirectory({@required Directory directory}) = _OpenDirectory;
  const factory FolderPickerEvent.up() = _Up;
  const factory FolderPickerEvent.select() = _Select;
}
