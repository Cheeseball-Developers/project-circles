import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/value_objects.dart';

class MediaThumbnail extends StatelessWidget {
  final MediaObject mediaObject;

  const MediaThumbnail({Key key, @required this.mediaObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mediaObject.getOrCrash().thumbDataWithSize(200, 200),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: EdgeInsets.all(mediaObject.selected?4.0:1.0),
              child: Stack(
                children: [
                  Image.memory(
                    snapshot.data as Uint8List,
                    fit: BoxFit.cover,
                  ),
                  if (!mediaObject.selected) Material(
                    color: Theme.of(context).accentColor.withOpacity(0.5),
                    child: Center(
                      child: Icon(Icons.check_circle, color: Theme.of(context).accentIconTheme.color,),
                    ),
                  ) else Container()
                ],
              ),
            );
          } else {
            return Container();
          }
        });
  }
}
