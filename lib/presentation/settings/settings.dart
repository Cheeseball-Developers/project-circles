import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_back_button.dart';
import 'package:projectcircles/presentation/settings/widgets/settings_item_list_tile.dart';
import 'package:projectcircles/presentation/settings/widgets/settings_section.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 30.0),
          // ignore: prefer_const_constructors
          child: SafeArea(child: MyBackButton())
      ),
      body: SafeArea(
        child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) => state.map(
                  initial: (_) => Container(),
                  isLoading: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  hasFailed: (_) => Container(),
                  hasLoaded: (state) => SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 24.0, left: 24.0, right: 24.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Theme.of(context).buttonColor,
                                  radius: 48.0,
                                  child: Text('AU', style: TextStyle(fontSize: 48.0),),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 16.0),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.name.getOrCrash(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                        Text(state.uid.getOrCrash(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption)
                                      ]),
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
                                  onTap: () => context.bloc<SettingsBloc>().add(
                                      const SettingsEvent.toggleDarkMode())),
                              SettingsItemListTile(
                                  icon: Icons.save_alt,
                                  title: 'Ask Before Receiving',
                                  subtitle:
                                      'Ask for permission before downloading file sent by other users',
                                  type: SettingsItemType.toggle,
                                  toggleValue: state.askBeforeReceiving,
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
                                  toggleValue: state.darkMode,
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
                          ]),
                        ],
                      ),
                    ),
                )),
      ),
    );
  }
}
