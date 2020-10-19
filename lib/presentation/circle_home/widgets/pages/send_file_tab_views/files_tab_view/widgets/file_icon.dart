import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';

class FileIcon extends StatelessWidget {
  final int index;

  const FileIcon(this.index);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesTabViewBloc, FilesTabViewState>(
      builder: (context, state) => state.maybeMap(
        hasLoaded: (state) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: Material(
            borderRadius: BorderRadius.circular(8.0),
            color: state.files.values.elementAt(index)
                ? Theme.of(context).buttonColor
                : Colors.transparent,
            child: InkWell(
              onTap: () => context.bloc<FilesTabViewBloc>().add(
                    FilesTabViewEvent.toggleSelection(
                      fileSystemEntity: state.files.keys.elementAt(index),
                    ),
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    size: 48.0,
                  ),
                  Text(
                    state.files.keys.elementAt(index).path.substring(
                        state.files.keys.elementAt(index).parent.path.length + 1),
                    overflow: TextOverflow.ellipsis,
                    style: state.files.values.elementAt(index)
                            ? Theme.of(context)
                                .accentTextTheme
                                .bodyText2
                            : Theme.of(context).textTheme.bodyText2,
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
