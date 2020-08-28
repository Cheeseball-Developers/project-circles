import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const SettingsSection({Key key, @required this.title, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.subtitle2,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(shrinkWrap: true, children: items),
          )
        ],
      ),
    );
  }
}
