import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';

class ExplorerNavBar extends StatelessWidget {
  Widget _navScroll(BuildContext context, String path) {
    return AppBar(
          titleSpacing: 0.0,
          elevation: 8.0,
          toolbarHeight: 40.0,
          backgroundColor: Theme.of(context).cardColor,
          leadingWidth: 0.0,
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: _children(context, path),
              ),
            ),
          ),
        );
  }

  List<Widget> _children(BuildContext context, String path) {
    final List<Widget> children = [
      GestureDetector(
        onTap: () => context.read<FilesTabViewBloc>().add(
              const FilesTabViewEvent.openDirectory(relativePath: ''),
            ),
        child: Icon(Icons.home, color: Theme.of(context).buttonColor),
      )
    ];
    final List<String> folders = path.split('/').toList();
    folders.removeAt(0);
    String relative = '';
    for (final folder in folders) {
      relative = '$relative/$folder';
      final String rel = relative;
      children.add(
        GestureDetector(
          onTap: () => context.read<FilesTabViewBloc>().add(
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
        isLoading: (state) => _navScroll(context, state.relativePath),
        hasLoaded: (state) => _navScroll(context, state.relativePath),
      ),
    );
  }
}
