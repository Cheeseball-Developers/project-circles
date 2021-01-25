import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/transfer_progress_info.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class TransferProgressInfoList extends StatelessWidget {
  final TransferProgressInfo transferProgressInfo;

  const TransferProgressInfoList({@required this.transferProgressInfo});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(transferProgressInfo.user.name.getOrCrash()),
      children: [
        ListView.builder(
          shrinkWrap: true,
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
  }
}
