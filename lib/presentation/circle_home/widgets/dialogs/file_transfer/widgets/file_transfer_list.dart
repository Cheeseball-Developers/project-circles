import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/transfer_progress_info.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FileTransferList extends StatelessWidget {
  final List<TransferProgressInfo> transferProgressInfos;

  const FileTransferList(this.transferProgressInfos);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transferProgressInfos.length,
      itemBuilder: (context, index) {
        final TransferProgressInfo transferProgressInfo =
            transferProgressInfos[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(transferProgressInfo.endId),
            ListView.builder(
              shrinkWrap: true,
              itemCount: transferProgressInfo.filesMap.length,
              itemBuilder: (context, index) => MyListTile(
                progress: transferProgressInfo.filesMap.values.elementAt(index),
                title: transferProgressInfo.filesMap.keys.elementAt(index).name,
                leading: Image.memory(
                  transferProgressInfo.filesMap.keys.elementAt(index).thumbnail,
                  height: 32.0,
                  width: 32.0,
                ),
                trailing: Text(
                    "${(transferProgressInfo.filesMap.values.elementAt(index) * 100).toStringAsFixed(1)}%"),
              ),
            ),
          ],
        );
      },
    );
  }
}
