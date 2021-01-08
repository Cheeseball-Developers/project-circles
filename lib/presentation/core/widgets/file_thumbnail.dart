import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mime_type/mime_type.dart';
import 'package:path/path.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class FileThumbnail extends StatelessWidget {
  final FileSystemEntity file;

  const FileThumbnail({
    Key key,
    @required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final File f = File(file.path);
    final String _extension = extension(f.path).toLowerCase();
    final String mimeType = mime(basename(file.path).toLowerCase());
    final String type = mimeType == null ? "" : mimeType.split("/")[0];
    if (_extension == ".apk") {
      return const Icon(
        Icons.android,
        color: Colors.green,
        size: 48.0,
      );
    } else if (_extension == ".crdownload") {
      return const FaIcon(
        FontAwesomeIcons.fileDownload,
        size: 48.0,
      );
    } else if (_extension == ".zip" || _extension.contains("tar")) {
      return const FaIcon(
        FontAwesomeIcons.fileArchive,
        size: 48.0,
      );
    } else if (_extension == ".epub" ||
        _extension == ".pdf" ||
        _extension == ".mobi") {
      return const FaIcon(
        FontAwesomeIcons.filePdf,
        size: 48.0,
      );
    } else {
      switch (type) {
        case "image":
          {
            return Image.file(
              File(file.path),
              height: 48,
              width: 48,
            );
          }
          break;

        case "video":
          {
            return FutureBuilder(
              future: VideoThumbnail.thumbnailData(
                  video: file.path,
                  maxWidth: 32,
                  maxHeight: 32,
                  imageFormat: ImageFormat.JPEG,
                  quality: 60),
              builder: (context, snapshot) =>
                  snapshot.connectionState == ConnectionState.done
                      ? SizedBox(
                          height: 48,
                          width: 48,
                          child: Image.memory(snapshot.data as Uint8List),
                        )
                      : CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                              Theme.of(context).indicatorColor),
                        ),
            );
          }
          break;

        case "audio":
          {
            return const FaIcon(
              FontAwesomeIcons.fileAudio,
              size: 48.0,
            );
          }
          break;

        case "text":
          {
            return const FaIcon(
              FontAwesomeIcons.fileWord,
              size: 48.0,
            );
          }
          break;

        default:
          {
            return const FaIcon(
              FontAwesomeIcons.file,
            );
          }
          break;
      }
    }
  }
}
