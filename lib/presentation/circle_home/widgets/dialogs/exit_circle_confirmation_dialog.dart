import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/presentation/core/widgets/dialogs/confirmation_dialog.dart';

class ExitCircleConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CurrentCircleBloc, CurrentCircleState>(
      listener: (context, state) {},
      builder: (context, state) => state.maybeMap(
        hasStarted: (state) => ConfirmationDialog(
          title: 'Close Circle',
          subtitle: 'Are you sure you want to close the circle?',
          noText: 'Cancel',
          yesText: 'Close Circle',
          noTap: () => ExtendedNavigator.of(context).pop(),
          yesTap: () => context.bloc<CurrentCircleBloc>().add(
                const CurrentCircleEvent.closeCircle(),
              ),
        ),
        hasJoined: (state) => ConfirmationDialog(
          title: 'Disconnect',
          subtitle: 'Are you sure you want to disconnect from the circle?',
          noText: 'Cancel',
          yesText: 'Disconnect',
          noTap: () => ExtendedNavigator.of(context).pop(),
          yesTap: () => context
              .bloc<CurrentCircleBloc>()
              .add(const CurrentCircleEvent.leaveCircle()),
        ),
        orElse: () => Container(),
      ), // TODO: Implement UI for other states
    );
  }
}
