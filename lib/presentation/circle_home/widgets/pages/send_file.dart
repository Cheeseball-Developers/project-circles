import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';
import 'package:projectcircles/infrastructure/circle/files_repository.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/apps_tab_view.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/files_tab_view.dart';
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

  final filesTab = BlocProvider(
    create: (context) => getIt<FilesTabViewBloc>()
      ..add(FilesTabViewEvent.loadDirectory(Directory('/storage/emulated/0/'))),
    child: FilesTabView(),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100.0, 200.0),
          child: Material(
            color: Theme.of(context).appBarTheme.color,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0)),
            elevation: 8.0,
            child: TabBar(
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
