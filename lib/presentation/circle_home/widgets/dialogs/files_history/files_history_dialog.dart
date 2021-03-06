import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/files/files_history/files_history_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/circle_home/widgets/dialogs/widgets/file_history_list.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class FilesHistoryDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      title: 'Files Received',
      dialogType: DialogType.full,
      dialogButtonType: DialogButtonType.singleButton,
      primaryButtonText: 'Done',
      primaryOnTap: () {},
      child: BlocProvider(
        create: (context) => getIt<FilesHistoryBloc>(),
        child: BlocBuilder<FilesHistoryBloc, FilesHistoryState>(
          builder: (context, state) => state.failureOrFilesInfoOption.fold(
            () => const CircularProgressIndicator(),
            (failureOrFilesInfo) => failureOrFilesInfo.fold(
              (f) => const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Failed to Load"),
              ),
              (filesInfo) => FileHistoryList(files: filesInfo, showOpen: true),
            ),
          ),
        ),
      ),
    );
  }
}
