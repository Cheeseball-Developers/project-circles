import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/file_info.dart';

@LazySingleton()
class MediaRepository {
  Map<FileInfo, bool> mediaMap;

  static Future<bool> getPermission() async {
    final result = await PhotoManager.requestPermission();
    if (!result) {
      PhotoManager.openSetting();
    }
    return result;
  }

  static Future<List<AssetPathEntity>> getAlbums() async {
    final List<AssetPathEntity> albums = await PhotoManager.getAssetPathList();
    albums.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    return albums;
  }

  Future<Map<FileInfo, bool>> getAlbumMedia(
      AssetPathEntity album, int page) async {
    final List<AssetEntity> media = await album.getAssetListPaged(page, 30);
    for (final AssetEntity entity in media) {
      final Uint8List thumbnail =
          await entity.thumbDataWithSize(192, 192, quality: 80);
      mediaMap.addAll(
        {
          FileInfo(
              hash: entity.hashCode,
              path: entity.title,
              bytesSize: 1000,
              thumbnail: thumbnail): false
        },
      );
    }
    return mediaMap;
  }

  Map<FileInfo, bool> toggleSelection({@required FileInfo fileInfo}) {
    mediaMap.update(fileInfo, (value) => !value);
    return mediaMap;
  }

  Map<FileInfo, bool> deselectAll() {
    mediaMap.updateAll((key, value) => false);
    return mediaMap;
  }

  Future<Uint8List> getThumbnail({@required FileInfo fileInfo}) {
    return null;
  }

  List<FileInfo> getFilesInfo() {
    final List<FileInfo> filesInfo = [];
    mediaMap.forEach((key, value) {
      if (value) {
        filesInfo.add(key);
      }
    });
    return filesInfo;
  }

  List<File> getFiles() {
    final List<File> files = [];
    mediaMap.forEach((key, value) {
      if (value) {
        files.add(File(key.path));
      }
    });
    return files;
  }
}
