import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/infrastructure/circle/media_repository.dart';

part 'media_tab_view_event.dart';

part 'media_tab_view_state.dart';

part 'media_tab_view_bloc.freezed.dart';

@injectable
class MediaTabViewBloc extends Bloc<MediaTabViewEvent, MediaTabViewState> {
  final MediaRepository _mediaRepository;

  MediaTabViewBloc(this._mediaRepository)
      : super(const MediaTabViewState.initial());

  @override
  Stream<MediaTabViewState> mapEventToState(
    MediaTabViewEvent event,
  ) async* {
    yield* event.map(
      loadAlbums: (e) async* {
        yield const MediaTabViewState.isLoading();
        if (await MediaRepository.getPermission()) {
          yield MediaTabViewState.hasLoadedAlbums(
              albums: await MediaRepository.getAlbums());
        }
      },
      loadMedia: (e) async* {
        yield* state.maybeMap(hasLoadedAlbums: (state) async* {
          if (await MediaRepository.getPermission()) {
            yield const MediaTabViewState.isLoading();
            final Map<FileInfo, bool> albumMedia = await _mediaRepository.getAlbumMedia(e.album, 0);
            yield MediaTabViewState.hasLoadedMedia(
              media: albumMedia,
              album: e.album,
              previousPage: -1,
              currentPage: 0,
            );
          }
        }, hasLoadedMedia: (state) async* {
          final Map<FileInfo, bool> albumMedia = Map.from(state.media);
          final int currentPage = state.currentPage;
          yield state.copyWith(media: state.media, previousPage: currentPage);
          albumMedia.addAll(
              await _mediaRepository.getAlbumMedia(e.album, currentPage + 1));
          yield state.copyWith(
              media: albumMedia,
              previousPage: currentPage,
              currentPage: currentPage + 1);
        }, orElse: () async* {
          yield const MediaTabViewState.hasFailed(
              AppsLoadFailure.unexpectedFailure());
        });
      },
      toggleSelection: (e) async* {
        yield* state.maybeMap(
          hasLoadedMedia: (state) async* {
            final Map<FileInfo, bool> media =
                _mediaRepository.toggleSelection(fileInfo: e.fileInfo);
            yield state.copyWith(
              media: media,
            );
          },
          orElse: () async* {
            yield const MediaTabViewState.hasFailed(
                AppsLoadFailure.unexpectedFailure());
          },
        );
      },
      deselectAll: (e) async* {
        yield* state.maybeMap(
          hasLoadedMedia: (state) async* {
            final Map<FileInfo, bool> media = _mediaRepository.deselectAll();
            yield state.copyWith(
              media: media,
            );
          },
          orElse: () async* {
            yield const MediaTabViewState.hasFailed(
                AppsLoadFailure.unexpectedFailure());
          },
        );
      },
    );
  }
}
