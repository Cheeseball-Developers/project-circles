import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/files/file_transfer/file_transfer_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/file_transfer/file_transfer_dialog.dart';

class BottomBar extends StatelessWidget {
  Widget _bar(BuildContext context, bool transactionInProgress) => Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
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
                    onPressed: () => context
                        .read<CurrentCircleBloc>()
                        .add(const CurrentCircleEvent.showFilesDialog()),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.people),
                    color: Theme.of(context).accentIconTheme.color,
                    onPressed: () => context
                        .read<CurrentCircleBloc>()
                        .add(const CurrentCircleEvent.showMembersDialog()),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTap: () => context.read<CurrentCircleBloc>().add(
                    const CurrentCircleEvent.showFileTransferDialog(),
                  ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(transactionInProgress
                    ? Icons.cancel_schedule_send
                    : Icons.send),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
      builder: (context, currentCircleState) =>
          BlocConsumer<FileTransferBloc, FileTransferState>(
        listener: (context, fileTransferState) {
          fileTransferState.maybeMap(
            incomingFilesConfirmation: (_) => showDialog(
              context: context,
              builder: (_) => BlocProvider.value(
                value: context.read<FileTransferBloc>(),
                child: FileTransferDialog(),
              ),
            ),
            orElse: () {},
          );
        },
        builder: (context, fileTransferState) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: currentCircleState.maybeMap(
            hasStarted: (state) => _bar(
              context,
              state.incomingFiles.isNotEmpty || state.outgoingFiles.isNotEmpty,
            ),
            hasJoined: (state) => _bar(
              context,
              state.incomingFiles.isNotEmpty || state.outgoingFiles.isNotEmpty,
            ),
            orElse: () => Container(),
          ),
        ),
      ),
    );
  }
}
