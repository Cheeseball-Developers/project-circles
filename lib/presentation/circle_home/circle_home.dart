import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/confirmation_dialog.dart';

class CircleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CurrentCircleBloc, CurrentCircleState>(
        listener: (context, state) {
          if (state == const CurrentCircleState.initial()) {
            ExtendedNavigator.of(context).pop();
            ExtendedNavigator.of(context).pop();
          }
        },
        builder: (context, state) => state.map(
              initial: (_) => Container(),
              isStarting: (_) => Container(),
              isJoining: (_) => Container(),
              hasJoined: (state) => WillPopScope(
                onWillPop: () => showDialog(
                    context: context,
                    child: ConfirmationDialog(
                      title: 'Disconnect',
                      subtitle:
                          'Are you sure you want to disconnect from the circle?',
                      noText: 'Cancel',
                      yesText: 'Disconnect',
                      noTap: () {},
                      yesTap: () => context
                          .bloc<CurrentCircleBloc>()
                          .add(const CurrentCircleEvent.closeCircle()),
                    )),
                child: Scaffold(
                  appBar: PreferredSize(
                    preferredSize: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height / 6),
                    child: Material(
                        elevation: 8.0,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(24.0),
                            bottomRight: Radius.circular(24.0)),
                        color: Theme.of(context).cardColor,
                        child: SafeArea(
                            child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Icon(Icons.person)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Connected to...',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                  Text(
                                      state.host.name.value.fold((l) => "Error",
                                          (name) => "$name's Circle"),
                                      style:
                                          Theme.of(context).textTheme.headline6)
                                ],
                              ),
                            ),
                            IconButton(
                              padding: const EdgeInsets.all(16.0),
                              icon: const Icon(Icons.cancel,
                                  color: Colors.redAccent),
                              onPressed: () => showDialog(
                                  context: context,
                                  builder: (context) => ConfirmationDialog(
                                        title: 'Disconnect',
                                        subtitle:
                                            'Are you sure you want to disconnect from the group?',
                                        noText: 'Cancel',
                                        yesText: 'Disconnect',
                                        noTap: () {},
                                        yesTap: () {},
                                      )),
                            )
                          ],
                        ))),
                  ),
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  bottomNavigationBar: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Theme.of(context).cardColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(Icons.file_upload),
                                    Text('Send File')
                                  ],
                                ),
                              ),
                              GestureDetector(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(Icons.ondemand_video),
                                    Text('Stream')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  body: Material(
                    child: Column(),
                  ),
                ),
              ),
            ));
  }
}
