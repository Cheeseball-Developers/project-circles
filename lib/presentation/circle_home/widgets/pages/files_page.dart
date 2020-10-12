import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';

class FilesPage extends StatelessWidget {
  final List<String> filesUrls = ['Documents/we.mp4', 'Downloads/a.png'];

  @override
  Widget build(BuildContext context) {
    return LargePopUp(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Received Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: filesUrls.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.image),
              title: Text(File(filesUrls[index]).path),
              trailing: IconButton(
                onPressed: () {}, //TODO: Add function to delete file
                icon: const Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyTextButton(
                  type: ButtonType.primary,
                  text: 'Done',
                  onTap: () => ExtendedNavigator.of(context).pop(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
