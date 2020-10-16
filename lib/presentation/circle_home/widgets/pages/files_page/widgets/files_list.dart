import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FilesList extends StatelessWidget {
  final Map<FileInfo, double> files;

  const FilesList(this.files);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: files.length,
      itemBuilder: (context, index) => MyListTile(
        leading: const Icon(Icons.image),
        title: files.keys.toList()[index].path,
        subtitle: '${files.values.toList()[index]*100}%',
        trailing: IconButton(
          onPressed: () {}, //TODO: Add function to cancel transmission
          icon: const Icon(
            Icons.cancel,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
