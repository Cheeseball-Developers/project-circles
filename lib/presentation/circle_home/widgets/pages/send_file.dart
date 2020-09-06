import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/apps_tab_view.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/media_tab_view.dart';

class SendFile extends StatelessWidget {
  final appsTab = BlocProvider(
      create: (context) =>
          getIt<AppsTabViewBloc>()..add(const AppsTabViewEvent.loadApps()),
      child: AppsTabView());

  final photosTab = BlocProvider(
    create: (context) =>
        getIt<MediaTabViewBloc>()..add(const MediaTabViewEvent.loadAlbums()),
    child: MediaTabView(),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(100.0, 200.0),
          child: TabBar(
            tabs: [
              Tab(text: 'Apps'),
              Tab(text: 'Media'),
              Tab(text: 'Files'),
            ],
          ),
        ),
        body: TabBarView(
            children: [appsTab, photosTab, Text('Files')]),
      ),
    );
  }
}
