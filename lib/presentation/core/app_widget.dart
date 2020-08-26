import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/join_or_create_circle_bloc.dart';
import 'package:projectcircles/presentation/core/theme.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart' as router;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<JoinOrCreateCircleBloc>())
      ],
      child: MaterialApp(
        title: 'Circles',
        theme: defaultTheme(),
        initialRoute: router.Routes.joinOrCreateCircle,
        onGenerateRoute: router.Router(),
      ),
    );
  }
}
