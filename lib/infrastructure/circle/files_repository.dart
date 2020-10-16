import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:projectcircles/domain/files/file_info.dart';

@LazySingleton()
class FilesRepository {
  final Directory root = Directory('/storage/emulated/0');
  Directory current;

  Map<FileSystemEntity, bool> filesMap;

  Future<bool> getPermission() async {
    if (await Permission.storage.isUndetermined ||
        await Permission.storage.isDenied) {
      return Permission.storage
          .request()
          .then((status) => status == PermissionStatus.granted);
    } else {
      return true;
    }
  }

  List<FileSystemEntity> openDirectory(Directory dir) {
    current = dir;
    return dir.listSync();
  }

  Map<FileSystemEntity, bool> toggleAppSelection(
      {@required FileSystemEntity entity}) {
    filesMap.update(entity, (value) => !value);
    return filesMap;
  }

  Map<FileSystemEntity, bool> deselectAllApps() {
    filesMap.updateAll((key, value) => false);
    return filesMap;
  }

  List<FileInfo> getFilesInfo() {
    final List<FileInfo> filesInfo = [];
    filesMap.forEach((key, value) {
      if (value) {
        filesInfo.add(FileInfo(
            hash: key.hashCode,
            path: key.path,
            bytesSize: key.statSync().size,
            thumbnail: null));
      }
    });
    return filesInfo;
  }

  List<File> getFiles() {
    final List<File> files = [];
    filesMap.forEach((key, value) {
      if (value) {
        files.add(File(key.path));
      }
    });
    return files;
  }
}
