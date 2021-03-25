import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';

class FolderIcon extends StatelessWidget {
  final int index;

  const FolderIcon(this.index);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesTabViewBloc, FilesTabViewState>(
      builder: (context, state) => state.maybeMap(
        hasLoaded: (state) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => context.read<FilesTabViewBloc>().add(
                    FilesTabViewEvent.openDirectory(
                      relativePath: state.relativePath +
                          state.folders[index].path.substring(
                            state.folders[index].path.lastIndexOf('/'),
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
                    state.folders[index].path
                        .substring(state.folders[index].parent.path.length + 1),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
