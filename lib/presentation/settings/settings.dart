import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/folder_picker/folder_picker_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/button_tile.dart';
import 'package:projectcircles/presentation/settings/widgets/folder_picker.dart';
import 'package:projectcircles/presentation/settings/widgets/name_form_pop_up.dart';
import 'package:projectcircles/presentation/settings/widgets/settings_section.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<SettingsBloc, SettingsState>(
        listener: (context, state) {
          state.maybeMap(
              hasLoaded: (state) {
                state.settingsFailureOption.fold(
                  () => null,
                  (failure) {
                    Flushbar(
                      messageText: failure.map(
                          instanceLoadFailure: (_) => Text(
                                'Error Loading Settings',
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).accentTextTheme.bodyText2,
                              ),
                          valueLoadFailure: (_) => Text(
                                'Error Loading Setting Item',
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).accentTextTheme.bodyText2,
                              ),
                          valueSaveFailure: (_) => Text(
                                'Error Saving Setting Item',
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).accentTextTheme.bodyText2,
                              ),
                          unexpected: (_) => Text(
                                'Unexpected Error',
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).accentTextTheme.bodyText2,
                              ),
                          idAndNameNotSet: (_) => Container()),
                      padding: const EdgeInsets.all(8.0),
                      backgroundColor: Colors.red,
                      animationDuration: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 1500),
                    ).show(context);
                  },
                );
              },
              orElse: () {});
        },
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          isLoading: (_) => const Center(child: CircularProgressIndicator()),
          hasFailed: (state) => Center(
            child: Column(
              children: [
                const Text('Unexpected Failure has Occurred'),
                MyTextButton(
                    type: ButtonType.secondary, text: 'Refresh', onTap: () {}),
              ],
            ),
          ),
          hasLoaded: (state) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 24.0, left: 24.0, right: 24.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).buttonColor,
                      radius: 48.0,
                      child: Text(
                        state.user.name.getOrCrash().substring(0, 1),
                        style: const TextStyle(fontSize: 48.0),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Text(
                                  state.user.name.getOrCrash(),
                                  style: Theme.of(context).textTheme.headline4,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () => showDialog(
                                  context: context,
                                  builder: (context) => NameFormPopUp(),
                                ),
                              ),
                            ],
                          ),
                          Text(state.user.uid.getOrCrash(),
                              style: Theme.of(context).textTheme.caption)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SettingsSection(
                          title: 'File Transfer',
                          items: [
                            ButtonTile(
                              icon: Icons.save,
                              toggleValue: false,
                              title: 'Save Location',
                              subtitle: state.directory.path.substring(
                                  state.directory.path.lastIndexOf('/') + 1),
                              type: ButtonTileType.tapToOpen,
                              onTap: () async {
                                final Option<Directory> directoryOption =
                                    await showDialog(
                                  context: context,
                                  builder: (_) => BlocProvider(
                                    create: (context) =>
                                        getIt<FolderPickerBloc>()
                                          ..add(
                                            FolderPickerEvent.openDirectory(
                                              directory: Directory(
                                                  '/storage/emulated/0'),
                                            ),
                                          ),
                                    child: FolderPicker(),
                                  ),
                                );
                                directoryOption.fold(
                                  () {},
                                  (directory) => context
                                      .read<SettingsBloc>()
                                      .add(
                                        SettingsEvent.selectDefaultDirectory(
                                            directory),
                                      ),
                                );
                              },
                            ),
                            ButtonTile(
                              icon: Icons.save_alt,
                              title: 'Ask Before Receiving',
                              subtitle:
                                  'Ask for permission before downloading file sent by other users',
                              type: ButtonTileType.toggle,
                              toggleValue: state.askBeforeReceiving,
                              onTap: () => context.read<SettingsBloc>().add(
                                    const SettingsEvent
                                        .toggleAskBeforeReceiving(),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SettingsSection(
                          title: 'Theme',
                          items: [
                            ButtonTile(
                                icon: Icons.brightness_4,
                                title: 'Dark Mode',
                                subtitle: 'Dark Mode it is!',
                                type: ButtonTileType.toggle,
                                toggleValue: state.darkMode,
                                onTap: () => context
                                    .read<SettingsBloc>()
                                    .add(const SettingsEvent.toggleDarkMode())),
                          ],
                        ),
                        SettingsSection(
                          title: 'About',
                          items: [
                            ButtonTile(
                                icon: Icons.info,
                                title: 'About Circles',
                                type: ButtonTileType.tapToOpen,
                                onTap: () {}),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
