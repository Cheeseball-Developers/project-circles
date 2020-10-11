// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:filex/filex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folder_picker/folder_picker.dart';

import '../circle_home/circle_home.dart';
import '../core/splash.dart';
import '../join_or_create_circle/join_or_create_circle.dart';
import '../settings/settings.dart';

class Routes {
  static const String splash = '/';
  static const String joinOrCreateCircle = '/join-or-create-circle';
  static const String circleHome = '/circle-home';
  static const String settings = '/Settings';
  static const String folderPickerPage = '/folder-picker-page';
  static const all = <String>{
    splash,
    joinOrCreateCircle,
    circleHome,
    settings,
    folderPickerPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splash, page: Splash),
    RouteDef(Routes.joinOrCreateCircle, page: JoinOrCreateCircle),
    RouteDef(Routes.circleHome, page: CircleHome),
    RouteDef(Routes.settings, page: Settings),
    RouteDef(Routes.folderPickerPage, page: FolderPickerPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Splash: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Splash(),
        settings: data,
      );
    },
    JoinOrCreateCircle: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => JoinOrCreateCircle(),
        settings: data,
      );
    },
    CircleHome: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CircleHome(),
        settings: data,
      );
    },
    Settings: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Settings(),
        settings: data,
      );
    },
    FolderPickerPage: (data) {
      final args = data.getArgs<FolderPickerPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => FolderPickerPage(
          action: args.action,
          rootDirectory: args.rootDirectory,
          controller: args.controller,
          compact: args.compact,
          pickerIcon: args.pickerIcon,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// FolderPickerPage arguments holder class
class FolderPickerPageArguments {
  final Future<void> Function(BuildContext, Directory) action;
  final Directory rootDirectory;
  final FilexController controller;
  final bool compact;
  final Icon pickerIcon;
  FolderPickerPageArguments(
      {@required this.action,
      @required this.rootDirectory,
      this.controller,
      this.compact = false,
      this.pickerIcon =
          const Icon(Icons.check_circle, color: Colors.grey, size: 20.0)});
}
