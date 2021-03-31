// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info/device_info.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart'
    as _i4;
import 'application/circle/circle_home/files_tab_view/files_tab_view_bloc.dart'
    as _i9;
import 'application/circle/circle_home/media_tab_view/media_tab_view_bloc.dart'
    as _i14;
import 'application/circle/current_circle/current_circle_bloc.dart' as _i20;
import 'application/circle/search/search_bloc.dart' as _i17;
import 'application/files/file_transfer/file_transfer_bloc.dart' as _i19;
import 'application/files/files_history/files_history_bloc.dart' as _i6;
import 'application/settings/folder_picker/folder_picker_bloc.dart' as _i10;
import 'application/settings/settings_bloc.dart' as _i18;
import 'domain/settings/i_device_info.dart' as _i11;
import 'infrastructure/circle/apps_repository.dart' as _i3;
import 'infrastructure/circle/files_repository.dart' as _i8;
import 'infrastructure/circle/media_repository.dart' as _i13;
import 'infrastructure/database/app_database.dart' as _i7;
import 'infrastructure/nearby_connections/nearby_connections_repository.dart'
    as _i15;
import 'infrastructure/settings/device_info.dart' as _i12;
import 'infrastructure/settings/device_info_injectable_module.dart' as _i21;
import 'infrastructure/settings/my_shared_preferences.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final deviceInfoInjectableModule = _$DeviceInfoInjectableModule();
  gh.lazySingleton<_i3.AppsRepository>(() => _i3.AppsRepository());
  gh.factory<_i4.AppsTabViewBloc>(
      () => _i4.AppsTabViewBloc(get<_i3.AppsRepository>()));
  gh.lazySingleton<_i5.DeviceInfoPlugin>(
      () => deviceInfoInjectableModule.deviceInfo);
  gh.factory<_i6.FilesHistoryBloc>(
      () => _i6.FilesHistoryBloc(get<_i7.AppDatabase>()));
  gh.lazySingleton<_i8.FilesRepository>(() => _i8.FilesRepository());
  gh.factory<_i9.FilesTabViewBloc>(
      () => _i9.FilesTabViewBloc(get<_i8.FilesRepository>()));
  gh.factory<_i10.FolderPickerBloc>(() => _i10.FolderPickerBloc());
  gh.lazySingleton<_i11.IDeviceInfo>(
      () => _i12.DeviceInfo(get<_i5.DeviceInfoPlugin>()));
  gh.lazySingleton<_i13.MediaRepository>(() => _i13.MediaRepository());
  gh.factory<_i14.MediaTabViewBloc>(
      () => _i14.MediaTabViewBloc(get<_i13.MediaRepository>()));
  gh.lazySingleton<_i15.NearbyConnections>(() => _i15.NearbyConnections(
      get<_i7.AppDatabase>(), get<_i16.MySharedPreferences>()));
  gh.lazySingleton<_i17.SearchBloc>(
      () => _i17.SearchBloc(get<_i15.NearbyConnections>()));
  gh.factory<_i18.SettingsBloc>(() => _i18.SettingsBloc(
      get<_i11.IDeviceInfo>(), get<_i16.MySharedPreferences>()));
  gh.lazySingleton<_i19.FileTransferBloc>(() => _i19.FileTransferBloc(
      get<_i3.AppsRepository>(),
      get<_i13.MediaRepository>(),
      get<_i8.FilesRepository>(),
      get<_i15.NearbyConnections>()));
  gh.singleton<_i7.AppDatabase>(_i7.AppDatabase());
  gh.singleton<_i16.MySharedPreferences>(_i16.MySharedPreferences());
  gh.singleton<_i20.CurrentCircleBloc>(
      _i20.CurrentCircleBloc(get<_i15.NearbyConnections>()));
  return get;
}

class _$DeviceInfoInjectableModule extends _i21.DeviceInfoInjectableModule {}
