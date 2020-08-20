import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: const [
          ListTile(
              leading: Icon(Icons.save_alt),
              title: Text('Default Save Location'),
              subtitle: Text('Documents/circles'),
              onTap: null),
          ListTile(
              leading: Icon(Icons.remove_circle_outline),
              title: Text('Remove Ads'),
              subtitle: Text('\$1'),
              onTap: null),
          ListTile(
              leading: Icon(Icons.info),
              title: Text('About the app'),
              subtitle: Text('Documents/circles'),
              onTap: null),
        ],
      ),
    );
  }
}
