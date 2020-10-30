import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/files/file_transfer/file_transfer_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/file_transfer/widgets/files_list.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FileTransferDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileTransferBloc, FileTransferState>(
      builder: (context, state) => DialogLayout(
        dialogType: state.map(
          initial: (_) => DialogType.empty,
          outgoingFilesConfirmation: (_) => DialogType.full,
          awaitingSendApproval: (_) => DialogType.withTitle,
          incomingFilesConfirmation: (_) => DialogType.full,
          transferringFiles: (_) => DialogType.withTitle,
          transferComplete: (_) => DialogType.withButtons,
        ),
        dialogButtonType: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => DialogButtonType.doubleButton,
          awaitingSendApproval: (_) => null,
          incomingFilesConfirmation: (_) => DialogButtonType.doubleButton,
          transferringFiles: (_) => null,
          transferComplete: (_) => DialogButtonType.singleButton,
        ),
        title: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => 'Send these files?',
          awaitingSendApproval: (_) => 'Waiting to send',
          incomingFilesConfirmation: (_) => 'Receive these files?',
          transferringFiles: (_) => 'Transferring files',
          transferComplete: (_) => null,
        ),
        primaryButtonText: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => 'Send',
          awaitingSendApproval: (_) => null,
          incomingFilesConfirmation: (_) => 'Receive',
          transferringFiles: (_) => null,
          transferComplete: (_) => 'Done',
        ),
        secondaryButtonText: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => 'Cancel',
          awaitingSendApproval: (_) => null,
          incomingFilesConfirmation: (_) => 'Cancel',
          transferringFiles: (_) => null,
          transferComplete: (_) => null,
        ),
        primaryOnTap: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => () => context
              .bloc<FileTransferBloc>()
              .add(const FileTransferEvent.sendFilesInfo()),
          awaitingSendApproval: (_) => null,
          incomingFilesConfirmation: (_) => () => context
              .bloc<FileTransferBloc>()
              .add(const FileTransferEvent.confirmIncomingFiles(
                acceptOrReject: true,
              )),
          transferringFiles: (_) => null,
          transferComplete: (_) => () => ExtendedNavigator.of(context).pop(),
        ),
        secondaryOnTap: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) =>
              () => ExtendedNavigator.of(context).pop(),
          awaitingSendApproval: (_) => null,
          incomingFilesConfirmation: (_) => () => context
              .bloc<FileTransferBloc>()
              .add(const FileTransferEvent.confirmIncomingFiles(
                  acceptOrReject: false)),
          transferringFiles: (_) => null,
          transferComplete: (_) => null,
        ),
        child: state.map(
          initial: (_) => Padding(
            padding: const EdgeInsets.all(32.0),
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation(Theme.of(context).indicatorColor),
            ),
          ),
          outgoingFilesConfirmation: (state) => state.filesOption.fold(
            () => Padding(
              padding: const EdgeInsets.all(32.0),
              child: CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation(Theme.of(context).indicatorColor),
              ),
            ),
            (files) => FilesList(files),
          ),
          awaitingSendApproval: (state) => FilesList(state.files),
          incomingFilesConfirmation: (state) => ListView.builder(
            itemCount: state.files.length,
            itemBuilder: (context, index) => MyListTile(
              title: state.files[index].name,
              leading: Container(),
            ),
          ),
          transferringFiles: (state) => Container(),
          transferComplete: (state) => Container(),
        ),
      ),
    );
  }
}
