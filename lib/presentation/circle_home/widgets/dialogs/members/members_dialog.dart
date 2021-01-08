import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/widgets/empty_pop_up_placeholder.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class MembersDialog extends StatelessWidget {
  Widget _body(
    BuildContext context, {
    @required String title,
    @required Map<User, bool> users,
    @required bool isHost,
  }) {
    return DialogLayout(
      title: title,
      primaryButtonText: 'Done',
      primaryOnTap: () => ExtendedNavigator.of(context).pop(),
      dialogType: users.isEmpty ? DialogType.empty : DialogType.full,
      dialogButtonType: DialogButtonType.singleButton,
      child: users.isEmpty
          ? const EmptyPopUpPlaceholder(
              icon: Icons.people,
              text: 'No members in your circle',
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(users.keys.elementAt(index).name.getOrCrash()),
                subtitle: Text(
                  users.keys.elementAt(index).uid.getOrCrash(),
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.black87),
                ),
                trailing: isHost
                    ? users[users.keys.elementAt(index)]
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () =>
                                    context.read<CurrentCircleBloc>().add(
                                          CurrentCircleEvent.acceptOrReject(
                                              requestingUser:
                                                  users.keys.elementAt(index),
                                              acceptConnection: false),
                                        ),
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.red,
                                ),
                              ),
                              IconButton(
                                onPressed: () =>
                                    context.read<CurrentCircleBloc>().add(
                                          CurrentCircleEvent.acceptOrReject(
                                              requestingUser:
                                                  users.keys.elementAt(index),
                                              acceptConnection: true),
                                        ),
                                icon: const Icon(
                                  Icons.done,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          )
                        : IconButton(
                            onPressed: () =>
                                context.read<CurrentCircleBloc>().add(
                                      CurrentCircleEvent.removeMember(
                                        member: users.keys.elementAt(index),
                                      ),
                                    ),
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          )
                    : Container(),
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
      builder: (context, state) => state.maybeMap(
        hasStarted: (state) => _body(
          context,
          title: 'Members',
          users: state.members,
          isHost: true,
        ),
        hasJoined: (state) => _body(
          context,
          title: 'Host',
          users: {state.host: false},
          isHost: false,
        ),
        orElse: () => const Text('Error placeholder here'),
      ),
    );
  }
}
