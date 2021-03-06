import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/apps_tab_view/apps_tab_view.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/files_tab_view/files_tab_view.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/media_tab_view/media_tab_view.dart';

class CircleHomeBody extends StatelessWidget {
  final appsTab = BlocProvider(
      create: (context) =>
          getIt<AppsTabViewBloc>()..add(const AppsTabViewEvent.loadApps()),
      child: AppsTabView());

  final photosTab = BlocProvider(
    create: (context) =>
        getIt<MediaTabViewBloc>()..add(const MediaTabViewEvent.loadAlbums()),
    child: MediaTabView(),
  );

  final filesTab = BlocProvider(
    create: (context) => getIt<FilesTabViewBloc>()
      ..add(const FilesTabViewEvent.openDirectory(relativePath: '')),
    child: FilesTabView(),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100.0, 200.0),
          child: Material(
            color: Theme.of(context).appBarTheme.color,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0)),
            elevation: 8.0,
            child: const TabBar(
              tabs: [
                Tab(text: 'Apps'),
                Tab(text: 'Media'),
                Tab(text: 'Files'),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [appsTab, photosTab, filesTab]),
      ),
    );
  }
}
