// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  StartSearching startSearching() {
    return const StartSearching();
  }

  DeviceDiscovered deviceDiscovered(User user) {
    return DeviceDiscovered(
      user,
    );
  }

  ShowAllDiscoveredDevices showAllDiscoveredDevices() {
    return const ShowAllDiscoveredDevices();
  }

  DismissAllDiscoveredDevices dismissAllDiscoveredDevices() {
    return const DismissAllDiscoveredDevices();
  }

  DeviceLost deviceLost({required String uidString}) {
    return DeviceLost(
      uidString: uidString,
    );
  }

  StopSearching stopSearching() {
    return const StopSearching();
  }

  RequestConnection requestConnection({required User discoveredUser}) {
    return RequestConnection(
      discoveredUser: discoveredUser,
    );
  }

  ConnectionResult connectionResult(
      Either<ConnectionFailure, Unit> connectionStatus) {
    return ConnectionResult(
      connectionStatus,
    );
  }

  EndConnectionRequest endConnectionRequest({required User cancelRequestUser}) {
    return EndConnectionRequest(
      cancelRequestUser: cancelRequestUser,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class $StartSearchingCopyWith<$Res> {
  factory $StartSearchingCopyWith(
          StartSearching value, $Res Function(StartSearching) then) =
      _$StartSearchingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartSearchingCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $StartSearchingCopyWith<$Res> {
  _$StartSearchingCopyWithImpl(
      StartSearching _value, $Res Function(StartSearching) _then)
      : super(_value, (v) => _then(v as StartSearching));

  @override
  StartSearching get _value => super._value as StartSearching;
}

/// @nodoc
class _$StartSearching implements StartSearching {
  const _$StartSearching();

  @override
  String toString() {
    return 'SearchEvent.startSearching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartSearching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return startSearching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (startSearching != null) {
      return startSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return startSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (startSearching != null) {
      return startSearching(this);
    }
    return orElse();
  }
}

abstract class StartSearching implements SearchEvent {
  const factory StartSearching() = _$StartSearching;
}

/// @nodoc
abstract class $DeviceDiscoveredCopyWith<$Res> {
  factory $DeviceDiscoveredCopyWith(
          DeviceDiscovered value, $Res Function(DeviceDiscovered) then) =
      _$DeviceDiscoveredCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DeviceDiscoveredCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $DeviceDiscoveredCopyWith<$Res> {
  _$DeviceDiscoveredCopyWithImpl(
      DeviceDiscovered _value, $Res Function(DeviceDiscovered) _then)
      : super(_value, (v) => _then(v as DeviceDiscovered));

  @override
  DeviceDiscovered get _value => super._value as DeviceDiscovered;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(DeviceDiscovered(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$DeviceDiscovered implements DeviceDiscovered {
  const _$DeviceDiscovered(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'SearchEvent.deviceDiscovered(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceDiscovered &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $DeviceDiscoveredCopyWith<DeviceDiscovered> get copyWith =>
      _$DeviceDiscoveredCopyWithImpl<DeviceDiscovered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return deviceDiscovered(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (deviceDiscovered != null) {
      return deviceDiscovered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return deviceDiscovered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (deviceDiscovered != null) {
      return deviceDiscovered(this);
    }
    return orElse();
  }
}

abstract class DeviceDiscovered implements SearchEvent {
  const factory DeviceDiscovered(User user) = _$DeviceDiscovered;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDiscoveredCopyWith<DeviceDiscovered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAllDiscoveredDevicesCopyWith<$Res> {
  factory $ShowAllDiscoveredDevicesCopyWith(ShowAllDiscoveredDevices value,
          $Res Function(ShowAllDiscoveredDevices) then) =
      _$ShowAllDiscoveredDevicesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowAllDiscoveredDevicesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $ShowAllDiscoveredDevicesCopyWith<$Res> {
  _$ShowAllDiscoveredDevicesCopyWithImpl(ShowAllDiscoveredDevices _value,
      $Res Function(ShowAllDiscoveredDevices) _then)
      : super(_value, (v) => _then(v as ShowAllDiscoveredDevices));

  @override
  ShowAllDiscoveredDevices get _value =>
      super._value as ShowAllDiscoveredDevices;
}

/// @nodoc
class _$ShowAllDiscoveredDevices implements ShowAllDiscoveredDevices {
  const _$ShowAllDiscoveredDevices();

  @override
  String toString() {
    return 'SearchEvent.showAllDiscoveredDevices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowAllDiscoveredDevices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return showAllDiscoveredDevices();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (showAllDiscoveredDevices != null) {
      return showAllDiscoveredDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return showAllDiscoveredDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (showAllDiscoveredDevices != null) {
      return showAllDiscoveredDevices(this);
    }
    return orElse();
  }
}

abstract class ShowAllDiscoveredDevices implements SearchEvent {
  const factory ShowAllDiscoveredDevices() = _$ShowAllDiscoveredDevices;
}

/// @nodoc
abstract class $DismissAllDiscoveredDevicesCopyWith<$Res> {
  factory $DismissAllDiscoveredDevicesCopyWith(
          DismissAllDiscoveredDevices value,
          $Res Function(DismissAllDiscoveredDevices) then) =
      _$DismissAllDiscoveredDevicesCopyWithImpl<$Res>;
}

/// @nodoc
class _$DismissAllDiscoveredDevicesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $DismissAllDiscoveredDevicesCopyWith<$Res> {
  _$DismissAllDiscoveredDevicesCopyWithImpl(DismissAllDiscoveredDevices _value,
      $Res Function(DismissAllDiscoveredDevices) _then)
      : super(_value, (v) => _then(v as DismissAllDiscoveredDevices));

  @override
  DismissAllDiscoveredDevices get _value =>
      super._value as DismissAllDiscoveredDevices;
}

/// @nodoc
class _$DismissAllDiscoveredDevices implements DismissAllDiscoveredDevices {
  const _$DismissAllDiscoveredDevices();

  @override
  String toString() {
    return 'SearchEvent.dismissAllDiscoveredDevices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DismissAllDiscoveredDevices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return dismissAllDiscoveredDevices();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (dismissAllDiscoveredDevices != null) {
      return dismissAllDiscoveredDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return dismissAllDiscoveredDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (dismissAllDiscoveredDevices != null) {
      return dismissAllDiscoveredDevices(this);
    }
    return orElse();
  }
}

abstract class DismissAllDiscoveredDevices implements SearchEvent {
  const factory DismissAllDiscoveredDevices() = _$DismissAllDiscoveredDevices;
}

/// @nodoc
abstract class $DeviceLostCopyWith<$Res> {
  factory $DeviceLostCopyWith(
          DeviceLost value, $Res Function(DeviceLost) then) =
      _$DeviceLostCopyWithImpl<$Res>;
  $Res call({String uidString});
}

/// @nodoc
class _$DeviceLostCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $DeviceLostCopyWith<$Res> {
  _$DeviceLostCopyWithImpl(DeviceLost _value, $Res Function(DeviceLost) _then)
      : super(_value, (v) => _then(v as DeviceLost));

  @override
  DeviceLost get _value => super._value as DeviceLost;

  @override
  $Res call({
    Object? uidString = freezed,
  }) {
    return _then(DeviceLost(
      uidString: uidString == freezed
          ? _value.uidString
          : uidString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$DeviceLost implements DeviceLost {
  const _$DeviceLost({required this.uidString});

  @override
  final String uidString;

  @override
  String toString() {
    return 'SearchEvent.deviceLost(uidString: $uidString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceLost &&
            (identical(other.uidString, uidString) ||
                const DeepCollectionEquality()
                    .equals(other.uidString, uidString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uidString);

  @JsonKey(ignore: true)
  @override
  $DeviceLostCopyWith<DeviceLost> get copyWith =>
      _$DeviceLostCopyWithImpl<DeviceLost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return deviceLost(uidString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (deviceLost != null) {
      return deviceLost(uidString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return deviceLost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (deviceLost != null) {
      return deviceLost(this);
    }
    return orElse();
  }
}

abstract class DeviceLost implements SearchEvent {
  const factory DeviceLost({required String uidString}) = _$DeviceLost;

  String get uidString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceLostCopyWith<DeviceLost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopSearchingCopyWith<$Res> {
  factory $StopSearchingCopyWith(
          StopSearching value, $Res Function(StopSearching) then) =
      _$StopSearchingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopSearchingCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $StopSearchingCopyWith<$Res> {
  _$StopSearchingCopyWithImpl(
      StopSearching _value, $Res Function(StopSearching) _then)
      : super(_value, (v) => _then(v as StopSearching));

  @override
  StopSearching get _value => super._value as StopSearching;
}

/// @nodoc
class _$StopSearching implements StopSearching {
  const _$StopSearching();

  @override
  String toString() {
    return 'SearchEvent.stopSearching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopSearching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return stopSearching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (stopSearching != null) {
      return stopSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return stopSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (stopSearching != null) {
      return stopSearching(this);
    }
    return orElse();
  }
}

abstract class StopSearching implements SearchEvent {
  const factory StopSearching() = _$StopSearching;
}

/// @nodoc
abstract class $RequestConnectionCopyWith<$Res> {
  factory $RequestConnectionCopyWith(
          RequestConnection value, $Res Function(RequestConnection) then) =
      _$RequestConnectionCopyWithImpl<$Res>;
  $Res call({User discoveredUser});

  $UserCopyWith<$Res> get discoveredUser;
}

/// @nodoc
class _$RequestConnectionCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $RequestConnectionCopyWith<$Res> {
  _$RequestConnectionCopyWithImpl(
      RequestConnection _value, $Res Function(RequestConnection) _then)
      : super(_value, (v) => _then(v as RequestConnection));

  @override
  RequestConnection get _value => super._value as RequestConnection;

  @override
  $Res call({
    Object? discoveredUser = freezed,
  }) {
    return _then(RequestConnection(
      discoveredUser: discoveredUser == freezed
          ? _value.discoveredUser
          : discoveredUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get discoveredUser {
    return $UserCopyWith<$Res>(_value.discoveredUser, (value) {
      return _then(_value.copyWith(discoveredUser: value));
    });
  }
}

/// @nodoc
class _$RequestConnection implements RequestConnection {
  const _$RequestConnection({required this.discoveredUser});

  @override
  final User discoveredUser;

  @override
  String toString() {
    return 'SearchEvent.requestConnection(discoveredUser: $discoveredUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestConnection &&
            (identical(other.discoveredUser, discoveredUser) ||
                const DeepCollectionEquality()
                    .equals(other.discoveredUser, discoveredUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discoveredUser);

  @JsonKey(ignore: true)
  @override
  $RequestConnectionCopyWith<RequestConnection> get copyWith =>
      _$RequestConnectionCopyWithImpl<RequestConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return requestConnection(discoveredUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (requestConnection != null) {
      return requestConnection(discoveredUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return requestConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (requestConnection != null) {
      return requestConnection(this);
    }
    return orElse();
  }
}

abstract class RequestConnection implements SearchEvent {
  const factory RequestConnection({required User discoveredUser}) =
      _$RequestConnection;

  User get discoveredUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestConnectionCopyWith<RequestConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionResultCopyWith<$Res> {
  factory $ConnectionResultCopyWith(
          ConnectionResult value, $Res Function(ConnectionResult) then) =
      _$ConnectionResultCopyWithImpl<$Res>;
  $Res call({Either<ConnectionFailure, Unit> connectionStatus});
}

/// @nodoc
class _$ConnectionResultCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $ConnectionResultCopyWith<$Res> {
  _$ConnectionResultCopyWithImpl(
      ConnectionResult _value, $Res Function(ConnectionResult) _then)
      : super(_value, (v) => _then(v as ConnectionResult));

  @override
  ConnectionResult get _value => super._value as ConnectionResult;

  @override
  $Res call({
    Object? connectionStatus = freezed,
  }) {
    return _then(ConnectionResult(
      connectionStatus == freezed
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as Either<ConnectionFailure, Unit>,
    ));
  }
}

/// @nodoc
class _$ConnectionResult implements ConnectionResult {
  const _$ConnectionResult(this.connectionStatus);

  @override
  final Either<ConnectionFailure, Unit> connectionStatus;

  @override
  String toString() {
    return 'SearchEvent.connectionResult(connectionStatus: $connectionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectionResult &&
            (identical(other.connectionStatus, connectionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.connectionStatus, connectionStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectionStatus);

  @JsonKey(ignore: true)
  @override
  $ConnectionResultCopyWith<ConnectionResult> get copyWith =>
      _$ConnectionResultCopyWithImpl<ConnectionResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return connectionResult(connectionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (connectionResult != null) {
      return connectionResult(connectionStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return connectionResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (connectionResult != null) {
      return connectionResult(this);
    }
    return orElse();
  }
}

abstract class ConnectionResult implements SearchEvent {
  const factory ConnectionResult(
      Either<ConnectionFailure, Unit> connectionStatus) = _$ConnectionResult;

  Either<ConnectionFailure, Unit> get connectionStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionResultCopyWith<ConnectionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndConnectionRequestCopyWith<$Res> {
  factory $EndConnectionRequestCopyWith(EndConnectionRequest value,
          $Res Function(EndConnectionRequest) then) =
      _$EndConnectionRequestCopyWithImpl<$Res>;
  $Res call({User cancelRequestUser});

  $UserCopyWith<$Res> get cancelRequestUser;
}

/// @nodoc
class _$EndConnectionRequestCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $EndConnectionRequestCopyWith<$Res> {
  _$EndConnectionRequestCopyWithImpl(
      EndConnectionRequest _value, $Res Function(EndConnectionRequest) _then)
      : super(_value, (v) => _then(v as EndConnectionRequest));

  @override
  EndConnectionRequest get _value => super._value as EndConnectionRequest;

  @override
  $Res call({
    Object? cancelRequestUser = freezed,
  }) {
    return _then(EndConnectionRequest(
      cancelRequestUser: cancelRequestUser == freezed
          ? _value.cancelRequestUser
          : cancelRequestUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get cancelRequestUser {
    return $UserCopyWith<$Res>(_value.cancelRequestUser, (value) {
      return _then(_value.copyWith(cancelRequestUser: value));
    });
  }
}

/// @nodoc
class _$EndConnectionRequest implements EndConnectionRequest {
  const _$EndConnectionRequest({required this.cancelRequestUser});

  @override
  final User cancelRequestUser;

  @override
  String toString() {
    return 'SearchEvent.endConnectionRequest(cancelRequestUser: $cancelRequestUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EndConnectionRequest &&
            (identical(other.cancelRequestUser, cancelRequestUser) ||
                const DeepCollectionEquality()
                    .equals(other.cancelRequestUser, cancelRequestUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cancelRequestUser);

  @JsonKey(ignore: true)
  @override
  $EndConnectionRequestCopyWith<EndConnectionRequest> get copyWith =>
      _$EndConnectionRequestCopyWithImpl<EndConnectionRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearching,
    required TResult Function(User user) deviceDiscovered,
    required TResult Function() showAllDiscoveredDevices,
    required TResult Function() dismissAllDiscoveredDevices,
    required TResult Function(String uidString) deviceLost,
    required TResult Function() stopSearching,
    required TResult Function(User discoveredUser) requestConnection,
    required TResult Function(Either<ConnectionFailure, Unit> connectionStatus)
        connectionResult,
    required TResult Function(User cancelRequestUser) endConnectionRequest,
  }) {
    return endConnectionRequest(cancelRequestUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearching,
    TResult Function(User user)? deviceDiscovered,
    TResult Function()? showAllDiscoveredDevices,
    TResult Function()? dismissAllDiscoveredDevices,
    TResult Function(String uidString)? deviceLost,
    TResult Function()? stopSearching,
    TResult Function(User discoveredUser)? requestConnection,
    TResult Function(Either<ConnectionFailure, Unit> connectionStatus)?
        connectionResult,
    TResult Function(User cancelRequestUser)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (endConnectionRequest != null) {
      return endConnectionRequest(cancelRequestUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearching value) startSearching,
    required TResult Function(DeviceDiscovered value) deviceDiscovered,
    required TResult Function(ShowAllDiscoveredDevices value)
        showAllDiscoveredDevices,
    required TResult Function(DismissAllDiscoveredDevices value)
        dismissAllDiscoveredDevices,
    required TResult Function(DeviceLost value) deviceLost,
    required TResult Function(StopSearching value) stopSearching,
    required TResult Function(RequestConnection value) requestConnection,
    required TResult Function(ConnectionResult value) connectionResult,
    required TResult Function(EndConnectionRequest value) endConnectionRequest,
  }) {
    return endConnectionRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearching value)? startSearching,
    TResult Function(DeviceDiscovered value)? deviceDiscovered,
    TResult Function(ShowAllDiscoveredDevices value)? showAllDiscoveredDevices,
    TResult Function(DismissAllDiscoveredDevices value)?
        dismissAllDiscoveredDevices,
    TResult Function(DeviceLost value)? deviceLost,
    TResult Function(StopSearching value)? stopSearching,
    TResult Function(RequestConnection value)? requestConnection,
    TResult Function(ConnectionResult value)? connectionResult,
    TResult Function(EndConnectionRequest value)? endConnectionRequest,
    required TResult orElse(),
  }) {
    if (endConnectionRequest != null) {
      return endConnectionRequest(this);
    }
    return orElse();
  }
}

abstract class EndConnectionRequest implements SearchEvent {
  const factory EndConnectionRequest({required User cancelRequestUser}) =
      _$EndConnectionRequest;

  User get cancelRequestUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndConnectionRequestCopyWith<EndConnectionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {required bool isSearching,
      required bool isLoading,
      required bool isCancelling,
      required bool showAllDiscoveredDevicesPopUp,
      required bool showRequestConnectionPopUp,
      required Option<Either<ConnectionFailure, Unit>>
          connectionFailureOrSuccessOption,
      required Option<Either<ConnectionFailure, Unit>>
          connectionFailureOrRequestSent,
      required List<User> discoveredDevices}) {
    return _SearchState(
      isSearching: isSearching,
      isLoading: isLoading,
      isCancelling: isCancelling,
      showAllDiscoveredDevicesPopUp: showAllDiscoveredDevicesPopUp,
      showRequestConnectionPopUp: showRequestConnectionPopUp,
      connectionFailureOrSuccessOption: connectionFailureOrSuccessOption,
      connectionFailureOrRequestSent: connectionFailureOrRequestSent,
      discoveredDevices: discoveredDevices,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  bool get isSearching => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isCancelling => throw _privateConstructorUsedError;
  bool get showAllDiscoveredDevicesPopUp => throw _privateConstructorUsedError;
  bool get showRequestConnectionPopUp => throw _privateConstructorUsedError;
  Option<Either<ConnectionFailure, Unit>>
      get connectionFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrRequestSent =>
      throw _privateConstructorUsedError;
  List<User> get discoveredDevices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSearching,
      bool isLoading,
      bool isCancelling,
      bool showAllDiscoveredDevicesPopUp,
      bool showRequestConnectionPopUp,
      Option<Either<ConnectionFailure, Unit>> connectionFailureOrSuccessOption,
      Option<Either<ConnectionFailure, Unit>> connectionFailureOrRequestSent,
      List<User> discoveredDevices});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isSearching = freezed,
    Object? isLoading = freezed,
    Object? isCancelling = freezed,
    Object? showAllDiscoveredDevicesPopUp = freezed,
    Object? showRequestConnectionPopUp = freezed,
    Object? connectionFailureOrSuccessOption = freezed,
    Object? connectionFailureOrRequestSent = freezed,
    Object? discoveredDevices = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelling: isCancelling == freezed
          ? _value.isCancelling
          : isCancelling // ignore: cast_nullable_to_non_nullable
              as bool,
      showAllDiscoveredDevicesPopUp: showAllDiscoveredDevicesPopUp == freezed
          ? _value.showAllDiscoveredDevicesPopUp
          : showAllDiscoveredDevicesPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      showRequestConnectionPopUp: showRequestConnectionPopUp == freezed
          ? _value.showRequestConnectionPopUp
          : showRequestConnectionPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionFailureOrSuccessOption: connectionFailureOrSuccessOption ==
              freezed
          ? _value.connectionFailureOrSuccessOption
          : connectionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
      connectionFailureOrRequestSent: connectionFailureOrRequestSent == freezed
          ? _value.connectionFailureOrRequestSent
          : connectionFailureOrRequestSent // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
      discoveredDevices: discoveredDevices == freezed
          ? _value.discoveredDevices
          : discoveredDevices // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSearching,
      bool isLoading,
      bool isCancelling,
      bool showAllDiscoveredDevicesPopUp,
      bool showRequestConnectionPopUp,
      Option<Either<ConnectionFailure, Unit>> connectionFailureOrSuccessOption,
      Option<Either<ConnectionFailure, Unit>> connectionFailureOrRequestSent,
      List<User> discoveredDevices});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? isSearching = freezed,
    Object? isLoading = freezed,
    Object? isCancelling = freezed,
    Object? showAllDiscoveredDevicesPopUp = freezed,
    Object? showRequestConnectionPopUp = freezed,
    Object? connectionFailureOrSuccessOption = freezed,
    Object? connectionFailureOrRequestSent = freezed,
    Object? discoveredDevices = freezed,
  }) {
    return _then(_SearchState(
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelling: isCancelling == freezed
          ? _value.isCancelling
          : isCancelling // ignore: cast_nullable_to_non_nullable
              as bool,
      showAllDiscoveredDevicesPopUp: showAllDiscoveredDevicesPopUp == freezed
          ? _value.showAllDiscoveredDevicesPopUp
          : showAllDiscoveredDevicesPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      showRequestConnectionPopUp: showRequestConnectionPopUp == freezed
          ? _value.showRequestConnectionPopUp
          : showRequestConnectionPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionFailureOrSuccessOption: connectionFailureOrSuccessOption ==
              freezed
          ? _value.connectionFailureOrSuccessOption
          : connectionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
      connectionFailureOrRequestSent: connectionFailureOrRequestSent == freezed
          ? _value.connectionFailureOrRequestSent
          : connectionFailureOrRequestSent // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
      discoveredDevices: discoveredDevices == freezed
          ? _value.discoveredDevices
          : discoveredDevices // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isSearching,
      required this.isLoading,
      required this.isCancelling,
      required this.showAllDiscoveredDevicesPopUp,
      required this.showRequestConnectionPopUp,
      required this.connectionFailureOrSuccessOption,
      required this.connectionFailureOrRequestSent,
      required this.discoveredDevices});

  @override
  final bool isSearching;
  @override
  final bool isLoading;
  @override
  final bool isCancelling;
  @override
  final bool showAllDiscoveredDevicesPopUp;
  @override
  final bool showRequestConnectionPopUp;
  @override
  final Option<Either<ConnectionFailure, Unit>>
      connectionFailureOrSuccessOption;
  @override
  final Option<Either<ConnectionFailure, Unit>> connectionFailureOrRequestSent;
  @override
  final List<User> discoveredDevices;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, isLoading: $isLoading, isCancelling: $isCancelling, showAllDiscoveredDevicesPopUp: $showAllDiscoveredDevicesPopUp, showRequestConnectionPopUp: $showRequestConnectionPopUp, connectionFailureOrSuccessOption: $connectionFailureOrSuccessOption, connectionFailureOrRequestSent: $connectionFailureOrRequestSent, discoveredDevices: $discoveredDevices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isCancelling, isCancelling) ||
                const DeepCollectionEquality()
                    .equals(other.isCancelling, isCancelling)) &&
            (identical(other.showAllDiscoveredDevicesPopUp, showAllDiscoveredDevicesPopUp) ||
                const DeepCollectionEquality().equals(
                    other.showAllDiscoveredDevicesPopUp,
                    showAllDiscoveredDevicesPopUp)) &&
            (identical(other.showRequestConnectionPopUp, showRequestConnectionPopUp) ||
                const DeepCollectionEquality().equals(
                    other.showRequestConnectionPopUp,
                    showRequestConnectionPopUp)) &&
            (identical(other.connectionFailureOrSuccessOption,
                    connectionFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.connectionFailureOrSuccessOption,
                    connectionFailureOrSuccessOption)) &&
            (identical(other.connectionFailureOrRequestSent,
                    connectionFailureOrRequestSent) ||
                const DeepCollectionEquality().equals(
                    other.connectionFailureOrRequestSent,
                    connectionFailureOrRequestSent)) &&
            (identical(other.discoveredDevices, discoveredDevices) ||
                const DeepCollectionEquality()
                    .equals(other.discoveredDevices, discoveredDevices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isCancelling) ^
      const DeepCollectionEquality().hash(showAllDiscoveredDevicesPopUp) ^
      const DeepCollectionEquality().hash(showRequestConnectionPopUp) ^
      const DeepCollectionEquality().hash(connectionFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(connectionFailureOrRequestSent) ^
      const DeepCollectionEquality().hash(discoveredDevices);

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required bool isSearching,
      required bool isLoading,
      required bool isCancelling,
      required bool showAllDiscoveredDevicesPopUp,
      required bool showRequestConnectionPopUp,
      required Option<Either<ConnectionFailure, Unit>>
          connectionFailureOrSuccessOption,
      required Option<Either<ConnectionFailure, Unit>>
          connectionFailureOrRequestSent,
      required List<User> discoveredDevices}) = _$_SearchState;

  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isCancelling => throw _privateConstructorUsedError;
  @override
  bool get showAllDiscoveredDevicesPopUp => throw _privateConstructorUsedError;
  @override
  bool get showRequestConnectionPopUp => throw _privateConstructorUsedError;
  @override
  Option<Either<ConnectionFailure, Unit>>
      get connectionFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrRequestSent =>
      throw _privateConstructorUsedError;
  @override
  List<User> get discoveredDevices => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
