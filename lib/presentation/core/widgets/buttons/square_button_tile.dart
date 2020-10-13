import 'package:flutter/material.dart';

class SquareButtonTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final bool toggleValue;
  final ButtonTileType type;
  final VoidCallback onTap;

  const SquareButtonTile(
      {Key key,
      @required this.leading,
      @required this.title,
      @required this.subtitle,
      @required this.toggleValue,
      @required this.type,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.blue, width: 2.0)
      ),
      child: Column(
        children: [leading, Text(title, style: Theme.of(context).textTheme.headline6,)],
      ),
    );
  }
}

enum ButtonTileType { toggle, tapToOpen }
