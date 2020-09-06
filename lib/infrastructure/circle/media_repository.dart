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

  static Future<List<MediaObject>> getRecentImages() async {
    final List<AssetPathEntity> albums =
    await PhotoManager.getAssetPathList(onlyAll: true);
    final List<AssetEntity> media = await albums[0].getAssetListPaged(0, 20);
    final List<MediaObject> mediaObjects = [];
    media.forEach((assetEntity) {
      mediaObjects.add(MediaObject(assetEntity, selected: false));
    });
    return mediaObjects;
  }
}