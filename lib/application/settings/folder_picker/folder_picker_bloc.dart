import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'folder_picker_event.dart';

part 'folder_picker_state.dart';

part 'folder_picker_bloc.freezed.dart';

@injectable
class FolderPickerBloc extends Bloc<FolderPickerEvent, FolderPickerState> {
  FolderPickerBloc() : super(FolderPickerState.initial());

  @override
  Stream<FolderPickerState> mapEventToState(
    FolderPickerEvent event,
  ) async* {
    yield* event.map(
      openDirectory: (e) async* {
        yield state.copyWith(directory: e.directory, folders: none());
        final List<FileSystemEntity> folders = _getFolders(e.directory);
        yield state.copyWith(directory: e.directory, folders: some(folders));
      },
      up: (e) async* {
        final Directory directory = Directory(state.directory.parent.path);
        yield state.copyWith(directory: directory, folders: none());
        final List<FileSystemEntity> folders = _getFolders(directory);
        yield state.copyWith(directory: directory, folders: some(folders));
      },
      select: (e) async* {
        yield state.copyWith(isSelected: true);
      },
    );
  }

  List<FileSystemEntity> _getFolders(Directory directory) {
    final List<FileSystemEntity> folders = [];
    for (final entity in directory.listSync()) {
      if (FileSystemEntity.isDirectorySync(entity.path)) {
        folders.add(entity);
      }
    }
    folders
        .sort((a, b) => a.path.toLowerCase().compareTo(b.path.toLowerCase()));
    return folders;
  }
}
