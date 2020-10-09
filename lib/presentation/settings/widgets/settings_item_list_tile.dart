import 'package:flutter/material.dart';

class SettingsItemListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool toggleValue;
  final SettingsItemType type;
  final VoidCallback onTap;

  const SettingsItemListTile(
      {Key key,
      @required this.icon,
      @required this.title,
      this.subtitle,
      this.toggleValue = true,
      @required this.type,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      elevation: toggleValue ? 12.0 : 1.0,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
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
            if (type == SettingsItemType.toggle)
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

enum SettingsItemType { toggle, tapToOpen }
