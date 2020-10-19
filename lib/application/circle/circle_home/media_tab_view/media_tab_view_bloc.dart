import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/domain/files/media_info.dart';
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
            final Map<MediaInfo, bool> albumMedia =
                await _mediaRepository.getAlbumMedia(e.album, 0);
            yield MediaTabViewState.hasLoadedMedia(
              media: albumMedia,
              album: e.album,
              previousPage: -1,
              currentPage: 0,
            );
          }
        }, hasLoadedMedia: (state) async* {
          final Map<MediaInfo, bool> albumMedia = Map.from(state.media);
          final int currentPage = state.currentPage;
          yield state.copyWith(media: state.media, previousPage: currentPage);
          albumMedia.addAll(
              await _mediaRepository.getAlbumMedia(e.album, currentPage + 1));
          yield state.copyWith(
              media: albumMedia,
              previousPage: currentPage,
              currentPage: state.media.length == albumMedia.length
                  ? currentPage
                  : currentPage + 1);
        }, orElse: () async* {
          yield const MediaTabViewState.hasFailed(
              AppsLoadFailure.unexpectedFailure());
        });
      },
      toggleSelection: (e) async* {
        yield* state.maybeMap(
          hasLoadedMedia: (state) async* {
            if (_mediaRepository.toggleSelection(mediaInfo: e.mediaInfo)) {
              final Map<MediaInfo, bool> media = state.media;
              media.update(e.mediaInfo, (value) => !value);
              yield state.copyWith(media: {});
              yield state.copyWith(
                media: media,
              );
            }
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
            if (_mediaRepository.deselectAll()) {
              final Map<MediaInfo, bool> media = Map.from(state.media);
              media.updateAll((key, value) => false);
              yield state.copyWith(
                media: media,
              );
            }
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
