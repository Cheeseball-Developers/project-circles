import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/file_transfer_type.dart';
import 'package:projectcircles/domain/files/transfer_progress_info.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class TransferProgressInfoList extends StatelessWidget {
  final TransferProgressInfo transferProgressInfo;
  final FileTransferType transferType;

  const TransferProgressInfoList(
      {required this.transferProgressInfo, required this.transferType});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        transferProgressInfo.user.name.getOrCrash() +
            (transferType == const FileTransferType.incoming()
                ? ''
                : transferProgressInfo.acceptOrRejectOption.fold(
                    () => ' (Awaiting Approval)',
                    (acceptOrReject) =>
                        acceptOrReject ? '' : ' (Request Denied)',
                  )),
      ),
      children: [
        if (transferType == const FileTransferType.incoming()) ListView.builder(
          shrinkWrap: true,
          itemCount: transferProgressInfo.filesMap.length,
          itemBuilder: (context, index) => MyListTile(
            progress:
            transferProgressInfo.filesMap.values.elementAt(index),
            title: transferProgressInfo.filesMap.keys
                .elementAt(index)
                .name,
            leading: Image.memory(
              transferProgressInfo.filesMap.keys
                  .elementAt(index)
                  .thumbnail,
              height: 32.0,
              width: 32.0,
            ),
            trailing: Text(
                "${(transferProgressInfo.filesMap.values.elementAt(index) * 100).toStringAsFixed(1)}%"),
          ),
        ) else transferProgressInfo.acceptOrRejectOption.fold(
          () => Container(),
          (acceptOrReject) => acceptOrReject
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: transferProgressInfo.filesMap.length,
                  itemBuilder: (context, index) => MyListTile(
                    progress:
                        transferProgressInfo.filesMap.values.elementAt(index),
                    title: transferProgressInfo.filesMap.keys
                        .elementAt(index)
                        .name,
                    leading: Image.memory(
                      transferProgressInfo.filesMap.keys
                          .elementAt(index)
                          .thumbnail,
                      height: 32.0,
                      width: 32.0,
                    ),
                    trailing: Text(
                        "${(transferProgressInfo.filesMap.values.elementAt(index) * 100).toStringAsFixed(1)}%"),
                  ),
                )
              : Container(),
        )
      ],
    );
  }
}
