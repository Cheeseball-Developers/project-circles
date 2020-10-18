import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';

class ExplorerNavBar extends StatelessWidget {
  List<Widget> _children(BuildContext context, String path) {
    final List<Widget> children = [
      GestureDetector(
        onTap: () => context.bloc<FilesTabViewBloc>().add(
              const FilesTabViewEvent.openDirectory(relativePath: ''),
            ),
        child: Icon(Icons.home, color: Theme.of(context).buttonColor),
      )
    ];
    final List<String> folders = path.split('/').toList();
    folders.removeAt(0);
    String relative = '';
    for (final folder in folders) {
      relative = relative + '/$folder';
      final String rel = relative;
      print(relative);
      children.add(
        GestureDetector(
          onTap: () => context.bloc<FilesTabViewBloc>().add(
                FilesTabViewEvent.openDirectory(relativePath: rel),
              ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.chevron_right_rounded,
                color: Theme.of(context).buttonColor,
              ),
              Text(
                folder,
                style: Theme.of(context).textTheme.button,
              ),
            ],
          ),
        ),
      );
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesTabViewBloc, FilesTabViewState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        isLoading: (state) => Container(),
        hasLoaded: (state) => AppBar(
          titleSpacing: 0.0,
          elevation: 8.0,
          toolbarHeight: 40.0,
          backgroundColor: Theme.of(context).cardColor,
          leading: state.relativePath != ''
              ? GestureDetector(
                  child: Icon(
                    Icons.chevron_left,
                    color: Theme.of(context).iconTheme.color,
                    size: 18.0,
                  ),
                )
              : null,
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: _children(context, state.relativePath),
            ),
          ),
        ),
      ),
    );
  }
}
