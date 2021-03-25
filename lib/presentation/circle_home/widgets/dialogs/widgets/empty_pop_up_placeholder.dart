import 'package:flutter/material.dart';

class EmptyPopUpPlaceholder extends StatelessWidget {
  final IconData icon;
  final String text;

  const EmptyPopUpPlaceholder({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(icon,
              color: Theme.of(context).iconTheme.color!.withOpacity(0.25),
              size: 64.0),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
