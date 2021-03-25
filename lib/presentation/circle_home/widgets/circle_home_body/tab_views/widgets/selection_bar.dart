import 'package:flutter/material.dart';

class SelectionBar extends StatelessWidget {
  final int count;
  final VoidCallback onCancel;

  const SelectionBar({required this.count, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
        elevation: 8.0,
        toolbarHeight: 40.0,
        backgroundColor: Theme.of(context).cardColor,
        leading: GestureDetector(
          onTap: onCancel,
          child: Icon(
            Icons.clear,
            color: Theme.of(context).iconTheme.color,
            size: 18.0,
          ),
        ),
        title: Text(
          '$count Selected',
          style: Theme.of(context).textTheme.subtitle2,
        ));
  }
}
