import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final bool toggleValue;
  final ListTileType type;
  final VoidCallback onTap;

  const MyListTile(
      {Key key,
        @required this.leading,
        @required this.title,
        this.subtitle,
        this.toggleValue = true,
        @required this.type,
        this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0.0,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children: [
            leading,
            const Padding(padding: EdgeInsets.only(right: 16.0)),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.subtitle1),
                    if (subtitle != null) Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Text(subtitle, style: Theme.of(context).textTheme.bodyText2),
                    )
                  ]),
            ),
            if (type == ListTileType.toggle)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                    toggleValue
                        ? Icons.check_circle
                        : Icons.remove_circle_rounded,
                    color: toggleValue ? Colors.lightGreen : Colors.redAccent),
              )
          ]),
        ),
      ),
    );
  }
}

enum ListTileType { toggle, tapToOpen }
