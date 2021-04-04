// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/legacy.dart';
import 'package:flutter/material.dart';

import '../about/about.dart';
import '../circle_home/circle_home.dart';
import '../core/splash.dart';
import '../join_or_create_circle/join_or_create_circle.dart';
import '../settings/settings.dart';

class Routes {
  static const String splashRoute = '/';
  static const String joinOrCreateCircleRoute = '/join-or-create-circle';
  static const String circleHomeRoute = '/circle-home';
  static const String settingsRoute = '/Settings';
  static const String aboutRoute = '/About';
  static const all = <String>{
    splashRoute,
    joinOrCreateCircleRoute,
    circleHomeRoute,
    settingsRoute,
    aboutRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashRoute, page: Splash),
    RouteDef(Routes.joinOrCreateCircleRoute, page: JoinOrCreateCircle),
    RouteDef(Routes.circleHomeRoute, page: CircleHome),
    RouteDef(Routes.settingsRoute, page: Settings),
    RouteDef(Routes.aboutRoute, page: About),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Splash: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Splash(),
        settings: data,
        fullscreenDialog: false,
        maintainState: true,
      );
    },
    JoinOrCreateCircle: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => JoinOrCreateCircle(),
        settings: data,
        fullscreenDialog: false,
        maintainState: true,
      );
    },
    CircleHome: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CircleHome(),
        settings: data,
        fullscreenDialog: false,
        maintainState: true,
      );
    },
    Settings: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Settings(),
        settings: data,
        fullscreenDialog: false,
        maintainState: true,
      );
    },
    About: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => About(),
        settings: data,
        fullscreenDialog: false,
        maintainState: true,
      );
    },
  };
}
