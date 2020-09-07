import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';

class FilesTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesTabViewBloc, FilesTabViewState>(
      builder: (context, state) => state.map(
          initial: (_) => Container(),
          isLoading: (_) => const Center(child: CircularProgressIndicator()),
          hasLoaded: (state) => GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemCount: state.folders.length + state.files.length,
                itemBuilder: (context, index) => index < state.folders.length
                    ? Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => context.bloc<FilesTabViewBloc>().add(
                              FilesTabViewEvent.loadDirectory(
                                  Directory(state.folders[index].path))),
                          child: Column(
                            children: [
                              Icon(Icons.folder),
                              Text(state.folders[index].path.substring(
                                  state.folders[index].parent.path.length + 1)),
                            ],
                          ),
                        ),
                      )
                    : Material(
                        child: Column(
                          children: [
                            Icon(Icons.image),
                            Text(
                              state.files[index - state.folders.length].path
                                  .substring(state
                                          .files[index - state.folders.length]
                                          .parent
                                          .path
                                          .length +
                                      1),
                            ),
                          ],
                        ),
                      ),
              )),
    );
  }
}
