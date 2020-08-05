import 'package:flutter/material.dart';
import 'package:projectcircles/pages/group_home.dart';
import 'package:projectcircles/pages/join_create_group.dart';
import 'package:projectcircles/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: defaultTheme(),
      home: GroupHome(),
    );
  }
}
