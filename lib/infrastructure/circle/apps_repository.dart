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
  final Map<AppInfo, bool> apps = {};

  Future<Either<AppsLoadFailure, Map<AppInfo, bool>>> getApps() async {
    if (apps.isNotEmpty) {
      return right(apps);
    } else {
      try {
        final List<Application> rawApps =
            await DeviceApps.getInstalledApplications(includeAppIcons: true);
        rawApps.sort(
          (appA, appB) => appA.appName.toLowerCase().compareTo(
                appB.appName.toLowerCase(),
              ),
        );
        for (final app in rawApps) {
          final ApplicationWithIcon appWithIcon = app as ApplicationWithIcon;
          apps.addAll({
            AppInfo(
              appName: app.appName,
              packageName: app.packageName,
              icon: appWithIcon.icon,
            ): false
          });
        }
        return right(apps);
      } catch (error) {
        return left(const AppsLoadFailure.unexpectedFailure());
      }
    }
  }

  Either<AppsLoadFailure, Map<AppInfo, bool>> toggleAppSelection(
      {required AppInfo appInfo}) {
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

  Future<List<FileInfo>> getFilesInfo() async {
    final List<FileInfo> filesInfo = [];
    for (final AppInfo appInfo in apps.keys) {
      if (apps[appInfo]!) {
        final app = await DeviceApps.getApp(appInfo.packageName);
        final File file = File(app!.apkFilePath);
        filesInfo.add(
          FileInfo(
            name: app.appName,
            hash: file.hashCode,
            path: app.apkFilePath,
            bytesSize: file.lengthSync(),
            thumbnail: appInfo.icon,
          ),
        );
      }
    }
    return filesInfo;
  }

  Future<List<File>> getFiles() async {
    final List<File> files = [];
    for (final AppInfo appInfo in apps.keys) {
      if (apps[appInfo]!) {
        final app = await DeviceApps.getApp(appInfo.packageName);
        files.add(File(app!.apkFilePath));
      }
    }
    return files;
  }
}
