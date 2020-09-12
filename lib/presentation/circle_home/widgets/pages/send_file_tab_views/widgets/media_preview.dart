import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/domain/files/value_objects.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:video_player/video_player.dart';

class MediaPreview extends StatelessWidget {
  final MediaObject mediaObject;

  const MediaPreview({Key key, @required this.mediaObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Material(
          elevation: 8.0,
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  mediaObject.getOrCrash().title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              FutureBuilder(
                  future: mediaObject.getOrCrash().thumbDataWithSize(
                      (MediaQuery.of(context).size.width * 0.75).toInt(),
                      (MediaQuery.of(context).size.width * 0.75).toInt()),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (mediaObject.getOrCrash().type == AssetType.image) {
                        return Image.memory(snapshot.data as Uint8List);
                      } else {
                        return FutureBuilder(
                            future: mediaObject.getOrCrash().file,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                final File videoFile = snapshot.data as File;
                                final videoPlayerController =
                                    VideoPlayerController.file(videoFile);
                                final controller = ChewieController(
                                  aspectRatio: mediaObject.getOrCrash().width /
                                      mediaObject.getOrCrash().height,
                                  videoPlayerController: videoPlayerController,
                                );
                                return Chewie(
                                  controller: controller,
                                );
                              }
                              return Container();
                            });
                      }
                    }
                    return Container();
                  }),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyTextButton(
                        type: ButtonType.secondary,
                        text: 'Back',
                        onTap: () => ExtendedNavigator.of(context).pop(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                      ),
                      MyTextButton(
                        type: ButtonType.primary,
                        text: 'Send',
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
