import 'package:dartz/dartz.dart';
import 'package:device_apps/device_apps.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';

class AppsRepository {
  static Future<Either<AppsLoadFailure, List<ApplicationWithIcon>>>
      getApps() async {
    try {
      final List<Application> apps =
          await DeviceApps.getInstalledApplications(includeAppIcons: true);
      final List<ApplicationWithIcon> iconApps = [];
      apps.forEach((app) {
        iconApps.add(app as ApplicationWithIcon);
      });
      iconApps.sort((appA, appB) => appA.appName.compareTo(appB.appName));
      return right(iconApps);
    } catch (error) {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }
}
