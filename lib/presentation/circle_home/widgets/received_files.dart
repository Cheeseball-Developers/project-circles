import 'package:flutter/material.dart';

class ReceivedFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Received Files'),
        ListView(
          children: [
            Text('1'),
            Text('2'),
          ],
        )
      ],
    );
  }
}
