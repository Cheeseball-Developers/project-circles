import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FilesList extends StatelessWidget {
  final List<FileInfo> files;

  const FilesList(this.files);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: files.length,
      itemBuilder: (context, index) => MyListTile(
        title: files[index].name,
        leading: Image.memory(
          files[index].thumbnail,
          height: 32.0,
          width: 32.0,
        ),
        trailing: Container(),
      ),
    );
  }
}
