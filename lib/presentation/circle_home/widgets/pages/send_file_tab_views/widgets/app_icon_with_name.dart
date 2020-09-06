import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';

class AppIconWithName extends StatelessWidget {
  final int index;

  const AppIconWithName({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppsTabViewBloc, AppsTabViewState>(
      builder: (context, state) => state.maybeMap(
        hasLoaded: (state) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: Material(
            borderRadius: BorderRadius.circular(5.0),
            color: state.apps[index].isSelected
                ? Colors.teal
                : Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(5.0),
              onTap: () {
                if (state.tapToSelect) {
                  context.bloc<AppsTabViewBloc>().add(
                      AppsTabViewEvent.toggleAppSelection(
                          index));
                }
              },
              onLongPress: () {
                if (!state.tapToSelect) {
                  context.bloc<AppsTabViewBloc>().add(
                      AppsTabViewEvent.toggleAppSelection(
                          index));
                  context.bloc<AppsTabViewBloc>().add(
                      const AppsTabViewEvent
                          .toggleTapToSelect());
                } else {
                  context.bloc<AppsTabViewBloc>().add(
                      AppsTabViewEvent.toggleAppSelection(
                          index));
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Image.memory(
                      state.apps[index].getOrCrash().icon,
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    Text(
                      state.apps[index].getOrCrash().appName,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
