import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/domain/settings/settings_object.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectcircles/domain/settings/settings_failure.dart';

@Singleton()
class MySharedPreferences {
  SharedPreferences? _prefs;

  Future<Either<SettingsFailure, SettingsObject>> load() async {
    return SharedPreferences.getInstance()
        .catchError(
            (error) => left(const SettingsFailure.instanceLoadFailure()))
        .then((prefs) async {
      _prefs = prefs;
      if (_prefs!.getString('name')==null) {
        return left(const SettingsFailure.idAndNameNotSet());
      }
      return right(SettingsObject(
          name: Name(_prefs!.getString('name')!),
          uid: UniqueId.fromUniqueString(_prefs!.get('id')! as String),
          directory: Directory(_prefs!.getString('fileSavePath') ?? '/'),
          askBeforeReceiving: _prefs!.getBool('askBeforeReceiving') ?? false,
          darkMode: _prefs!.getBool('darkMode') ?? false));
    });
  }

  Future<Option<SettingsFailure>> setBool(
      {required String key, required bool value}) async {
    try {
      _prefs!.setBool(key, value);
      return none();
    } catch (e) {
      return some(const SettingsFailure.valueSaveFailure());
    }
  }

  Future<Option<SettingsFailure>> setName({required Name name}) async {
    return _setString('name', name.getOrCrash());
  }

  Future<Option<SettingsFailure>> setUid({required UniqueId uid}) async {
    return _setString('id', uid.getOrCrash());
  }

  Future<Option<SettingsFailure>> setDirectory({required Directory directory}) async {
    return _setString('fileSavePath', directory.path);
  }

  Future<Either<SettingsFailure, Directory>> getDirectory() async {
    return right(Directory(_prefs!.getString('fileSavePath') ?? '/storage/emulated/0/Download/Circles'));
  }

  Future<Option<SettingsFailure>> _setString(String key, String value) async {
    try {
      await _prefs!.setString(key, value);
      return none();
    } catch (_) {
      return some(const SettingsFailure.valueSaveFailure());
    }
  }
}
