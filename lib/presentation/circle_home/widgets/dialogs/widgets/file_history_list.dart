import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FileHistoryList extends StatelessWidget {
  final List<FileInfo> files;
  final bool showOpen;

  const FileHistoryList({@required this.files, @required this.showOpen});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: files.length,
      itemBuilder: (context, index) => MyListTile(
        title: files.elementAt(index).name,
        leading: Image.memory(
          files.elementAt(index).thumbnail,
          height: 32.0,
          width: 32.0,
        ),
        trailing: showOpen ? MyTextButton(
          type: ButtonType.secondary,
          text: "Open",
          onTap: () {
            OpenFile.open(files.elementAt(index).path);
          },
        ) : Container(),
      ),
    );
  }
}
