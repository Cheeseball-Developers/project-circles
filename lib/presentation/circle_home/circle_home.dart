import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/presentation/circle_home/dialogs/file_transfer/file_transfer_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/bottom_bar.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/exit_circle_confirmation_dialog.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/files_page/files_page.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/members_page/members_page.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file.dart';
import 'package:projectcircles/presentation/circle_home/widgets/transfer_progress_bottom_bar.dart';

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
          hasStarted: (state) {
            state.showFilesDialog.fold(
              () {},
              (open) {
                if (open) {
                  showDialog(
                    context: context,
                    child: FilesPage(),
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
                    child: MembersPage(),
                  );
                }
              },
            );
            state.showFileTransferDialog.fold(
              () {},
              (open) {
                if (open) {
                  showDialog(
                    context: context,
                    child: FileTransferDialog(),
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
                    child: FilesPage(),
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
                    child: MembersPage(),
                  );
                }
              },
            );
            state.showFileTransferDialog.fold(
                  () {},
                  (open) {
                if (open) {
                  showDialog(
                    context: context,
                    child: MembersPage(),
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
            child: ExitCircleConfirmationDialog(),
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
                            style: Theme.of(context).accentTextTheme.headline6),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(16.0),
                        icon: const Icon(Icons.cancel, color: Colors.white),
                        onPressed: () => showDialog(
                          context: context,
                          child: ExitCircleConfirmationDialog(),
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
            body: SendFile(),
          ),
        ),
        hasJoined: (currentCircleState) => WillPopScope(
          onWillPop: () => showDialog(
            context: context,
            child: ExitCircleConfirmationDialog(),
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
                                style:
                                    Theme.of(context).accentTextTheme.caption),
                            Text(
                                "${currentCircleState.host.name.getOrCrash()}'s Circle",
                                style:
                                    Theme.of(context).accentTextTheme.headline6)
                          ],
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(16.0),
                        icon: const Icon(Icons.cancel, color: Colors.white),
                        onPressed: () => showDialog(
                          context: context,
                          child: ExitCircleConfirmationDialog(),
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
            body: SendFile(),
          ),
        ),
        hasFailed: (_) => Container(),
      ),
    );
  }
}
