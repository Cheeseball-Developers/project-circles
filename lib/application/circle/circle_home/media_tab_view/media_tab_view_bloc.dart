import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/domain/files/value_objects.dart';
import 'package:projectcircles/infrastructure/circle/media_repository.dart';

part 'media_tab_view_event.dart';

part 'media_tab_view_state.dart';

part 'media_tab_view_bloc.freezed.dart';

@injectable
class MediaTabViewBloc extends Bloc<MediaTabViewEvent, MediaTabViewState> {
  MediaTabViewBloc() : super(const MediaTabViewState.initial());

  @override
  Stream<MediaTabViewState> mapEventToState(MediaTabViewEvent event,) async* {
    yield* event.map(loadAlbums: (e) async* {
      yield const MediaTabViewState.isLoading();
      if (await MediaRepository.getPermission()) {
        yield MediaTabViewState.hasLoadedAlbums(
            albums: await MediaRepository.getAlbums());
      }
    }, loadMedia: (e) async* {
      yield* state.maybeMap(
          hasLoadedAlbums: (state) async* {
            if (await MediaRepository.getPermission()) {
              yield const MediaTabViewState.isLoading();
              final albumMedia = await MediaRepository.getAlbumMedia(
                  e.album, 0);
              yield MediaTabViewState.hasLoadedMedia(media: albumMedia,
                  album: e.album,
                  previousPage: -1,
                  currentPage: 0,
                  tapToSelect: false,
                  selectedMedia: 0);
            }
          },
          hasLoadedMedia: (state) async* {
            final albumMedia = state.media;
            final int currentPage = state.currentPage;
            yield state.copyWith(media: state.media,
                previousPage: currentPage);
            albumMedia.addAll(
                await MediaRepository.getAlbumMedia(e.album, currentPage + 1));
            print(albumMedia.length);
            yield state.copyWith(media: albumMedia,
                previousPage: currentPage,
                currentPage: currentPage + 1);
          },
          orElse: () async* {
            yield const MediaTabViewState.hasFailed(
                AppsLoadFailure.unexpectedFailure());
          });
    }, toggleTapToSelect: (e) async* {
      yield* state.maybeMap(hasLoadedMedia: (state) async* {
        yield state.copyWith(tapToSelect: !state.tapToSelect);
      }, orElse: () async* {
        yield const MediaTabViewState.hasFailed(
            AppsLoadFailure.unexpectedFailure());
      });
    }, toggleSelection: (e) async* {
      yield* state.maybeMap(hasLoadedMedia: (state) async* {
        state.media[e.index] = MediaObject(state.media[e.index].getOrCrash(),
            selected: !state.media[e.index].selected);
        final int selectedMedia = state.media[e.index].selected
            ? state.selectedMedia + 1
            : state.selectedMedia - 1;
        yield state.copyWith(
            media: state.media,
            selectedMedia: selectedMedia,
            tapToSelect: selectedMedia == 0 ? false : state.tapToSelect);
      }, orElse: () async* {
        yield const MediaTabViewState.hasFailed(
            AppsLoadFailure.unexpectedFailure());
      });
    });
  }
}
