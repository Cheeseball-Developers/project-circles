import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/available_circles_overlay.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/search_button.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart';
import 'package:projectcircles/presentation/settings/settings.dart';

class JoinOrCreateCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SearchBloc>()..add(const SearchEvent.startSearching()),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Material(
            color: Colors.transparent,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [SearchButton(), AvailableCirclesOverlay()],
            ),
          ),
        ),
        bottomSheet: DraggableScrollableSheet(
          expand: false,
          initialChildSize: 120.0 / MediaQuery.of(context).size.height,
          minChildSize: 120.0 / MediaQuery.of(context).size.height,
          maxChildSize: 750.0 / MediaQuery.of(context).size.height,
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
                          color: Theme.of(context).textTheme.caption.color,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    context.bloc<SettingsBloc>().state.maybeMap(
                        hasLoaded: (state) => Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Theme.of(context).buttonColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Start ',
                                        style: Theme.of(context)
                                            .accentTextTheme
                                            .subtitle1,
                                      ),
                                      Flexible(
                                        child: Text(
                                          'gheoirghergoidngdslknfwoifkewlncoeikfnlmsdfoiewkljcsmogeisklvn',
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
                        orElse: () => const Text('Error')),
                    Text('Settings ↓'),
                    Settings()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
