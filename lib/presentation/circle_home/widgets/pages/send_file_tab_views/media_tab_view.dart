import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/album_thumbnail.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/media_thumbnail.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_back_button.dart';

class MediaTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaTabViewBloc, MediaTabViewState>(
      buildWhen: (a, b) => !(a.runtimeType == b.runtimeType),
      builder: (context, state) => state.map(
          initial: (_) => Container(),
          isLoading: (_) => const Center(child: CircularProgressIndicator()),
          hasLoadedAlbums: (state) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: state.albums.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => context.bloc<MediaTabViewBloc>().add(
                        MediaTabViewEvent.loadMedia(
                            album: state.albums[index])),
                    child: AlbumThumbnail(album: state.albums[index]),
                  ),
                ),
              ),
          hasLoadedMedia: (state) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyBackButton(
                      onTap: () => context
                          .bloc<MediaTabViewBloc>()
                          .add(const MediaTabViewEvent.loadAlbums()),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemCount: 20,
                    itemBuilder: (context, index) =>
                        MediaThumbnail(index: index),
                  ),
                ],
              ),
          hasFailed: (_) => Container()),
    );
  }
}
