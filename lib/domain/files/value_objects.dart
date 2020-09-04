import 'package:dartz/dartz.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/foundation.dart';
import 'package:projectcircles/domain/core/failures.dart';
import 'package:projectcircles/domain/core/value_objects.dart';

@immutable
class AppObject extends ValueObject<ApplicationWithIcon> {
  @override
  final Either<ValueFailure<ApplicationWithIcon>, ApplicationWithIcon> value;
  final bool selected;

  bool get isSelected => selected;

  factory AppObject(ApplicationWithIcon app, {@required bool selected}) {
    return AppObject._(right(app), selected);
  }

  const AppObject._(this.value, this.selected);
}