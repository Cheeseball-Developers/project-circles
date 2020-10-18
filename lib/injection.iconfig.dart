// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:projectcircles/infrastructure/circle/apps_repository.dart';
import 'package:projectcircles/application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'package:projectcircles/infrastructure/settings/device_info_injectable_module.dart';
import 'package:device_info/device_info.dart';
import 'package:projectcircles/infrastructure/circle/files_repository.dart';
import 'package:projectcircles/application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';
import 'package:projectcircles/infrastructure/settings/device_info.dart';
import 'package:projectcircles/domain/settings/i_device_info.dart';
import 'package:projectcircles/infrastructure/circle/media_repository.dart';
import 'package:projectcircles/application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'package:projectcircles/infrastructure/settings/my_shared_preferences.dart';
import 'package:projectcircles/infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final deviceInfoInjectableModule = _$DeviceInfoInjectableModule();
  g.registerLazySingleton<AppsRepository>(() => AppsRepository());
  g.registerFactory<AppsTabViewBloc>(
      () => AppsTabViewBloc(g<AppsRepository>()));
  g.registerLazySingleton<DeviceInfoPlugin>(
      () => deviceInfoInjectableModule.deviceInfo);
  g.registerLazySingleton<FilesRepository>(() => FilesRepository());
  g.registerFactory<FilesTabViewBloc>(
      () => FilesTabViewBloc(g<FilesRepository>()));
  g.registerLazySingleton<IDeviceInfo>(() => DeviceInfo(g<DeviceInfoPlugin>()));
  g.registerLazySingleton<MediaRepository>(() => MediaRepository());
  g.registerFactory<MediaTabViewBloc>(
      () => MediaTabViewBloc(g<MediaRepository>()));
  g.registerFactory<MySharedPreferences>(() => MySharedPreferences());
  g.registerLazySingleton<NearbyConnections>(() => NearbyConnections());
  g.registerFactory<SearchBloc>(() => SearchBloc());
  g.registerFactory<SettingsBloc>(
      () => SettingsBloc(g<IDeviceInfo>(), g<MySharedPreferences>()));
  g.registerFactory<CurrentCircleBloc>(() => CurrentCircleBloc(
        g<AppsRepository>(),
        g<MediaRepository>(),
        g<FilesRepository>(),
      ));
}

class _$DeviceInfoInjectableModule extends DeviceInfoInjectableModule {}
