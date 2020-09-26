import 'package:flutter/material.dart';
import 'package:projectcircles/domain/circle/user.dart';

class DiscoveredCircleIcon extends StatelessWidget {
  final User user;

  const DiscoveredCircleIcon({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {}, // TODO: Add event to join circle
          child: CircleAvatar(
            radius: 24.0,
            child: Icon(Icons.person),
          ),
        ),
        Text(user.name.getOrCrash())
      ],
    );
  }
}
