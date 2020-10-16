import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';
import 'package:video_player/video_player.dart';

class MediaPreview extends StatelessWidget {
  final FileInfo mediaFileInfo;

  const MediaPreview({Key key, @required this.mediaFileInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LargePopUp(
      child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  mediaFileInfo.path,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              /*FutureBuilder(
                  future: mediaObject.getOrCrash().thumbDataWithSize(
                      (MediaQuery.of(context).size.width * 0.75).toInt(),
                      (MediaQuery.of(context).size.width * 0.75).toInt()),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (true) {
                        return Image.memory(snapshot.data as Uint8List);
                      } else { // TODO: Find out media type
                        return Container(); /*FutureBuilder(
                            future: mediaObject.getOrCrash().file,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                final File videoFile = snapshot.data as File;
                                final videoPlayerController =
                                    VideoPlayerController.file(
                                        videoFile)
                                      ..initialize();
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
                            });*/
                      }
                    }
                    return Container();
                  }),*/ // TODO: get thumbnail and display
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyTextButton(
                        type: ButtonType.primary,
                        text: 'Back',
                        onTap: () => ExtendedNavigator.of(context).pop(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
    );
  }
}
