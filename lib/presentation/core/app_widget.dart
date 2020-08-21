import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/theme.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart' as router;

class AppWidget extends StatelessWidget {
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