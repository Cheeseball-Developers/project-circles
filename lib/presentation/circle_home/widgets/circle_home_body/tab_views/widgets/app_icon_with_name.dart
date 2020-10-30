import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/domain/files/app_info.dart';

class AppIconWithName extends StatelessWidget {
  final AppInfo appInfo;

  const AppIconWithName({Key key, @required this.appInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppsTabViewBloc, AppsTabViewState>(
      builder: (context, state) => state.failureOrAppsOption.fold(
        () => Container(),
        (failureOrApps) => failureOrApps.fold(
          (f) => null,
          (apps) => Padding(
            padding: const EdgeInsets.all(2.0),
            child: Material(
              borderRadius: BorderRadius.circular(8.0),
              color: apps[appInfo]
                  ? Theme.of(context).buttonColor
                  : Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () {
                  context.bloc<AppsTabViewBloc>().add(
                        AppsTabViewEvent.toggleAppSelection(appInfo: appInfo),
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
                          appInfo.icon,
                          width: MediaQuery.of(context).size.width / 10,
                        ),
                      ),
                      Text(
                        appInfo.appName,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: apps[appInfo]
                            ? Theme.of(context)
                                .accentTextTheme
                                .bodyText2
                            : Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
