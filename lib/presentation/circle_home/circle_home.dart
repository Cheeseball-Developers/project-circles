import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/close_circle_confirmation_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/leave_circle_confirmation_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/members_page.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/received_files.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file.dart';

class CircleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CurrentCircleBloc, CurrentCircleState>(
      listener: (context, currentCircleState) {
        currentCircleState.maybeMap(
          initial: (_) {
            ExtendedNavigator.of(context).pop();
            ExtendedNavigator.of(context).pop();
          },
          hasJoined: (state) {
            if (state.showUserRequestPopUp) {
              showDialog(context: context, child: MembersPage());
            }
          },
          orElse: () {},
        );
      },
      builder: (context, currentCircleState) => currentCircleState.map(
        initial: (_) => Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Center(
              child: Text(
            'Loading...',
            style: Theme.of(context).accentTextTheme.bodyText2,
          )),
        ),
        isStarting: (_) => Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Center(
              child: Text(
            'Creating Circle...',
            style: Theme.of(context).accentTextTheme.bodyText2,
          )),
        ),
        isJoining: (_) => Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Center(
              child: Text(
            'Joining Circle...',
            style: Theme.of(context).accentTextTheme.bodyText2,
          )),
        ),
        hasJoined: (currentCircleState) => WillPopScope(
          onWillPop: () => showDialog(
              context: context,
              child: context.bloc<SettingsBloc>().state.maybeMap(
                  hasLoaded: (settingsState) =>
                      settingsState.user == currentCircleState.host
                          ? CloseCircleConfirmationDialog()
                          : LeaveCircleConfirmationDialog(),
                  orElse: () => Container())),
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height / 6),
              child: Material(
                color: Theme.of(context).appBarTheme.color,
                child: SafeArea(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            backgroundColor: Theme.of(context).accentColor,
                            child: const Icon(Icons.person)),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Connected to...',
                                style: Theme.of(context).textTheme.caption),
                            Text("${currentCircleState.host.name.getOrCrash()}'s Circle",
                                style: Theme.of(context).accentTextTheme.headline6)
                          ],
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(16.0),
                        icon: const Icon(Icons.cancel, color: Colors.white),
                        onPressed: () => showDialog(
                          context: context,
                          child: context.bloc<SettingsBloc>().state.maybeMap(
                                hasLoaded: (settingsState) =>
                                    settingsState.user ==
                                            currentCircleState.host
                                        ? CloseCircleConfirmationDialog()
                                        : LeaveCircleConfirmationDialog(),
                                orElse: () => Container(),
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            extendBody: true,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 24.0),
                    child: Material(
                        elevation: 16.0,
                        borderRadius: BorderRadius.circular(16.0),
                        color: Theme.of(context).bottomAppBarColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.save_alt),
                              color: Theme.of(context).accentIconTheme.color,
                              onPressed: () => showDialog(
                                context: context,
                                child: ReceivedFiles(),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () {
                                context.bloc<CurrentCircleBloc>().add(
                                      const CurrentCircleEvent.sendFiles(),
                                    );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.people),
                              color: Theme.of(context).accentIconTheme.color,
                              onPressed: () => showDialog(
                                context: context,
                                child: MembersPage(),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () {},
                      // TODO: Add functionality to send button
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.send),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: SendFile(),
          ),
        ),
        hasFailed: (_) => Container(),
      ),
    );
  }
}
