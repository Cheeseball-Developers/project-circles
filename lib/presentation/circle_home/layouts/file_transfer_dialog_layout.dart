import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/file_info.dart';

class FileTransferDialogLayout extends StatelessWidget {
  final String title;
  final Map<FileInfo, double> files;

  const FileTransferDialogLayout({
    @required this.title,
    @required this.files,
  }) : assert(title!=null), assert(files!=null);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
