// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../circle_home/circle_home.dart';
import '../join_or_create_circle/join_or_create_circle.dart';

class Routes {
  static const String joinOrCreateCircle = '/';
  static const String circleHome = '/circle-home';
  static const all = <String>{
    joinOrCreateCircle,
    circleHome,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.joinOrCreateCircle, page: JoinOrCreateCircle),
    RouteDef(Routes.circleHome, page: CircleHome),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
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
  };
}
