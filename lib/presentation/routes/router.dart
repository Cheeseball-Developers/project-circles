import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:folder_picker/folder_picker.dart';
import 'package:projectcircles/presentation/join_or_create_circle/join_or_create_circle.dart';
import 'package:projectcircles/presentation/circle_home/circle_home.dart';
import 'package:projectcircles/presentation/settings/settings.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: JoinOrCreateCircle, initial: true),
    MaterialRoute(page: CircleHome),
    MaterialRoute(page: Settings),
    MaterialRoute(page: FolderPickerPage)
  ]
)
class $Router {}