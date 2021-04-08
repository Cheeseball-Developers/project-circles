import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/circle/search/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (context, state) {
        state.connectionFailureOrSuccessOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (f) {},
            (_) {
              context.read<CurrentCircleBloc>().add(
                    CurrentCircleEvent.joinCircle(host: user),
                  );
              ExtendedNavigator.of(context)!.popAndPush(Routes.circleHomeRoute);
            },
          ),
        );
      },
      builder: (context, state) => DialogLayout(
        dialogType: state.connectionFailureOrRequestSent.fold(
          () => DialogType.empty,
          (_) => state.connectionFailureOrSuccessOption.fold(
            () => DialogType.withButtons,
            (_) => DialogType.empty,
          ),
        ),
        dialogButtonType: state.connectionFailureOrRequestSent.fold(
          () => null,
          (_) => state.connectionFailureOrSuccessOption.fold(
            () => DialogButtonType.center,
            (_) => null,
          ),
        ),
        primaryButtonText: state.connectionFailureOrRequestSent.fold(
          () => null,
          (_) => state.connectionFailureOrSuccessOption.fold(
            () => state.isCancelling ? 'Cancelling...' : 'Cancel',
            (_) => null,
          ),
        ),
        primaryOnTap: state.connectionFailureOrRequestSent.fold(
          () => null,
          (_) => state.connectionFailureOrSuccessOption.fold(
            () => state.isCancelling
                ? () {}
                : () {
                    context.read<SearchBloc>().add(
                          SearchEvent.endConnectionRequest(
                              cancelRequestUser: user),
                        );
                    ExtendedNavigator.of(context)!.pop();
                  },
            (_) => null,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: state.connectionFailureOrRequestSent.fold(
            () => _body(
              context,
              topText: 'Sending Request...',
              bigBottomText: user.name.getOrCrash(),
              smallBottomText: user.uid.getOrCrash(),
            ),
            (failureOrRequestSent) => failureOrRequestSent.fold(
              (f) => _body(
                context,
                topText: 'Device Lost',
                bigBottomText: user.name.getOrCrash(),
                smallBottomText: user.uid.getOrCrash(),
              ),
              (_) => state.connectionFailureOrSuccessOption.fold(
                () => _body(
                  context,
                  topText: 'Awaiting Approval...',
                  bigBottomText: user.name.getOrCrash(),
                  smallBottomText: user.uid.getOrCrash(),
                ),
                (connectionFailureOrSuccess) => connectionFailureOrSuccess.fold(
                  (failure) => _body(
                    context,
                    topText: 'Failed to Connect!',
                    bigBottomText: failure.map(
                      cancelledByUser: (_) => 'Request Denied',
                      timedOut: (_) => 'Request Timed Out',
                      unexpected: (_) => 'Unexpected Failure',
                      endPointUnknown: (_) => 'Device Lost',
                    ),
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
    );
  }
}
