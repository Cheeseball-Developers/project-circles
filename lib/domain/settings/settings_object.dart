import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:projectcircles/domain/core/value_objects.dart';

class SettingsObject {
  Name name;
  UniqueId uid;
  Directory path;
  bool askBeforeReceiving;
  bool darkMode;

  SettingsObject(
      {@required this.name,
      @required this.uid,
      @required this.path,
      @required this.askBeforeReceiving,
      @required this.darkMode}) {
    assert(name != null);
    assert(uid != null);
    assert(path != null);
    assert(askBeforeReceiving != null);
    assert(darkMode != null);
  }
}
