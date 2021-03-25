import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/theme.dart';
import 'package:projectcircles/presentation/routes/router.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<CurrentCircleBloc>()),
        BlocProvider(
            create: (context) =>
                getIt<SettingsBloc>()..add(const SettingsEvent.loadPrefs()))
      ],
      child: BlocConsumer<SettingsBloc, SettingsState>(
        listenWhen: (stateA, stateB) => stateA.runtimeType != stateB.runtimeType,
        listener: (context, state) => state.maybeMap(
            hasLoaded: (state) => ExtendedNavigator.named('nav')!
                .replace(Routes.joinOrCreateCircleRoute),
            orElse: () => null),
        builder: (context, state) => MaterialApp(
          builder: ExtendedNavigator(
            name: 'nav',
            router: Router(),
            initialRoute: Routes.splashRoute,
          ),
          title: 'Circles',
          theme: state.maybeMap(
              hasLoaded: (state) =>
                  state.darkMode ? darkTheme() : defaultTheme(),
              orElse: () => defaultTheme()),
        ),
      ),
    );
  }
}
