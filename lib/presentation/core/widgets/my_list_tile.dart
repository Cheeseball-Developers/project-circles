import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final Widget leading;
  final Widget trailing;
  final String title;
  final String subtitle;
  final double progress;
  final bool toggleValue;
  final VoidCallback onTap;

  const MyListTile(
      {Key key,
      @required this.leading,
      @required this.title,
      this.subtitle,
      this.progress = 0.0,
      this.toggleValue = true,
      this.onTap,
      this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: ShaderMask(
                    shaderCallback: (rect) => LinearGradient(
                        colors: [Theme.of(context).accentColor],
                        stops: [0.0, progress]).createShader(rect),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  leading,
                  const Padding(padding: EdgeInsets.only(right: 16.0)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: Theme.of(context).textTheme.subtitle1),
                        if (subtitle != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(subtitle,
                                style: Theme.of(context).textTheme.bodyText2),
                          )
                      ],
                    ),
                  ),
                  trailing,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
