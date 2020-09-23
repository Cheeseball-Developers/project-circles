// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discovered_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DiscoveredDeviceTearOff {
  const _$DiscoveredDeviceTearOff();

// ignore: unused_element
  _DiscoveredDevice call(
      {@required String endId,
      @required String username,
      @required bool acceptOrReject}) {
    return _DiscoveredDevice(
      endId: endId,
      username: username,
      acceptOrReject: acceptOrReject,
    );
  }
}

// ignore: unused_element
const $DiscoveredDevice = _$DiscoveredDeviceTearOff();

mixin _$DiscoveredDevice {
  String get endId;
  String get username;
  bool get acceptOrReject;

  $DiscoveredDeviceCopyWith<DiscoveredDevice> get copyWith;
}

abstract class $DiscoveredDeviceCopyWith<$Res> {
  factory $DiscoveredDeviceCopyWith(
          DiscoveredDevice value, $Res Function(DiscoveredDevice) then) =
      _$DiscoveredDeviceCopyWithImpl<$Res>;
  $Res call({String endId, String username, bool acceptOrReject});
}

class _$DiscoveredDeviceCopyWithImpl<$Res>
    implements $DiscoveredDeviceCopyWith<$Res> {
  _$DiscoveredDeviceCopyWithImpl(this._value, this._then);

  final DiscoveredDevice _value;
  // ignore: unused_field
  final $Res Function(DiscoveredDevice) _then;

  @override
  $Res call({
    Object endId = freezed,
    Object username = freezed,
    Object acceptOrReject = freezed,
  }) {
    return _then(_value.copyWith(
      endId: endId == freezed ? _value.endId : endId as String,
      username: username == freezed ? _value.username : username as String,
      acceptOrReject: acceptOrReject == freezed
          ? _value.acceptOrReject
          : acceptOrReject as bool,
    ));
  }
}

abstract class _$DiscoveredDeviceCopyWith<$Res>
    implements $DiscoveredDeviceCopyWith<$Res> {
  factory _$DiscoveredDeviceCopyWith(
          _DiscoveredDevice value, $Res Function(_DiscoveredDevice) then) =
      __$DiscoveredDeviceCopyWithImpl<$Res>;
  @override
  $Res call({String endId, String username, bool acceptOrReject});
}

class __$DiscoveredDeviceCopyWithImpl<$Res>
    extends _$DiscoveredDeviceCopyWithImpl<$Res>
    implements _$DiscoveredDeviceCopyWith<$Res> {
  __$DiscoveredDeviceCopyWithImpl(
      _DiscoveredDevice _value, $Res Function(_DiscoveredDevice) _then)
      : super(_value, (v) => _then(v as _DiscoveredDevice));

  @override
  _DiscoveredDevice get _value => super._value as _DiscoveredDevice;

  @override
  $Res call({
    Object endId = freezed,
    Object username = freezed,
    Object acceptOrReject = freezed,
  }) {
    return _then(_DiscoveredDevice(
      endId: endId == freezed ? _value.endId : endId as String,
      username: username == freezed ? _value.username : username as String,
      acceptOrReject: acceptOrReject == freezed
          ? _value.acceptOrReject
          : acceptOrReject as bool,
    ));
  }
}

class _$_DiscoveredDevice
    with DiagnosticableTreeMixin
    implements _DiscoveredDevice {
  const _$_DiscoveredDevice(
      {@required this.endId,
      @required this.username,
      @required this.acceptOrReject})
      : assert(endId != null),
        assert(username != null),
        assert(acceptOrReject != null);

  @override
  final String endId;
  @override
  final String username;
  @override
  final bool acceptOrReject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiscoveredDevice(endId: $endId, username: $username, acceptOrReject: $acceptOrReject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiscoveredDevice'))
      ..add(DiagnosticsProperty('endId', endId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('acceptOrReject', acceptOrReject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoveredDevice &&
            (identical(other.endId, endId) ||
                const DeepCollectionEquality().equals(other.endId, endId)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.acceptOrReject, acceptOrReject) ||
                const DeepCollectionEquality()
                    .equals(other.acceptOrReject, acceptOrReject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(endId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(acceptOrReject);

  @override
  _$DiscoveredDeviceCopyWith<_DiscoveredDevice> get copyWith =>
      __$DiscoveredDeviceCopyWithImpl<_DiscoveredDevice>(this, _$identity);
}

abstract class _DiscoveredDevice implements DiscoveredDevice {
  const factory _DiscoveredDevice(
      {@required String endId,
      @required String username,
      @required bool acceptOrReject}) = _$_DiscoveredDevice;

  @override
  String get endId;
  @override
  String get username;
  @override
  bool get acceptOrReject;
  @override
  _$DiscoveredDeviceCopyWith<_DiscoveredDevice> get copyWith;
}
