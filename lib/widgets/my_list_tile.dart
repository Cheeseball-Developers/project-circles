import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const MyListTile({Key key, @required this.icon, @required this.title, this.subtitle = '', this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          borderRadius: BorderRadius.circular(24.0),
          color: Colors.white,
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Icon(icon),
                Column(
                  children: [
                    Text(title),
                    Text(subtitle)
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}
