import 'package:dartz/dartz.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/cupertino.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/domain/files/value_objects.dart';

class AppsRepository {
  static Future<Either<AppsLoadFailure, List<AppObject>>>
      getApps() async {
    print('getApps');
    try {
      final List<Application> apps =
          await DeviceApps.getInstalledApplications(includeAppIcons: true);
      final List<AppObject> iconApps = [];
      apps.forEach((app) {
        iconApps.add(AppObject(app as ApplicationWithIcon, selected: false));
      });
      iconApps.sort((appA, appB) => appA.getOrCrash().appName.compareTo(appB.getOrCrash().appName));
      return right(iconApps);
    } catch (error) {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }
}
