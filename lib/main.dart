import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/theme.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circles',
      theme: defaultTheme(),
      initialRoute: router.Routes.joinOrCreateCircle,
      onGenerateRoute: router.Router(),
    );
  }
}
