import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/files_page/widgets/files_list.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/files_page/widgets/files_transaction_list.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/files_page/widgets/no_transactions_placeholder.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';

class FilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
      builder: (context, state) => state.maybeMap(
        hasStarted: (state) => LargePopUp(
          child: SingleChildScrollView(
            child: (state.incomingFiles.isEmpty &&
                    state.outgoingFiles.isEmpty &&
                    state.transactions.isEmpty)
                ? NoTransactionsPlaceholder()
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (state.incomingFiles.isNotEmpty) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Incoming Files',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      FilesList(state.incomingFiles),
                      if (state.outgoingFiles.isNotEmpty) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Outgoing Files',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      FilesList(state.outgoingFiles),
                      if (state.transactions.isNotEmpty) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'History',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      FilesTransactionList(state.transactions),
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
          ),
        ),
        hasJoined: (state) => LargePopUp(
          child: SingleChildScrollView(
            child: (state.incomingFiles.isEmpty &&
                    state.outgoingFiles.isEmpty &&
                    state.transactions.isEmpty)
                ? NoTransactionsPlaceholder() : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (state.incomingFiles.isNotEmpty) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Incoming Files',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      FilesList(state.incomingFiles),
                      if (state.outgoingFiles.isNotEmpty) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Outgoing Files',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      FilesList(state.outgoingFiles),
                      if (state.transactions.isNotEmpty) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'History',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      FilesTransactionList(state.transactions),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
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
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
