import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/media_tab_view/widgets/album_thumbnail.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/widgets/error_retry.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/widgets/loading_page.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/media_tab_view/widgets/media_thumbnail.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/widgets/selection_bar.dart';

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
                      onTap: () => context.read<MediaTabViewBloc>().add(
                          MediaTabViewEvent.loadMedia(
                              album: state.albums[index])),
                      child: AlbumThumbnail(album: state.albums[index]),
                    ),
                  ),
                ),
            hasLoadedMedia: (state) => Scaffold(
                  appBar: state.maybeMap(
                    hasLoadedMedia: (state) => !state.media.containsValue(true)
                        ? AppBar(
                            elevation: 8.0,
                            toolbarHeight: 40.0,
                            backgroundColor: Theme.of(context).cardColor,
                            leading: GestureDetector(
                              onTap: () => context
                                  .read<MediaTabViewBloc>()
                                  .add(const MediaTabViewEvent.loadAlbums()),
                              child: Icon(Icons.chevron_left_rounded,
                                  color: Theme.of(context).buttonColor),
                            ),
                            title: Text(
                              state.album.name,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            centerTitle: true,
                          )
                        : PreferredSize(
                            preferredSize:
                                Size(MediaQuery.of(context).size.width, 40.0),
                            child: SelectionBar(
                              count: state.media.values
                                  .where((selected) => selected)
                                  .length,
                              onCancel: () =>
                                  context.read<MediaTabViewBloc>().add(
                                        const MediaTabViewEvent.deselectAll(),
                                      ),
                            ),
                          ),
                    orElse: () => PreferredSize(
                      preferredSize: const Size(0.0, 0.0),
                      child: Container(),
                    ),
                  ),
                  body: Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                          controller: state.scrollController,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemCount: state.media.length,
                          itemBuilder: (context, index) =>
                              MediaThumbnail(index: index),
                        ),
                      ),
                      if (state.loadingMore)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 128.0),
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(
                                  Theme.of(context).indicatorColor),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
            hasFailed: (_) => ErrorRetry()));
  }
}
