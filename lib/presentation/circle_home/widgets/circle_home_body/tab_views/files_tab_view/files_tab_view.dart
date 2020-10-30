import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/files_tab_view/widgets/explorer_nav_bar.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/files_tab_view/widgets/file_icon.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/files_tab_view/widgets/folder_icon.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/widgets/loading_page.dart';
import 'package:projectcircles/presentation/circle_home/widgets/circle_home_body/tab_views/widgets/selection_bar.dart';

class FilesTabView extends StatelessWidget {
  String fileOrFolderName(Directory directory) {
    return directory.path.substring(directory.parent.path.length + 1);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesTabViewBloc, FilesTabViewState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        isLoading: (_) => LoadingPage(),
        hasLoaded: (state) => Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 40.0),
            child: Column(
              children: [
                if (!state.files.containsValue(true))
                  ExplorerNavBar()
                else
                  SelectionBar(
                    count:
                        state.files.values.where((selected) => selected).length,
                    onCancel: () => context.bloc<FilesTabViewBloc>().add(
                          const FilesTabViewEvent.deselectAll(),
                        ),
                  ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5),
              itemCount: state.folders.length + state.files.length,
              itemBuilder: (context, index) => index < state.folders.length
                  ? FolderIcon(index)
                  : FileIcon(index - state.folders.length),
            ),
          ),
        ),
      ),
    );
  }
}
