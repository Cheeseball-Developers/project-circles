import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

class AppIconWithName extends StatelessWidget {
  final ApplicationWithIcon app;

  const AppIconWithName({Key key, @required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.memory(app.icon, width: MediaQuery.of(context).size.width/10,),
        Text(app.appName, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,)
      ],
    );
  }
}
