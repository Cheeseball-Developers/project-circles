import 'package:flutter/material.dart';

class NoTransactionsPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.insert_drive_file,
              color: Theme.of(context).iconTheme.color.withOpacity(0.25),
              size: 64.0),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
          ),
          const Text('No files have been shared', textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
