part of 'folder_picker_bloc.dart';

@freezed
abstract class FolderPickerState with _$FolderPickerState {
  const factory FolderPickerState({
    @required Directory directory,
    @required Option<List<FileSystemEntity>> folders,
    @required bool isSelected,
  }) = _FolderPickerState;

  factory FolderPickerState.initial() => _FolderPickerState(
        directory: Directory(''),
        folders: none(),
        isSelected: false,
      );
}
