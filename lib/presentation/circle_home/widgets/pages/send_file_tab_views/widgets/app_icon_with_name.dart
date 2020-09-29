import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';

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
            borderRadius: BorderRadius.circular(8.0),
            color: state.apps[index].isSelected
                ? Theme.of(context).buttonColor
                : Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(8.0),
              onTap: () {
                context.bloc<AppsTabViewBloc>().add(
                      AppsTabViewEvent.toggleAppSelection(index),
                    );
                context.bloc<CurrentCircleBloc>().add(
                      CurrentCircleEvent.addFile(
                        file: File(state.apps[index].getOrCrash().apkFilePath),
                      ),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width / 20),
                      child: Image.memory(
                        state.apps[index].icon,
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                    ),
                    Text(
                      state.apps[index].getOrCrash().appName,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: state.apps[index].selected
                          ? Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: Colors.white)
                          : Theme.of(context).textTheme.bodyText2,
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
