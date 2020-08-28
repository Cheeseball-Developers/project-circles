import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/settings/widgets/settings_item_list_tile.dart';
import 'package:projectcircles/presentation/settings/widgets/settings_section.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<SettingsBloc>(),
          child: BlocConsumer<SettingsBloc, SettingsState>(
              listener: (context, state) {},
              builder: (context, state) => state.map(
                    initial: (_) => Container(),
                    isLoading: (_) =>
                        const Center(child: CircularProgressIndicator()),
                    hasFailed: (_) => Container(),
                    hasLoaded: (state) => SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Text('AU'),
                                  radius: 64.0,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 16.0),
                                ),
                                Column(children: [
                                  Text(state.settings.name.getOrCrash()),
                                  Text(state.settings.uid.getOrCrash())
                                ])
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
                                  onTap: () => context.bloc<SettingsBloc>().add(
                                      const SettingsEvent.toggleDarkMode())),
                              SettingsItemListTile(
                                  icon: Icons.save_alt,
                                  title: 'Ask Before Receiving',
                                  subtitle:
                                      'Ask for permission before downloading file sent by other users',
                                  type: SettingsItemType.toggle,
                                  toggleValue: state.settings.askBeforeReceiving,
                                  onTap: () => context.bloc<SettingsBloc>().add(
                                      const SettingsEvent
                                          .toggleAskBeforeReceiving())),
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
                                  toggleValue: state.settings.darkMode,
                                  onTap: () => context.bloc<SettingsBloc>().add(
                                      const SettingsEvent.toggleDarkMode())),
                            ],
                          ),
                          SettingsSection(title: 'About', items: [
                            SettingsItemListTile(
                                icon: Icons.info,
                                title: 'About Circles',
                                type: SettingsItemType.tapToOpen,
                                onTap: () {}),
                          ])
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
