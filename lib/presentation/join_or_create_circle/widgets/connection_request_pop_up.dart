import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart';

class ConnectionRequestPopUp extends StatelessWidget {
  final User user;

  const ConnectionRequestPopUp(this.user);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LargePopUp(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) {
            state.connectionFailureOrSuccessOption.fold(
              () => null,
              (failureOrSuccess) => failureOrSuccess.fold(
                (l) => null,
                (_) {
                  getIt<CurrentCircleBloc>()
                      .add(CurrentCircleEvent.joinCircle(host: user));
                  ExtendedNavigator.of(context).push(Routes.circleHome);
                },
              ),
            );
          },
          builder: (context, state) =>
              state.connectionFailureOrSuccessOption.fold(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Connecting to...'),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 48.0,
                    child: Icon(
                      Icons.person,
                      size: 48.0,
                    ),
                  ),
                ),
                Text(
                  user.name.getOrCrash(),
                  style: theme.textTheme.subtitle1,
                ),
                Text(
                  user.uid.getOrCrash(),
                  style: theme.textTheme.caption,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                ),
                GestureDetector(
                  onTap: () {
                    context.bloc<SearchBloc>().add(
                          SearchEvent.endConnectionRequest(
                              cancelRequestUser: user),
                        );
                    ExtendedNavigator.of(context).pop();
                  },
                  child: Text(
                    'Cancel',
                    style: theme.textTheme.button,
                  ),
                ),
              ],
            ),
            (connectionFailureOrSuccess) => connectionFailureOrSuccess.fold(
              (failure) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Failed to Connect!'),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 48.0,
                      child: Icon(
                        Icons.person,
                        size: 48.0,
                      ),
                    ),
                  ),
                  Text(
                    failure.map(
                      cancelledByUser: (_) => 'Request Denied',
                      timedOut: (_) => 'Request Timed Out',
                      unexpected: (_) => 'Unexpected Failure',
                      endPointUnknown: (_) => 'Device Lost',
                    ),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.red),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.bloc<SearchBloc>().add(
                            SearchEvent.endConnectionRequest(
                                cancelRequestUser: user),
                          );
                      ExtendedNavigator.of(context).pop();
                    },
                    child: Text(
                      'Close',
                      style: theme.textTheme.button,
                    ),
                  ),
                ],
              ),
              (_) => const Center(
                child: Text('Initializing...'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
