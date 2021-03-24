import 'package:flutter/material.dart';

class ButtonTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool toggleValue;
  final ButtonTileType type;
  final VoidCallback onTap;

  const ButtonTile(
      {Key key,
      @required this.icon,
      @required this.title,
      this.subtitle,
      this.toggleValue = true,
      @required this.type,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          borderRadius: BorderRadius.circular(16.0),
          color: type == ButtonTileType.tapToOpen
              ? Theme.of(context).buttonColor
              : toggleValue
                  ? Theme.of(context).buttonColor
                  : Theme.of(context).cardColor,
          elevation: type == ButtonTileType.tapToOpen
              ? 2.0
              : toggleValue
                  ? 2.0
                  : 8.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    icon,
                    size: 40.0,
                    color: type == ButtonTileType.tapToOpen
                        ? theme.cardColor
                        : toggleValue
                            ? theme.cardColor
                            : theme.buttonColor,
                  ),
                ),
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: type == ButtonTileType.tapToOpen
                      ? theme.accentTextTheme.subtitle1.copyWith(fontWeight: FontWeight.w200)
                      : toggleValue
                          ? theme.accentTextTheme.subtitle1.copyWith(fontWeight: FontWeight.w200)
                          : theme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.w200),
                ),
                if (subtitle != null) Text(
                  subtitle,
                  textAlign: TextAlign.start,
                  style: type == ButtonTileType.tapToOpen
                      ? theme.accentTextTheme.caption
                      : toggleValue
                          ? theme.accentTextTheme.caption
                          : theme.textTheme.caption,
                ) else Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum ButtonTileType { toggle, tapToOpen }
