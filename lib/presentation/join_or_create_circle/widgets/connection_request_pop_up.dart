import 'package:flutter/material.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';

class ConnectionRequestPopUp extends StatelessWidget {
  final User user;

  const ConnectionRequestPopUp(this.user);

  @override
  Widget build(BuildContext context) {
    return LargePopUp(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Connecting to...'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 48.0,
                child: Icon(
                  Icons.person,
                  size: 48.0,
                ),
              ),
            ),
            Text(user.name.getOrCrash()),
            Text(user.uid.getOrCrash()),
          ],
        ),
      ),
    );
  }
}
