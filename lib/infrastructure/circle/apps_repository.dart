import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/domain/files/app_info.dart';
import 'package:projectcircles/domain/files/apps_load_failure.dart';
import 'package:projectcircles/domain/files/file_info.dart';

@LazySingleton()
class AppsRepository {
  Map<AppInfo, bool> apps;

  Future<Either<AppsLoadFailure, Map<AppInfo, bool>>> getApps() async {
    if (apps != null) {
      return right(apps);
    } else {
      try {
        apps = {};
        final List<Application> rawApps =
            await DeviceApps.getInstalledApplications(includeAppIcons: true);
        rawApps.sort(
          (appA, appB) => appA.appName.toLowerCase().compareTo(
                appB.appName.toLowerCase(),
              ),
        );
        rawApps.forEach((app) {
          final ApplicationWithIcon appWithIcon = app as ApplicationWithIcon;
          apps.addAll({
            AppInfo(
              appName: app.appName,
              packageName: app.packageName,
              icon: appWithIcon.icon,
            ): false
          });
        });
        return right(apps);
      } catch (error) {
        print(error);
        return left(const AppsLoadFailure.unexpectedFailure());
      }
    }
  }

  Either<AppsLoadFailure, Map<AppInfo, bool>> toggleAppSelection(
      {@required AppInfo appInfo}) {
    try {
      apps.update(appInfo, (value) => !value);
      return right(apps);
    } catch (error) {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  Either<AppsLoadFailure, Map<AppInfo, bool>> deselectAllApps() {
    try {
      apps.updateAll((key, value) => false);
      return right(apps);
    } catch (error) {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  Future<Either<AppsLoadFailure, List<FileInfo>>> getFilesInfo() async {
    try {
      final List<FileInfo> filesInfo = [];
      for (final AppInfo appInfo in apps.keys) {
        if (apps[appInfo]) {
          final app = await DeviceApps.getApp(appInfo.packageName);
          final File file = File(app.apkFilePath);
          filesInfo.add(
            FileInfo(
              hash: file.hashCode,
              path: app.apkFilePath,
              bytesSize: file.lengthSync(),
              thumbnail: appInfo.icon,
            ),
          );
        }
      }
      return right(filesInfo);
    } catch (e) {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }

  Future<Either<AppsLoadFailure, List<File>>> getFiles() async {
    try {
      final List<File> files = [];
      for (final AppInfo appInfo in apps.keys) {
        if (apps[appInfo]) {
          final app = await DeviceApps.getApp(appInfo.packageName);
          files.add(File(app.apkFilePath));
        }
      }
      return right(files);
    } catch (e) {
      return left(const AppsLoadFailure.unexpectedFailure());
    }
  }
}
