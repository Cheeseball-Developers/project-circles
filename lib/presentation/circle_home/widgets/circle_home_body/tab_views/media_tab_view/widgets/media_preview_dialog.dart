import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/media_info.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';
import 'package:video_player/video_player.dart';

class MediaPreview extends StatelessWidget {
  final MediaInfo mediaInfo;

  const MediaPreview({required this.mediaInfo});

  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      primaryButtonText: 'Back',
      primaryOnTap: () => ExtendedNavigator.of(context)!.pop(),
      title: mediaInfo.entity.title,
      dialogType: DialogType.full,
      dialogButtonType: DialogButtonType.singleButton,
      child: mediaInfo.entity.type == AssetType.image
          ? Image.memory(mediaInfo.thumbnail)
          : FutureBuilder(
              future: mediaInfo.entity.file,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  final File videoFile = snapshot.data! as File;
                  final videoPlayerController =
                      VideoPlayerController.file(videoFile)..initialize();
                  final controller = ChewieController(
                    aspectRatio:
                        mediaInfo.entity.width / mediaInfo.entity.height,
                    videoPlayerController: videoPlayerController,
                  );
                  return Chewie(
                    controller: controller,
                  );
                }
                return Container();
              },
            ),
    );
  }
}
