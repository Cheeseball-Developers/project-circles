import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';

class MediaThumbnail extends StatelessWidget {
  final int index;

  const MediaThumbnail({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaTabViewBloc, MediaTabViewState>(
        builder: (context, state) =>
            state.maybeMap(
                hasLoadedMedia: (state) =>
                    GestureDetector(
                        onTap: () =>
                            context
                                .bloc<MediaTabViewBloc>()
                                .add(MediaTabViewEvent.toggleSelection(index)),
                        child: Padding(
                          padding:
                          EdgeInsets.all(
                              state.media[index].selected ? 4.0 : 1.0),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.memory(
                                  state.media[index].thumbnail,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              if (state.media[index]
                                  .getOrCrash()
                                  .type == AssetType.video) const Positioned(
                                bottom: 0.0,
                                right: 0.0,
                                  child: Icon(Icons.videocam))
                              else Container(),
                              if (state.media[index].selected)
                                Material(
                                  color: Theme
                                      .of(context)
                                      .buttonColor
                                      .withOpacity(0.5),
                                  child: Center(
                                    child: Icon(
                                      Icons.check_circle,
                                      color: Theme
                                          .of(context)
                                          .accentIconTheme
                                          .color,
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
