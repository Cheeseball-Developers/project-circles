import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/file_transaction.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FilesTransactionList extends StatelessWidget {
  final List<FileTransaction> transactions;

  const FilesTransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (context, index) => MyListTile(
        leading: const Icon(Icons.image),
        title: 
          transactions[index].fileName,
        subtitle: transactions[index].dateTime.toString(),
        trailing: IconButton(
          onPressed: () {}, //TODO: Add function to cancel transmission
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}