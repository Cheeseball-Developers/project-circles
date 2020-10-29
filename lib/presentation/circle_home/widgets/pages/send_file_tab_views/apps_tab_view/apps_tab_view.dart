import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/app_icon_with_name.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/loading_page.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/selection_bar.dart';

class AppsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppsTabViewBloc, AppsTabViewState>(
      builder: (context, state) => state.failureOrAppsOption.fold(
        () => LoadingPage(),
        (failureOrApps) => failureOrApps.fold(
          (f) => Center(
            child: f.map(
              unexpectedFailure: (_) => const Text('An error occurred'),
            ),
          ),
          (apps) => Scaffold(
            appBar: !apps.containsValue(true)
                ? PreferredSize(
                    preferredSize: const Size(0.0, 0.0),
                    child: Container(),
                  )
                : PreferredSize(
                    preferredSize:
                        Size(MediaQuery.of(context).size.width, 40.0),
                    child: SelectionBar(
                      count: apps.values.where((selected) => selected).length,
                      onCancel: () => context.bloc<AppsTabViewBloc>().add(
                            const AppsTabViewEvent.deselectAll(),
                          ),
                    ),
                  ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemCount: apps.length,
                itemBuilder: (context, index) => AppIconWithName(
                  appInfo: apps.keys.elementAt(index),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
