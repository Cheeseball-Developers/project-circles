import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';

class MembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
      builder: (context, state) => state.maybeMap(
        hasJoined: (state) {
          final List<User> members = List<User>.from(state.members.keys);
          return LargePopUp(
            child: state.members.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.people,
                            color: Theme.of(context)
                                .iconTheme
                                .color
                                .withOpacity(0.25),
                            size: 64.0),
                        const Text('There are no members in your circle'),
                      ],
                    ),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Members',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.members.length,
                        itemBuilder: (context, index) => ListTile(
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(members[index].name.getOrCrash()),
                          subtitle: Text(
                            members[index].uid.getOrCrash(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: Colors.black87),
                          ),
                          trailing: BlocBuilder<SettingsBloc, SettingsState>(
                              builder: (settingsContext, settingsState) =>
                                  settingsState.maybeMap(
                                      hasLoaded: (settingsState) {
                                        if (settingsState.user.uid
                                                .getOrCrash() ==
                                            state.host.uid.getOrCrash()) {
                                          if (state.members[members[index]]) {
                                            return Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                IconButton(
                                                  onPressed: () => context
                                                      .bloc<CurrentCircleBloc>()
                                                      .add(
                                                        CurrentCircleEvent
                                                            .acceptOrReject(
                                                                requestingUser:
                                                                    members[
                                                                        index],
                                                                acceptConnection:
                                                                    false),
                                                      ),
                                                  icon: const Icon(
                                                    Icons.clear,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () => context
                                                      .bloc<CurrentCircleBloc>()
                                                      .add(
                                                        CurrentCircleEvent
                                                            .acceptOrReject(
                                                                requestingUser:
                                                                    members[
                                                                        index],
                                                                acceptConnection:
                                                                    true),
                                                      ),
                                                  icon: const Icon(
                                                    Icons.done,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            );
                                          } else {
                                            return IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.remove,
                                                color: Colors.red,
                                              ),
                                            ); //TODO: Add function to remove user
                                          }
                                        } else {
                                          return Container();
                                        }
                                      },
                                      orElse: () => const Text("Error"))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyTextButton(
                              type: ButtonType.primary,
                              text: 'Done',
                              onTap: () => ExtendedNavigator.of(context).pop(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
          );
        },
        orElse: () => Container(),
      ),
    );
  }
}
