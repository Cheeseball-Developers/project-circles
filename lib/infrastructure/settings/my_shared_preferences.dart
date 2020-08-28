import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/domain/settings/settings_object.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectcircles/domain/settings/prefs_load_failure.dart';

class MySharedPreferences {
  SharedPreferences _prefs;

  Future<Either<PrefsLoadFailure, SettingsObject>> load() async {
    return SharedPreferences.getInstance()
        .catchError((error) => left(const PrefsLoadFailure.failedToLoad()))
        .then((prefs) async {
      return right(SettingsObject(
          name: Name(_prefs.getString('name') ?? 'Generic User'),
          uid: _prefs.get('uid') as UniqueId,
          path: Directory(_prefs.getString('path')),
          askBeforeReceiving: _prefs.getBool('askBeforeReceiving'),
          darkMode: _prefs.getBool('darkMode')));
    });
  }
}
