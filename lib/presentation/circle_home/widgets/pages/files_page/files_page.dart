import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/domain/files/file_transaction.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/files_page/widgets/files_list.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/files_page/widgets/files_transaction_list.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/widgets/empty_pop_up_placeholder.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class FilesPage extends StatelessWidget {
  Widget _body(
    BuildContext context,
    Map<FileInfo, double> incomingFiles,
    Map<FileInfo, double> outgoingFiles,
    List<FileTransaction> transactions,
  ) =>
      DialogLayout(
        primaryButtonText: 'Done',
        primaryOnTap: () => ExtendedNavigator.of(context).pop(),
        dialogType: (incomingFiles.isEmpty &&
                outgoingFiles.isEmpty &&
                transactions.isEmpty)
            ? DialogType.empty
            : DialogType.withButtons,
        dialogButtonType: DialogButtonType.singleButton,
        child: SingleChildScrollView(
          child: (incomingFiles.isEmpty &&
                  outgoingFiles.isEmpty &&
                  transactions.isEmpty)
              ? const EmptyPopUpPlaceholder(
                  icon: Icons.insert_drive_file,
                  text: 'No files have been shared',
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (incomingFiles.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Incoming Files',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    FilesList(incomingFiles),
                    if (outgoingFiles.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Outgoing Files',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    FilesList(outgoingFiles),
                    if (transactions.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'History',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    FilesTransactionList(transactions),
                  ],
                ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
      builder: (context, state) => state.maybeMap(
        hasStarted: (state) => _body(context, state.incomingFiles,
            state.outgoingFiles, state.transactions),
        hasJoined: (state) => _body(context, state.incomingFiles,
            state.outgoingFiles, state.transactions),
        orElse: () => Container(),
      ),
    );
  }
}
