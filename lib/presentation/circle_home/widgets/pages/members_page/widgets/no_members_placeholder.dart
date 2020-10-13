import 'package:flutter/material.dart';

class NoMembersPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.people,
              color: Theme.of(context).iconTheme.color.withOpacity(0.25),
              size: 64.0),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
          ),
          const Text('There are no members in your circle'),
        ],
      ),
    );
  }
}
