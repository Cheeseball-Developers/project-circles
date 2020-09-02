import 'package:flutter/material.dart';

class ReceivedFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Received Files'),
        ListView(
          shrinkWrap: true,
          children: [
            Text('1'),
            Text('2'),
          ],
        )
      ],
    );
  }
}
