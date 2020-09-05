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
    yield* event.map(loadMedia: (e) async* {
      if (await MediaRepository.getPermission()) {
        yield MediaTabViewState.hasLoaded(
            media: await MediaRepository.getRecent(), tapToSelect: false,
            selectedMedia: 0);
      }
    }, toggleTapToSelect: (e) async* {
      yield* state.maybeMap(hasLoaded: (state) async* {
        yield state.copyWith(tapToSelect: !state.tapToSelect);
      }, orElse: () async* {
        yield const MediaTabViewState.hasFailed(AppsLoadFailure.unexpectedFailure());
      });
    }, toggleSelection: (state) async* {});
  }
}
