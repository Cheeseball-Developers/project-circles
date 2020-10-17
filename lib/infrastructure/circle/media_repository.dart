import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/domain/files/media_info.dart';

@LazySingleton()
class MediaRepository {
  Map<MediaInfo, bool> mediaMap = {};

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

  Future<Map<MediaInfo, bool>> getAlbumMedia(
      AssetPathEntity album, int page) async {
    if (page == 0) {
      mediaMap = {};
    }
    final Map<MediaInfo, bool> newMedia = {};
    final List<AssetEntity> media = await album.getAssetListPaged(page, 30);
    for (final assetEntity in media) {
      final Uint8List thumbnail = await assetEntity.thumbDataWithSize(192, 192);
      newMedia.addAll({MediaInfo(entity: assetEntity, thumbnail: thumbnail): false});
    }
    mediaMap.addAll(newMedia);
    return newMedia;
  }

  bool toggleSelection({@required MediaInfo mediaInfo}) {
    mediaMap.update(mediaInfo, (value) => !value);
    return true;
  }

  bool deselectAll() {
    mediaMap.updateAll((key, value) => false);
    return true;
  }

  Future<List<FileInfo>> getFilesInfo() async {
    final List<FileInfo> filesInfo = [];
    for (final key in mediaMap.keys) {
      if (mediaMap[key]) {
        final Uint8List thumbnail = await key.entity.thumbDataWithSize(64, 64, quality: 80);
        final File file = await key.entity.originFile;
        filesInfo.add(FileInfo(
          hash: file.hashCode,
          path: file.path,
          bytesSize: file.lengthSync(),
          thumbnail: thumbnail,
        ));
      }
    }
    return filesInfo;
  }

  Future<List<File>> getFiles() async {
    final List<File> files = [];
    for (final key in mediaMap.keys) {
      if (mediaMap[key]) {
        final File file = await key.entity.originFile;
        files.add(file);
      }
    }
    return files;
  }
}
