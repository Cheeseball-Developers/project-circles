import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/foundation.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:projectcircles/domain/core/failures.dart';
import 'package:projectcircles/domain/core/value_objects.dart';

@immutable
class AppObject extends ValueObject<Application> {
  @override
  final Either<ValueFailure<ApplicationWithIcon>, Application> value;
  final Uint8List icon;
  final bool selected;

  bool get isSelected => selected;

  factory AppObject(Application app, Uint8List icon, {@required bool selected}) {
    return AppObject._(right(app), icon, selected);
  }

  const AppObject._(this.value, this.icon, this.selected);
}

@immutable
class MediaObject extends ValueObject<AssetEntity> {
  @override
  final Either<ValueFailure<AssetEntity>, AssetEntity> value;
  final bool selected;
  final Uint8List thumbnail;

  bool get isSelected => selected;

  factory MediaObject(AssetEntity value, Uint8List thumbnail, {@required bool selected}) {
    return MediaObject._(right(value), thumbnail, selected);
  }

  const MediaObject._(this.value, this.thumbnail, this.selected);
}
