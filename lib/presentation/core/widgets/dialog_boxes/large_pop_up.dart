import 'package:flutter/material.dart';

class LargePopUp extends StatelessWidget {
  final Widget child;

  const LargePopUp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Material(
            elevation: 8.0,
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16.0),
            child: child),
      ),
    );
  }
}
