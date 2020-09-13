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
  final List<User> members = [User(name: Name('Hio'), uid: UniqueId())];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
      builder: (context, state) => state.maybeMap(
        hasJoined: (state) => LargePopUp(
          child: members.isEmpty
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
                      itemCount: members.length,
                      itemBuilder: (context, index) => ListTile(
                        leading: const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        title: Text(members[index].name.getOrCrash()),
                        subtitle: Text(
                          members[index].uid.getOrCrash(),
                          style: const TextStyle(color: Colors.black),
                        ),
                        trailing: BlocBuilder<SettingsBloc, SettingsState>(
                            builder: (context, settingsState) =>
                                settingsState.maybeMap(
                                    hasLoaded: (settingsState) => settingsState
                                                .user ==
                                            state.host
                                        ? IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              color: Colors.red,
                                            ),
                                          ) //TODO: Add function to remove user
                                        : Container(),
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
                            text: 'Okay',
                            onTap: () => ExtendedNavigator.of(context).pop(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
