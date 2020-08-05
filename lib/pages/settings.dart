import 'package:flutter/material.dart';
import 'package:projectcircles/widgets/my_list_tile.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          MyListTile(
              icon: Icons.save_alt,
              title: 'Default Save Location',
              subtitle: 'Documents/circles',
              onTap: null),
          MyListTile(
              icon: Icons.remove_circle_outline,
              title: 'Remove Ads',
              subtitle: '\$1',
              onTap: null),
          MyListTile(
              icon: Icons.info,
              title: 'About the app',
              subtitle: 'Documents/circles',
              onTap: null),
        ],
      ),
    );
  }
}
