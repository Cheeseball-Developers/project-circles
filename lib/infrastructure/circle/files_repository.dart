import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:projectcircles/domain/files/file_info.dart';

@LazySingleton()
class FilesRepository {
  final String root = '/storage/emulated/0';

  List<FileSystemEntity> _foldersList = [];
  Map<FileSystemEntity, bool> _filesMap = {};

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

  String openDirectory(String relativePath) {
    final Directory dir = Directory(root + relativePath);
    final List<FileSystemEntity> entities = dir.listSync();
    _foldersList = [];
    _filesMap = {};
    for (final entity in entities) {
      if (entity.path.substring(
              entity.parent.path.length + 1, entity.parent.path.length + 2) ==
          '.') {
        continue;
      }
      if (FileSystemEntity.isFileSync(entity.path)) {
        _filesMap.addAll({entity: false});
      } else {
        _foldersList.add(entity);
      }
    }
    return relativePath;
  }

  List<FileSystemEntity> getFolderEntities() => _foldersList;

  Map<FileSystemEntity, bool> getFileEntities() => _filesMap;

  bool toggleSelection({@required FileSystemEntity entity}) {
    _filesMap.update(entity, (value) => !value);
    return true;
  }

  bool deselectAll() {
    _filesMap.updateAll((key, value) => false);
    return true;
  }

  List<FileInfo> getFilesInfo() {
    final List<FileInfo> filesInfo = [];
    _filesMap.forEach((key, value) {
      if (value) {
        filesInfo.add(FileInfo(
            name: key.path.substring(key.path.lastIndexOf('/') + 1),
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
    _filesMap.forEach((key, value) {
      if (value) {
        files.add(File(key.path));
      }
    });
    return files;
  }
}
