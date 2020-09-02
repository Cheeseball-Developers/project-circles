import 'package:flutter/material.dart';

class SendFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.0, 200.0),
          child: TabBar(
            tabs: [
              Tab(text: 'Apps'),
              Tab(text: 'Photos'),
              Tab(text: 'Videos'),
              Tab(text: 'Files'),
            ],
          ),
        ),
        body: TabBarView(children: [
          Text('Apps'),
          Text('Photos'),
          Text('Videos'),
          Text('Files')
        ]),
      ),
    );
  }
}
