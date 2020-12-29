import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FileTransferList extends StatelessWidget {
  final Map<FileInfo, double> files;

  const FileTransferList(this.files);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: files.length,
      itemBuilder: (context, index) => MyListTile(
        progress: files.values.elementAt(index),
        title: files.keys.elementAt(index).name,
        leading: Image.memory(
          files.keys.elementAt(index).thumbnail,
          height: 32.0,
          width: 32.0,
        ),
        trailing: Text("${(files.values.elementAt(index) * 100).toString()}%"),
      ),
    );
  }
}
