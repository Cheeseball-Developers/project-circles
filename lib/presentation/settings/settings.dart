import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/injection.dart';

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
            builder: (context, state) => SingleChildScrollView(
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
                        Padding(padding: const EdgeInsets.only(right: 16.0),),
                        Column(children: [Text(state.name.getOrCrash()), Text(state.uid.getOrCrash())])
                      ],
                    ),
                  ),
                  ListTile(
                      leading: Icon(Icons.save_alt),
                      title: Text('Default Save Location'),
                      subtitle: Text('Documents/circles'),
                      onTap: null),
                  ListTile(
                      leading: Icon(Icons.remove_circle_outline),
                      title: Text('Remove Ads'),
                      subtitle: Text('\$1'),
                      onTap: null),
                  ListTile(
                      leading: Icon(Icons.info),
                      title: Text('About the app'),
                      subtitle: Text('Documents/circles'),
                      onTap: null),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
