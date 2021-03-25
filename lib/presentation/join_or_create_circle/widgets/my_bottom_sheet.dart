import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/circle/search/search_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/presentation/settings/settings.dart';

class MyBottomSheet extends StatefulWidget {
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 120.0 / MediaQuery.of(context).size.height,
        minChildSize: 120.0 / MediaQuery.of(context).size.height,
        maxChildSize: 643.0 / MediaQuery.of(context).size.height > 1.0
            ? 1.0
            : 643.0 / MediaQuery.of(context).size.height,
        builder: (context, controller) => SingleChildScrollView(
          controller: controller,
          child: Material(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            color: Theme.of(context).cardColor,
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 4.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).textTheme.caption!.color,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  context.read<SettingsBloc>().state.maybeMap(
                      hasLoaded: (state) => Padding(
                            padding: const EdgeInsets.only(
                              top: 16.0,
                              bottom: 4.0,
                              left: 16.0,
                              right: 16.0,
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Theme.of(context).buttonColor,
                              child: BlocBuilder<SearchBloc, SearchState>(
                                builder: (context, searchState) => InkWell(
                                  borderRadius: BorderRadius.circular(16.0),
                                  onTap: () {
                                    if (searchState.isSearching) {
                                      context.read<SearchBloc>().add(
                                          const SearchEvent.stopSearching());
                                    }
                                    context.read<CurrentCircleBloc>().add(
                                          CurrentCircleEvent.startCircle(
                                            host: state.user,
                                          ),
                                        );
                                    ExtendedNavigator.named('nav')!
                                        .push('/circle-home');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Start ',
                                          style: Theme.of(context)
                                              .accentTextTheme
                                              .subtitle1,
                                        ),
                                        Flexible(
                                          child: Text(
                                            state.user.name.getOrCrash(),
                                            style: Theme.of(context)
                                                .accentTextTheme
                                                .subtitle1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text(
                                          "'s Circle",
                                          style: Theme.of(context)
                                              .accentTextTheme
                                              .subtitle1,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      orElse: () => const Text('Error')),
                  const Text('Settings ↓'),
                  Settings(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
