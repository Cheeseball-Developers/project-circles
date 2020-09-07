import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:projectcircles/infrastructure/circle/files_repository.dart';
import 'package:projectcircles/injection.dart';

part 'files_tab_view_event.dart';

part 'files_tab_view_state.dart';

part 'files_tab_view_bloc.freezed.dart';

@injectable
class FilesTabViewBloc extends Bloc<FilesTabViewEvent, FilesTabViewState> {
  FilesTabViewBloc() : super(const FilesTabViewState.initial());

  @override
  Stream<FilesTabViewState> mapEventToState(
    FilesTabViewEvent event,
  ) async* {
    yield* event.map(loadDirectory: (e) async* {
      yield const FilesTabViewState.isLoading();
      final List<FileSystemEntity> entities = await getIt<FilesRepository>()
          .getFoldersAndFiles(e.directory);
      try {
        final List<FileSystemEntity> files = [];
        final List<FileSystemEntity> folders = [];

        for (var v in entities) {
          if (v.path.substring(
                  v.parent.path.length + 1, v.parent.path.length + 2) ==
              '.') {
            continue;
          }
          if (FileSystemEntity.isFileSync(v.path)) {
            files.add(v);
          } else {
            folders.add(v);
          }
        }

        files.sort(
            (a, b) => a.path.toLowerCase().compareTo(b.path.toLowerCase()));
        folders.sort(
            (a, b) => a.path.toLowerCase().compareTo(b.path.toLowerCase()));

        yield FilesTabViewState.hasLoaded(folders: folders, files: files);
      } catch (e) {
        print(e);
        print("Directory does not exist！");
        yield const FilesTabViewState.isLoading();
      }
    });
  }
}
