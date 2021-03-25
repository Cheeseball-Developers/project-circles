import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/folder_picker/folder_picker_bloc.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class FolderPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FolderPickerBloc, FolderPickerState>(
      listener: (context, state) {
        if (state.isSelected) {
          ExtendedNavigator.of(context)!.pop(some(state.directory));
        }
      },
      builder: (context, state) => DialogLayout(
        dialogType: DialogType.withButtons,
        dialogButtonType: DialogButtonType.doubleButton,
        primaryButtonText: 'Select',
        secondaryButtonText: 'Cancel',
        primaryOnTap: () => context
            .read<FolderPickerBloc>()
            .add(const FolderPickerEvent.select()),
        secondaryOnTap: () => ExtendedNavigator.of(context)!.pop(none<Directory>()),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Stack(
                children: [
                  if (state.directory.path == '/storage/emulated/0')
                    Container()
                  else
                    Positioned(
                      left: 0.0,
                      child: GestureDetector(
                        onTap: () => context
                            .read<FolderPickerBloc>()
                            .add(const FolderPickerEvent.up()),
                        child: const Icon(Icons.chevron_left),
                      ),
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
            ),
            state.folders.fold(
              () => const CircularProgressIndicator(),
              (folders) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: folders.length,
                  itemBuilder: (context, index) => MyListTile(
                    onTap: () => context.read<FolderPickerBloc>().add(
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
