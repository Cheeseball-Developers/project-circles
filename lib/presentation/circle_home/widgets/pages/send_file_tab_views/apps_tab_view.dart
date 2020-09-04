import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/domain/files/value_objects.dart';
import 'package:projectcircles/presentation/circle_home/widgets/pages/send_file_tab_views/widgets/app_icon_with_name.dart';

class AppsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppsTabViewBloc, AppsTabViewState>(
      builder: (context, state) => state.map(
          initial: (_) => Container(),
          isLoading: (_) => const Text('Loading'),
          hasLoaded: (state) => GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemCount: state.apps.length,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      if (state.tapToSelect) {
                        context
                            .bloc<AppsTabViewBloc>()
                            .add(AppsTabViewEvent.toggleAppSelection(index));
                      }
                    },
                    onLongPress: () {
                      if (!state.tapToSelect) {
                        context
                            .bloc<AppsTabViewBloc>()
                            .add(AppsTabViewEvent.toggleAppSelection(index));
                        context
                            .bloc<AppsTabViewBloc>()
                            .add(const AppsTabViewEvent.toggleTapToSelect());
                      }
                    },
                    child: AppIconWithName(app: state.apps[index])),
              ),
          hasFailed: (state) => const Center(
                child: Text('Error loading apps'),
              )),
    );
  }
}
