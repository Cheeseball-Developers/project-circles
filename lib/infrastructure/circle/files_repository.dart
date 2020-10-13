import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@Singleton()
class FilesRepository {
  Directory root = Directory('/storage/emulated/0');

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

  List<FileSystemEntity> getFoldersAndFiles(Directory dir) {
    return dir.listSync();
  }
}
