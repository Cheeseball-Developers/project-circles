// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/circle/circle_home/apps_tab_view/apps_tab_view_bloc.dart';
import 'application/circle/circle_home/circle_home_bloc.dart';
import 'application/circle/current_circle/current_circle_bloc.dart';
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
  gh.factory<AppsTabViewBloc>(() => AppsTabViewBloc());
  gh.factory<CircleHomeBloc>(() => CircleHomeBloc());
  gh.factory<CurrentCircleBloc>(() => CurrentCircleBloc());
  gh.factory<SearchBloc>(() => SearchBloc());
  gh.factory<SettingsBloc>(() => SettingsBloc());
  return get;
}
