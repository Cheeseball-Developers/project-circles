import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/available_circles_overlay.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/search_button.dart';

class JoinOrCreateCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SearchBloc>()..add(const SearchEvent.startSearching()),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () => ExtendedNavigator.named('nav').push('/Settings'),
              icon: const Icon(Icons.settings),
            )
          ],
        ),
        body: Center(
          child: Material(
            color: Colors.transparent,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [SearchButton(), AvailableCirclesOverlay()],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Create Circle',
                      style: Theme.of(context).textTheme.headline6),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            context.bloc<SettingsBloc>().state.maybeMap(
                                hasLoaded: (state) =>
                                    "${state.user.name.getOrCrash()}'s Circle",
                                orElse: () => "Error"),
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ),
                      BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
                        builder: (context, state) => state.map(
                          initial: (state) => Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).buttonColor,
                            child: InkWell(
                              onTap: () {
                                context.bloc<CurrentCircleBloc>().add(
                                    CurrentCircleEvent.startCircle(
                                        host: context
                                            .bloc<SettingsBloc>()
                                            .state
                                            .map(
                                                initial: (_) => null,
                                                isLoading: (_) => null,
                                                hasLoaded: (state) =>
                                                    state.user.toString(),
                                                hasFailed: (_) => null)));
                                ExtendedNavigator.named('nav')
                                    .push('/circle-home');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.done,
                                  color:
                                      Theme.of(context).accentIconTheme.color,
                                ),
                              ),
                            ),
                          ),
                          isStarting: (_) => Container(),
                          isJoining: (_) => Container(),
                          hasJoined: (_) => Container(),
                          hasFailed: (_) => Container(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
