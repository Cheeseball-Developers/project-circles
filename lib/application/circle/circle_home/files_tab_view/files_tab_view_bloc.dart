import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/infrastructure/circle/files_repository.dart';

part 'files_tab_view_event.dart';

part 'files_tab_view_state.dart';

part 'files_tab_view_bloc.freezed.dart';

@injectable
class FilesTabViewBloc extends Bloc<FilesTabViewEvent, FilesTabViewState> {
  final FilesRepository _filesRepository;

  FilesTabViewBloc(this._filesRepository)
      : super(const FilesTabViewState.initial());

  @override
  Stream<FilesTabViewState> mapEventToState(
    FilesTabViewEvent event,
  ) async* {
    yield* state.map(
      initial: (_) async* {
        yield* event.maybeMap(
          openDirectory: (e) async* {
            yield FilesTabViewState.isLoading(
              relativePath: e.relativePath,
            );
            try {
              _filesRepository.openDirectory(e.relativePath);
              final List<FileSystemEntity> folders =
                  _filesRepository.getFolderEntities();
              final Map<FileSystemEntity, bool> files =
                  _filesRepository.getFileEntities();

              yield FilesTabViewState.hasLoaded(
                relativePath: e.relativePath,
                folders: folders,
                files: files,
              );
            } catch (error) {
              print(error);
              print("Directory does not exist！");
              yield FilesTabViewState.isLoading(
                relativePath: e.relativePath,
              );
            }
          },
          orElse: () async* {},
        );
      },
      isLoading: (_) async* {},
      hasLoaded: (state) async* {
        yield* event.map(
          openDirectory: (e) async* {
            yield FilesTabViewState.isLoading(
              relativePath: e.relativePath,
            );
            try {
              _filesRepository.openDirectory(e.relativePath);
              final List<FileSystemEntity> folders =
                  _filesRepository.getFolderEntities();
              final Map<FileSystemEntity, bool> files =
                  _filesRepository.getFileEntities();

              yield FilesTabViewState.hasLoaded(
                relativePath: e.relativePath,
                folders: folders,
                files: files,
              );
            } catch (error) {
              print(error);
              print("Directory does not exist！");
              yield FilesTabViewState.isLoading(
                relativePath: e.relativePath,
              );
            }
          },
          toggleSelection: (e) async* {
            if (_filesRepository.toggleSelection(entity: e.fileSystemEntity)) {
              final Map<FileSystemEntity, bool> files = Map.from(state.files);
              files.update(e.fileSystemEntity, (value) => !value);
              yield state.copyWith(files: {});
              yield state.copyWith(files: files);
            }
          },
          deselectAll: (e) async* {
            if (_filesRepository.deselectAll()) {
              final Map<FileSystemEntity, bool> files = Map.from(state.files);
              files.updateAll((key, value) => false);
              yield state.copyWith(files: {});
              yield state.copyWith(files: files);
            }
          },
        );
      },
    );
  }
}
