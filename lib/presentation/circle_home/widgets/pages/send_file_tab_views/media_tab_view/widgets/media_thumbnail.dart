import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/media_tab_view/widgets/media_preview.dart';

class MediaThumbnail extends StatelessWidget {
  final int index;

  const MediaThumbnail({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaTabViewBloc, MediaTabViewState>(
        builder: (context, state) => state.maybeMap(
            hasLoadedMedia: (state) => GestureDetector(
                onTap: () async {
                  context.bloc<MediaTabViewBloc>().add(
                        MediaTabViewEvent.toggleSelection(
                          mediaInfo: state.media.keys.elementAt(index),
                        ),
                      );
                },
                onLongPress: () => showDialog(
                      context: context,
                      child: MediaPreview(
                        mediaInfo: state.media.keys.elementAt(index),
                      ),
                    ),
                child: Padding(
                  padding: EdgeInsets.all(
                      state.media.values.elementAt(index) ? 4.0 : 1.0),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.memory(
                          state.media.keys.elementAt(index).thumbnail,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (state.media.keys.elementAt(index).entity.type ==
                          AssetType.video)
                        const Positioned(
                          bottom: 0.0,
                          right: 0.0,
                          child: Icon(
                            Icons.videocam,
                            color: Colors.white,
                          ),
                        )
                      else
                        Container(),
                      if (state.media.values.elementAt(index))
                        Material(
                          color: Theme.of(context).buttonColor.withOpacity(0.5),
                          child: Center(
                            child: Icon(
                              Icons.check_circle,
                              color: Theme.of(context).accentIconTheme.color,
                            ),
                          ),
                        )
                      else
                        Container()
                    ],
                  ),
                )),
            orElse: () => Container()));
  }
}
