import 'package:auto_route/annotations.dart';
import 'package:projectcircles/presentation/core/splash.dart';
import 'package:projectcircles/presentation/join_or_create_circle/join_or_create_circle.dart';
import 'package:projectcircles/presentation/circle_home/circle_home.dart';
import 'package:projectcircles/presentation/settings/settings.dart';

@MaterialAutoRouter(
  usesLegacyGenerator: true,
  routes: <AutoRoute>[
    MaterialRoute(page: Splash, initial: true),
    MaterialRoute(page: JoinOrCreateCircle),
    MaterialRoute(page: CircleHome),
    MaterialRoute(page: Settings),
  ]
)
class $Router {}