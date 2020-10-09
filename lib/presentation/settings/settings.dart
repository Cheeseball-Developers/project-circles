import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_back_button.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart';
import 'package:projectcircles/presentation/settings/widgets/name_form_pop_up.dart';
import 'package:projectcircles/presentation/settings/widgets/settings_item_list_tile.dart';
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
                                  child: NameFormPopUp(),
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
              SettingsSection(
                title: 'File Transfer',
                items: [
                  SettingsItemListTile(
                    icon: Icons.save,
                    title: 'Default Save Location',
                    subtitle: 'Downloads/Circles',
                    type: SettingsItemType.tapToOpen,
                    onTap: () => ExtendedNavigator.named('nav').push(
                      Routes.folderPickerPage,
                      arguments: FolderPickerPageArguments(
                        action: (context, directory) async {
                          context.bloc<SettingsBloc>().add(
                                SettingsEvent.selectDefaultDirectory(
                                  directory,
                                ),
                              );
                        },
                        rootDirectory: Directory('/storage/emulated/0'),
                      ),
                    ),
                  ),
                  SettingsItemListTile(
                      icon: Icons.save_alt,
                      title: 'Ask Before Receiving',
                      subtitle:
                          'Ask for permission before downloading file sent by other users',
                      type: SettingsItemType.toggle,
                      toggleValue: state.askBeforeReceiving,
                      onTap: () => context
                          .bloc<SettingsBloc>()
                          .add(const SettingsEvent.toggleAskBeforeReceiving())),
                ],
              ),
              SettingsSection(
                title: 'Theme',
                items: [
                  SettingsItemListTile(
                      icon: Icons.brightness_4,
                      title: 'Dark Mode',
                      subtitle: 'Dark Mode it is!',
                      type: SettingsItemType.toggle,
                      toggleValue: state.darkMode,
                      onTap: () => context
                          .bloc<SettingsBloc>()
                          .add(const SettingsEvent.toggleDarkMode())),
                ],
              ),
              SettingsSection(
                title: 'About',
                items: [
                  SettingsItemListTile(
                      icon: Icons.info,
                      title: 'About Circles',
                      type: SettingsItemType.tapToOpen,
                      onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
