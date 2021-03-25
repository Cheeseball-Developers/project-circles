import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final Widget leading;
  final Widget? trailing;
  final String title;
  final String? subtitle;
  final double progress;
  final bool toggleValue;
  final VoidCallback? onTap;

  const MyListTile(
      {
      required this.leading,
      required this.title,
      this.subtitle,
      this.progress = 0.0,
      this.toggleValue = true,
      this.onTap,
      this.trailing})
     ;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ShaderMask(
                  shaderCallback: (rect) => LinearGradient(
                      colors: [Theme.of(context).indicatorColor, Theme.of(context).indicatorColor, Colors.transparent, Colors.transparent],
                      stops: [0.0, progress, progress, 1.0]).createShader(rect),
                  child: Opacity(
                    opacity: 0.4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
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
                            child: Text(subtitle!,
                                style: Theme.of(context).textTheme.bodyText2),
                          )
                      ],
                    ),
                  ),
                  trailing!,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
