import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:projectcircles/domain/files/value_objects.dart';

class AppIconWithName extends StatelessWidget {
  final AppObject app;

  const AppIconWithName({Key key, @required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Material(
          borderRadius: BorderRadius.circular(5.0),
          color: app.isSelected ? Colors.teal : Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Image.memory(app
                    .getOrCrash()
                    .icon, width: MediaQuery
                    .of(context)
                    .size
                    .width / 10,),
                Text(app
                    .getOrCrash()
                    .appName, textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
