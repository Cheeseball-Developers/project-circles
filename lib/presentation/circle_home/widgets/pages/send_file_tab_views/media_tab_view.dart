import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/media_thumbnail.dart';

class MediaTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaTabViewBloc, MediaTabViewState>(
      builder: (context, state) => state.map(
          initial: (_) => Container(),
          isLoading: (_) => Container(),
          hasLoaded: (state) => GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemCount: 20,
              itemBuilder: (context, index) =>
                  MediaThumbnail(mediaObject: state.media[index])),
          hasFailed: (_) => Container()),
    );
  }
}
