// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../circle_home/circle_home.dart';
import '../core/splash.dart';
import '../join_or_create_circle/join_or_create_circle.dart';
import '../settings/settings.dart';

class Routes {
  static const String splash = '/';
  static const String joinOrCreateCircle = '/join-or-create-circle';
  static const String circleHome = '/circle-home';
  static const String settings = '/Settings';
  static const all = <String>{
    splash,
    joinOrCreateCircle,
    circleHome,
    settings,
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
  };
}
