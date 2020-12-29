import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/files/file_transfer/file_transfer_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/file_transfer/file_transfer_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/bottom_bar.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/exit_circle_confirmation_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/files_history/files_history_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/members/members_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/circle_home_body.dart';
import 'package:projectcircles/presentation/circle_home/widgets/transfer_progress_bottom_bar.dart';

class CircleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FileTransferBloc>(),
      child: BlocConsumer<CurrentCircleBloc, CurrentCircleState>(
        listener: (context, currentCircleState) {
          currentCircleState.maybeMap(
            initial: (_) {
              ExtendedNavigator.of(context).pop();
            },
            hasStarted: (state) {
              state.showFilesDialog.fold(
                () {},
                (open) {
                  if (open) {
                    showDialog(
                      context: context,
                      builder: (context) => FilesHistoryDialog(),
                    ).whenComplete(
                      () => context.read<CurrentCircleBloc>().add(
                            const CurrentCircleEvent.filesDialogClosed(),
                          ),
                    );
                  }
                },
              );
              state.showMembersDialog.fold(
                () {},
                (open) {
                  if (open) {
                    showDialog(
                      context: context,
                      builder: (context) => MembersDialog(),
                    ).whenComplete(
                          () => context.read<CurrentCircleBloc>().add(
                        const CurrentCircleEvent.membersDialogClosed(),
                      ),
                    );
                  }
                },
              );
              state.showFileTransferDialog.fold(
                () {},
                (open) {
                  if (open) {
                    final List<User> users = [];
                    state.members.entries.forEach((element) {
                      if (!element.value) {
                        users.add(element.key);
                      }
                    });
                    context.read<FileTransferBloc>().add(
                          FileTransferEvent.confirmOutgoingFiles(
                            users: users,
                          ),
                        );
                    showDialog(
                      context: context,
                      builder: (_) => BlocProvider.value(
                        value: context.read<FileTransferBloc>(),
                        child: FileTransferDialog(),
                      ),
                    ).whenComplete(
                          () => context.read<CurrentCircleBloc>().add(
                        const CurrentCircleEvent.fileTransferDialogClosed(),
                      ),
                    );
                  }
                },
              );
            },
            hasJoined: (state) {
              state.showFilesDialog.fold(
                () {},
                (open) {
                  if (open) {
                    showDialog(
                      context: context,
                      builder: (context) => FilesHistoryDialog(),
                    ).whenComplete(
                          () => context.read<CurrentCircleBloc>().add(
                        const CurrentCircleEvent.filesDialogClosed(),
                      ),
                    );
                  }
                },
              );
              state.showMembersDialog.fold(
                () {},
                (open) {
                  if (open) {
                    showDialog(
                      context: context,
                      builder: (context) => MembersDialog(),
                    ).whenComplete(
                          () => context.read<CurrentCircleBloc>().add(
                        const CurrentCircleEvent.membersDialogClosed(),
                      ),
                    );
                  }
                },
              );
              state.showFileTransferDialog.fold(
                () {},
                (open) {
                  if (open) {
                    context.read<FileTransferBloc>().add(
                          FileTransferEvent.confirmOutgoingFiles(
                            users: [state.host],
                          ),
                        );
                    showDialog(
                      context: context,
                      builder: (_) => BlocProvider.value(
                        value: context.read<FileTransferBloc>(),
                        child: FileTransferDialog(),
                      ),
                    ).whenComplete(
                          () => context.read<CurrentCircleBloc>().add(
                        const CurrentCircleEvent.fileTransferDialogClosed(),
                      ),
                    );
                  }
                },
              );
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
          isLoading: (state) => Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: Center(
              child: Text(
                state.loadingText,
                style: Theme.of(context).accentTextTheme.bodyText2,
              ),
            ),
          ),
          hasStarted: (currentCircleState) => WillPopScope(
            onWillPop: () => showDialog(
              context: context,
              builder: (context) => ExitCircleConfirmationDialog(),
            ),
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
                          child: Text("Your Circle",
                              style:
                                  Theme.of(context).accentTextTheme.headline6),
                        ),
                        IconButton(
                          padding: const EdgeInsets.all(16.0),
                          icon: const Icon(Icons.cancel, color: Colors.white),
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) => ExitCircleConfirmationDialog(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              extendBody: true,
              bottomNavigationBar: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (currentCircleState.incomingFiles.isNotEmpty ||
                      currentCircleState.outgoingFiles.isNotEmpty)
                    TransferProgressBottomBar(),
                  BottomBar(),
                ],
              ),
              body: CircleHomeBody(),
            ),
          ),
          hasJoined: (currentCircleState) => WillPopScope(
            onWillPop: () => showDialog(
              context: context,
              builder: (context) => ExitCircleConfirmationDialog(),
            ),
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
                                  style: Theme.of(context)
                                      .accentTextTheme
                                      .caption),
                              Text(
                                  "${currentCircleState.host.name.getOrCrash()}'s Circle",
                                  style: Theme.of(context)
                                      .accentTextTheme
                                      .headline6)
                            ],
                          ),
                        ),
                        IconButton(
                          padding: const EdgeInsets.all(16.0),
                          icon: const Icon(Icons.cancel, color: Colors.white),
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) => ExitCircleConfirmationDialog(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              extendBody: true,
              bottomNavigationBar: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (currentCircleState.incomingFiles.isNotEmpty ||
                      currentCircleState.outgoingFiles.isNotEmpty)
                    TransferProgressBottomBar(),
                  BottomBar(),
                ],
              ),
              body: CircleHomeBody(),
            ),
          ),
          hasFailed: (_) => Container(),
        ),
      ),
    );
  }
}
