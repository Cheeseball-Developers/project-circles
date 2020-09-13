import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/files/value_objects.dart';

class MediaRepository {
  static Future<bool> getPermission() async {
    final result = await PhotoManager.requestPermission();
    if (result) {
      List<AssetPathEntity> albums =
          await PhotoManager.getAssetPathList(onlyAll: true);
    } else {
      PhotoManager.openSetting();
    }
    return result;
  }

  static Future<List<AssetPathEntity>> getAlbums() async {
    final List<AssetPathEntity> albums =
        await PhotoManager.getAssetPathList(hasAll: true);
    albums.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    return albums;
  }

  static Future<List<MediaObject>> getAlbumMedia(
      AssetPathEntity album, int page) async {
    final List<AssetEntity> media = await album.getAssetListPaged(page, 30);
    final List<MediaObject> mediaObjects = [];
    for (AssetEntity entity in media) {
      mediaObjects.add(MediaObject(
          entity, await entity.thumbDataWithSize(200, 200),
          selected: false));
    }
    return mediaObjects;
  }
}
