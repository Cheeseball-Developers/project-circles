import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/folder_picker/folder_picker_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FolderPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FolderPickerBloc, FolderPickerState>(
      listener: (context, state) {},
      builder: (context, state) => DialogLayout(
        dialogType: DialogType.withButtons,
        dialogButtonType: DialogButtonType.doubleButton,
        primaryButtonText: 'Select',
        secondaryButtonText: 'Cancel',
        primaryOnTap: () => context
            .bloc<FolderPickerBloc>()
            .add(const FolderPickerEvent.select()),
        secondaryOnTap: () => ExtendedNavigator.of(context).pop(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Positioned(
                  left: 0.0,
                  child: GestureDetector(
                      onTap: () => context
                          .bloc<FolderPickerBloc>()
                          .add(FolderPickerEvent.up()),
                      child: const Icon(Icons.chevron_left)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.directory.path.substring(
                          state.directory.path.lastIndexOf('/') + 1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            state.folders.fold(
              () => const CircularProgressIndicator(),
              (folders) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: folders.length,
                  itemBuilder: (context, index) => MyListTile(
                    onTap: () => context.bloc<FolderPickerBloc>().add(
                          FolderPickerEvent.openDirectory(
                            directory: Directory(folders[index].path),
                          ),
                        ),
                    leading: const Icon(
                      Icons.folder,
                      color: Colors.amber,
                    ),
                    title: folders[index]
                        .path
                        .substring(folders[index].path.lastIndexOf('/') + 1),
                    trailing: Container(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
