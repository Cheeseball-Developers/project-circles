import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart';

class ConnectionRequestPopUp extends StatelessWidget {
  final User user;

  const ConnectionRequestPopUp(this.user);

  Widget _body(
    BuildContext context, {
    String topText = '',
    String bigBottomText = '',
    String smallBottomText = '',
    String buttonText = '',
    VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(topText),
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
          bigBottomText,
          style: theme.textTheme.subtitle1,
        ),
        Text(
          smallBottomText,
          style: theme.textTheme.caption,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            buttonText,
            style: theme.textTheme.button,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      dialogType: DialogType.empty,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
          builder: (circleContext, state) =>
              BlocConsumer<SearchBloc, SearchState>(
            listener: (context, state) {
              state.connectionFailureOrSuccessOption.fold(
                () => null,
                (failureOrSuccess) => failureOrSuccess.fold(
                  (l) => null,
                  (_) {
                    circleContext.bloc<CurrentCircleBloc>().add(
                          CurrentCircleEvent.joinCircle(host: user),
                        );
                    ExtendedNavigator.of(context).popAndPush(Routes.circleHome);
                  },
                ),
              );
            },
            builder: (context, state) =>
                state.connectionFailureOrRequestSent.fold(
              () => _body(
                context,
                topText: 'Sending Request...',
                bigBottomText: user.name.getOrCrash(),
                smallBottomText: user.uid.getOrCrash(),
                buttonText: 'Cancel',
                onTap: () {
                  context.bloc<SearchBloc>().add(
                        SearchEvent.endConnectionRequest(
                            cancelRequestUser: user),
                      );
                  ExtendedNavigator.of(context).pop();
                },
              ),
              (failureOrRequestSent) => failureOrRequestSent.fold(
                (f) => _body(
                  context,
                  topText: 'Device Lost',
                  bigBottomText: user.name.getOrCrash(),
                  smallBottomText: user.uid.getOrCrash(),
                  buttonText: 'Close',
                  onTap: () {
                    context.bloc<SearchBloc>().add(
                          SearchEvent.endConnectionRequest(
                              cancelRequestUser: user),
                        );
                    ExtendedNavigator.of(context).pop();
                  },
                ),
                (_) => state.connectionFailureOrSuccessOption.fold(
                  () => _body(
                    context,
                    topText: 'Waiting Approval...',
                    bigBottomText: user.name.getOrCrash(),
                    smallBottomText: user.uid.getOrCrash(),
                    buttonText: 'Cancel',
                    onTap: () {
                      context.bloc<SearchBloc>().add(
                            SearchEvent.endConnectionRequest(
                                cancelRequestUser: user),
                          );
                      ExtendedNavigator.of(context).pop();
                    },
                  ),
                  (connectionFailureOrSuccess) =>
                      connectionFailureOrSuccess.fold(
                    (failure) => _body(
                      context,
                      topText: 'Failed to Connect!',
                      bigBottomText: failure.map(
                        cancelledByUser: (_) => 'Request Denied',
                        timedOut: (_) => 'Request Timed Out',
                        unexpected: (_) => 'Unexpected Failure',
                        endPointUnknown: (_) => 'Device Lost',
                      ),
                      buttonText: 'Close',
                      onTap: () {
                        context.bloc<SearchBloc>().add(
                              SearchEvent.endConnectionRequest(
                                  cancelRequestUser: user),
                            );
                        ExtendedNavigator.of(context).pop();
                      },
                    ),
                    (_) => const Center(
                      child: Text('Initializing...'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
