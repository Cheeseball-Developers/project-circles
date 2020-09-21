import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';

class ExplorerTopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesTabViewBloc, FilesTabViewState>(
      builder: (context, state) => Material(
        child: Row(

        ),
      ),
    );
  }
}
