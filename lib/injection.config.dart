// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info/device_info.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/circle/apps_repository.dart';
import 'application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'application/circle/current_circle/current_circle_bloc.dart';
import 'infrastructure/settings/device_info.dart';
import 'infrastructure/settings/device_info_injectable_module.dart';
import 'application/files/file_transfer/file_transfer_bloc.dart';
import 'infrastructure/circle/files_repository.dart';
import 'application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart';
import 'application/settings/folder_picker/folder_picker_bloc.dart';
import 'domain/settings/i_device_info.dart';
import 'infrastructure/circle/media_repository.dart';
import 'application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart';
import 'infrastructure/settings/my_shared_preferences.dart';
import 'infrastructure/nearby_connections/nearby_connections_repository.dart';
import 'application/circle/join_or_create_circle/search_bloc.dart';
import 'application/settings/settings_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final deviceInfoInjectableModule = _$DeviceInfoInjectableModule();
  gh.lazySingleton<AppsRepository>(() => AppsRepository());
  gh.factory<AppsTabViewBloc>(() => AppsTabViewBloc(get<AppsRepository>()));
  gh.lazySingleton<DeviceInfoPlugin>(
      () => deviceInfoInjectableModule.deviceInfo);
  gh.lazySingleton<FilesRepository>(() => FilesRepository());
  gh.factory<FilesTabViewBloc>(() => FilesTabViewBloc(get<FilesRepository>()));
  gh.factory<FolderPickerBloc>(() => FolderPickerBloc());
  gh.lazySingleton<IDeviceInfo>(() => DeviceInfo(get<DeviceInfoPlugin>()));
  gh.lazySingleton<MediaRepository>(() => MediaRepository());
  gh.factory<MediaTabViewBloc>(() => MediaTabViewBloc(get<MediaRepository>()));
  gh.factory<MySharedPreferences>(() => MySharedPreferences());
  gh.lazySingleton<NearbyConnections>(() => NearbyConnections());
  gh.factory<SearchBloc>(() => SearchBloc(get<NearbyConnections>()));
  gh.factory<SettingsBloc>(
      () => SettingsBloc(get<IDeviceInfo>(), get<MySharedPreferences>()));
  gh.factory<CurrentCircleBloc>(
      () => CurrentCircleBloc(get<NearbyConnections>()));
  gh.factory<FileTransferBloc>(() => FileTransferBloc(
        get<AppsRepository>(),
        get<MediaRepository>(),
        get<FilesRepository>(),
        get<NearbyConnections>(),
      ));
  return get;
}

class _$DeviceInfoInjectableModule extends DeviceInfoInjectableModule {}
