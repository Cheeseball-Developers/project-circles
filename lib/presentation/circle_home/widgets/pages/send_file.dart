import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/apps_tab_view.dart';

class SendFile extends StatelessWidget {
  final appsTab = BlocProvider(
      create: (context) =>
      getIt<AppsTabViewBloc>()..add(const AppsTabViewEvent.loadApps()),
      child: AppsTabView());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(100.0, 200.0),
          child: TabBar(
            tabs: [
              Tab(text: 'Apps'),
              Tab(text: 'Photos'),
              Tab(text: 'Videos'),
              Tab(text: 'Files'),
            ],
          ),
        ),
        body: TabBarView(children: [
          appsTab,
          Text('Photos'),
          Text('Videos'),
          Text('Files')
        ]),
      ),
    );
  }
}
