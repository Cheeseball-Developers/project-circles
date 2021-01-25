import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/files/file_transfer/file_transfer_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/file_transfer/widgets/files_info_list.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/file_transfer/widgets/transfer_progress_info_list.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/widgets/empty_pop_up_placeholder.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class FileTransferDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileTransferBloc, FileTransferState>(
      builder: (context, state) => DialogLayout(
        dialogType: state.map(
          initial: (_) => DialogType.empty,
          outgoingFilesConfirmation: (_) => DialogType.full,
          incomingFilesConfirmation: (_) => DialogType.full,
          sendingFiles: (_) => DialogType.full,
          receivingFiles: (_) => DialogType.full,
          transferComplete: (_) => DialogType.full,
          hasFailed: (_) => DialogType.empty,
        ),
        dialogButtonType: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => DialogButtonType.doubleButton,
          incomingFilesConfirmation: (_) => DialogButtonType.doubleButton,
          sendingFiles: (_) => DialogButtonType.center,
          receivingFiles: (_) => DialogButtonType.center,
          transferComplete: (_) => DialogButtonType.singleButton,
          hasFailed: (_) => null,
        ),
        title: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => 'Send these files?',
          incomingFilesConfirmation: (_) => 'Receive these files?',
          sendingFiles: (_) => 'Sending Files',
          receivingFiles: (_) => 'Receiving Files',
          transferComplete: (_) => 'Transfer Complete',
          hasFailed: (_) => null,
        ),
        primaryButtonText: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => 'Send',
          incomingFilesConfirmation: (_) => 'Receive',
          sendingFiles: (_) => 'Cancel',
          receivingFiles: (_) => 'Cancel',
          transferComplete: (_) => 'Done',
          hasFailed: (_) => null,
        ),
        secondaryButtonText: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => 'Cancel',
          incomingFilesConfirmation: (_) => 'Cancel',
          sendingFiles: (_) => null,
          receivingFiles: (_) => null,
          transferComplete: (_) => null,
          hasFailed: (_) => null,
        ),
        primaryOnTap: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) => () => context
              .read<FileTransferBloc>()
              .add(const FileTransferEvent.sendFilesInfo()),
          // TODO: Add cancellation callback
          incomingFilesConfirmation: (_) => () => context
              .read<FileTransferBloc>()
              .add(const FileTransferEvent.confirmIncomingFiles(
                acceptOrReject: true,
              )),
          sendingFiles: (_) => () {},
          // TODO: Add cancellation callback
          receivingFiles: (_) => () {},
          // TODO: Add cancellation callback
          transferComplete: (_) => () {
            context
                .read<FileTransferBloc>()
                .add(const FileTransferEvent.reset());
            ExtendedNavigator.of(context).pop();
          },
          hasFailed: (_) => null,
        ),
        secondaryOnTap: state.map(
          initial: (_) => null,
          outgoingFilesConfirmation: (_) =>
              () => ExtendedNavigator.of(context).pop(),
          incomingFilesConfirmation: (_) => () => context
              .bloc<FileTransferBloc>()
              .add(const FileTransferEvent.confirmIncomingFiles(
                  acceptOrReject: false)),
          sendingFiles: (_) => null,
          receivingFiles: (_) => null,
          transferComplete: (_) => null,
          hasFailed: (_) => null,
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
            (files) => FilesInfoList(files.toList()),
          ),
          incomingFilesConfirmation: (state) =>
              FilesInfoList(state.files.toList()),
          sendingFiles: (state) => ListView.builder(
            shrinkWrap: true,
            itemCount: state.transferProgressInfos.length,
            itemBuilder: (context, index) => TransferProgressInfoList(
              transferProgressInfo: state.transferProgressInfos[index],
            ),
          ),
          receivingFiles: (state) => TransferProgressInfoList(
            transferProgressInfo: state.transferProgressInfo,
          ),
          transferComplete: (state) => Container(),
          /*FileHistoryList(
            files: state.transferProgressInfo,
            showOpen: state.type == const FileTransferType.incoming(),
          ),*/
          hasFailed: (state) => state.failure.map(
            emptySelection: (_) => const EmptyPopUpPlaceholder(
              icon: Icons.file_copy_rounded,
              text: 'No files selected',
            ),
            noMembers: (_) => const EmptyPopUpPlaceholder(
                icon: Icons.people, text: 'No members in your circle'),
            denied: (_) => const EmptyPopUpPlaceholder(
              icon: Icons.cancel_rounded,
              text: 'Host denied to receive',
            ),
            cancelled: (_) => const EmptyPopUpPlaceholder(
              icon: Icons.cancel_rounded,
              text: 'Transfer cancelled',
            ),
            unexpected: (_) => const EmptyPopUpPlaceholder(
              icon: Icons.warning_rounded,
              text: 'Unexpected failure',
            ),
          ),
        ),
      ),
    );
  }
}
