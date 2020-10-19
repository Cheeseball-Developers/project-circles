import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/files_tab_view/widgets/explorer_nav_bar.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/loading_page.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_back_button.dart';

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
              preferredSize: Size(MediaQuery.of(context).size.width,
                  state.relativePath != '' ? 80.0 : 40.0),
              child: Column(children: [
                ExplorerNavBar(),
                if (state.relativePath != '') AppBar(
                        elevation: 8.0,
                        toolbarHeight: 40.0,
                        backgroundColor: Theme.of(context).cardColor,
                        leading: MyBackButton(
                          onTap: () => context.bloc<FilesTabViewBloc>().add(
                                FilesTabViewEvent.openDirectory(
                                  relativePath: state.relativePath.substring(
                                    0,
                                    state.relativePath.lastIndexOf('/'),
                                  ),
                                ),
                              ),
                        ),
                        title: Text(
                          state.relativePath.substring(
                              state.relativePath.lastIndexOf('/') + 1),
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        centerTitle: true,
                      ) else Container(),
              ])),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5),
              itemCount: state.folders.length + state.files.length,
              itemBuilder: (context, index) => index < state.folders.length
                  ? Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => context.bloc<FilesTabViewBloc>().add(
                              FilesTabViewEvent.openDirectory(
                                relativePath: state.relativePath +
                                    state.folders[index].path.substring(
                                      state.folders[index].path
                                          .lastIndexOf('/'),
                                    ),
                              ),
                            ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.folder,
                              size: 48.0,
                              color: Colors.amber,
                            ),
                            Text(
                              state.folders[index].path.substring(
                                  state.folders[index].parent.path.length + 1),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image,
                            size: 48.0,
                          ),
                          Text(
                            state.files.keys
                                .elementAt(index - state.folders.length)
                                .path
                                .substring(state.files.keys
                                        .elementAt(index - state.folders.length)
                                        .parent
                                        .path
                                        .length +
                                    1),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
