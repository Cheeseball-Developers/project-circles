import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/album_thumbnail.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/error_retry.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/loading_page.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/media_thumbnail.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/selection_bar.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_back_button.dart';

class MediaTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaTabViewBloc, MediaTabViewState>(
        builder: (context, state) => state.map(
            initial: (_) => Container(),
            isLoading: (_) => LoadingPage(),
            hasLoadedAlbums: (state) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
            hasLoadedMedia: (state) => Scaffold(
                  appBar: state.maybeMap(
                    hasLoadedMedia: (state) => state.selectedMedia == 0 ? AppBar(
                      elevation: 8.0,
                      toolbarHeight: 40.0,
                      backgroundColor: Theme.of(context).cardColor,
                      leading: MyBackButton(
                        onTap: () => context
                            .bloc<MediaTabViewBloc>()
                            .add(const MediaTabViewEvent.loadAlbums()),
                      ),
                      title: Text(
                        state.album.name,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      centerTitle: true,
                    ) : PreferredSize(
                      preferredSize:
                      Size(MediaQuery.of(context).size.width, 40.0),
                      child: SelectionBar(
                        count: state.selectedMedia,
                        onCancel: () => context.bloc<MediaTabViewBloc>().add(
                          const MediaTabViewEvent.deselectAll(),
                        ),
                      ),
                    ),
                    orElse: () => PreferredSize(
                      preferredSize: const Size(0.0, 0.0),
                      child: Container(),
                    ),
                  ),
                  body: NotificationListener(
                    onNotification: (ScrollNotification scrollInfo) {
                      if ((scrollInfo.metrics.pixels ==
                              scrollInfo.metrics.maxScrollExtent) &&
                          (state.previousPage != state.currentPage)) {
                        context.bloc<MediaTabViewBloc>().add(
                            MediaTabViewEvent.loadMedia(album: state.album));
                      }
                      return true;
                    },
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemCount: state.media.length,
                      itemBuilder: (context, index) =>
                          MediaThumbnail(index: index),
                    ),
                  ),
                ),
            hasFailed: (_) => ErrorRetry()));
  }
}
