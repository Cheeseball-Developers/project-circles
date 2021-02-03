// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppInfoTearOff {
  const _$AppInfoTearOff();

// ignore: unused_element
  _AppInfo call(
      {@required String appName,
      @required String packageName,
      @required Uint8List icon}) {
    return _AppInfo(
      appName: appName,
      packageName: packageName,
      icon: icon,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppInfo = _$AppInfoTearOff();

/// @nodoc
mixin _$AppInfo {
  String get appName;
  String get packageName;
  Uint8List get icon;

  @JsonKey(ignore: true)
  $AppInfoCopyWith<AppInfo> get copyWith;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res>;
  $Res call({String appName, String packageName, Uint8List icon});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res> implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  final AppInfo _value;
  // ignore: unused_field
  final $Res Function(AppInfo) _then;

  @override
  $Res call({
    Object appName = freezed,
    Object packageName = freezed,
    Object icon = freezed,
  }) {
    return _then(_value.copyWith(
      appName: appName == freezed ? _value.appName : appName as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      icon: icon == freezed ? _value.icon : icon as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$AppInfoCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$AppInfoCopyWith(_AppInfo value, $Res Function(_AppInfo) then) =
      __$AppInfoCopyWithImpl<$Res>;
  @override
  $Res call({String appName, String packageName, Uint8List icon});
}

/// @nodoc
class __$AppInfoCopyWithImpl<$Res> extends _$AppInfoCopyWithImpl<$Res>
    implements _$AppInfoCopyWith<$Res> {
  __$AppInfoCopyWithImpl(_AppInfo _value, $Res Function(_AppInfo) _then)
      : super(_value, (v) => _then(v as _AppInfo));

  @override
  _AppInfo get _value => super._value as _AppInfo;

  @override
  $Res call({
    Object appName = freezed,
    Object packageName = freezed,
    Object icon = freezed,
  }) {
    return _then(_AppInfo(
      appName: appName == freezed ? _value.appName : appName as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      icon: icon == freezed ? _value.icon : icon as Uint8List,
    ));
  }
}

/// @nodoc
class _$_AppInfo extends _AppInfo {
  const _$_AppInfo(
      {@required this.appName, @required this.packageName, @required this.icon})
      : assert(appName != null),
        assert(packageName != null),
        assert(icon != null),
        super._();

  @override
  final String appName;
  @override
  final String packageName;
  @override
  final Uint8List icon;

  @override
  String toString() {
    return 'AppInfo(appName: $appName, packageName: $packageName, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppInfo &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  _$AppInfoCopyWith<_AppInfo> get copyWith =>
      __$AppInfoCopyWithImpl<_AppInfo>(this, _$identity);
}

abstract class _AppInfo extends AppInfo {
  const _AppInfo._() : super._();
  const factory _AppInfo(
      {@required String appName,
      @required String packageName,
      @required Uint8List icon}) = _$_AppInfo;

  @override
  String get appName;
  @override
  String get packageName;
  @override
  Uint8List get icon;
  @override
  @JsonKey(ignore: true)
  _$AppInfoCopyWith<_AppInfo> get copyWith;
}
