// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

// ignore: unused_element
  StartSearching startSearching() {
    return const StartSearching();
  }

// ignore: unused_element
  DeviceDiscovered deviceDiscovered(User user) {
    return DeviceDiscovered(
      user,
    );
  }

// ignore: unused_element
  ShowAllDiscoveredDevices showAllDiscoveredDevices() {
    return const ShowAllDiscoveredDevices();
  }

// ignore: unused_element
  DismissAllDiscoveredDevices dismissAllDiscoveredDevices() {
    return const DismissAllDiscoveredDevices();
  }

// ignore: unused_element
  DeviceLost deviceLost({@required String uidString}) {
    return DeviceLost(
      uidString: uidString,
    );
  }

// ignore: unused_element
  StopSearching stopSearching() {
    return const StopSearching();
  }

// ignore: unused_element
  RequestConnection requestConnection({@required User discoveredUser}) {
    return RequestConnection(
      discoveredUser: discoveredUser,
    );
  }

// ignore: unused_element
  ConnectionResult connectionResult(
      Either<ConnectionFailure, Unit> connectionStatus) {
    return ConnectionResult(
      connectionStatus,
    );
  }

// ignore: unused_element
  EndConnectionRequest endConnectionRequest(
      {@required User cancelRequestUser}) {
    return EndConnectionRequest(
      cancelRequestUser: cancelRequestUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return startSearching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startSearching != null) {
      return startSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return startSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object user = freezed,
  }) {
    return _then(DeviceDiscovered(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$DeviceDiscovered implements DeviceDiscovered {
  const _$DeviceDiscovered(this.user) : assert(user != null);

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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return deviceDiscovered(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceDiscovered != null) {
      return deviceDiscovered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return deviceDiscovered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceDiscovered != null) {
      return deviceDiscovered(this);
    }
    return orElse();
  }
}

abstract class DeviceDiscovered implements SearchEvent {
  const factory DeviceDiscovered(User user) = _$DeviceDiscovered;

  User get user;
  @JsonKey(ignore: true)
  $DeviceDiscoveredCopyWith<DeviceDiscovered> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return showAllDiscoveredDevices();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showAllDiscoveredDevices != null) {
      return showAllDiscoveredDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return showAllDiscoveredDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return dismissAllDiscoveredDevices();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissAllDiscoveredDevices != null) {
      return dismissAllDiscoveredDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return dismissAllDiscoveredDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object uidString = freezed,
  }) {
    return _then(DeviceLost(
      uidString: uidString == freezed ? _value.uidString : uidString as String,
    ));
  }
}

/// @nodoc
class _$DeviceLost implements DeviceLost {
  const _$DeviceLost({@required this.uidString}) : assert(uidString != null);

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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return deviceLost(uidString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceLost != null) {
      return deviceLost(uidString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return deviceLost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceLost != null) {
      return deviceLost(this);
    }
    return orElse();
  }
}

abstract class DeviceLost implements SearchEvent {
  const factory DeviceLost({@required String uidString}) = _$DeviceLost;

  String get uidString;
  @JsonKey(ignore: true)
  $DeviceLostCopyWith<DeviceLost> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return stopSearching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stopSearching != null) {
      return stopSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return stopSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object discoveredUser = freezed,
  }) {
    return _then(RequestConnection(
      discoveredUser: discoveredUser == freezed
          ? _value.discoveredUser
          : discoveredUser as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get discoveredUser {
    if (_value.discoveredUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.discoveredUser, (value) {
      return _then(_value.copyWith(discoveredUser: value));
    });
  }
}

/// @nodoc
class _$RequestConnection implements RequestConnection {
  const _$RequestConnection({@required this.discoveredUser})
      : assert(discoveredUser != null);

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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return requestConnection(discoveredUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestConnection != null) {
      return requestConnection(discoveredUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return requestConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestConnection != null) {
      return requestConnection(this);
    }
    return orElse();
  }
}

abstract class RequestConnection implements SearchEvent {
  const factory RequestConnection({@required User discoveredUser}) =
      _$RequestConnection;

  User get discoveredUser;
  @JsonKey(ignore: true)
  $RequestConnectionCopyWith<RequestConnection> get copyWith;
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
    Object connectionStatus = freezed,
  }) {
    return _then(ConnectionResult(
      connectionStatus == freezed
          ? _value.connectionStatus
          : connectionStatus as Either<ConnectionFailure, Unit>,
    ));
  }
}

/// @nodoc
class _$ConnectionResult implements ConnectionResult {
  const _$ConnectionResult(this.connectionStatus)
      : assert(connectionStatus != null);

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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return connectionResult(connectionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionResult != null) {
      return connectionResult(connectionStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return connectionResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionResult != null) {
      return connectionResult(this);
    }
    return orElse();
  }
}

abstract class ConnectionResult implements SearchEvent {
  const factory ConnectionResult(
      Either<ConnectionFailure, Unit> connectionStatus) = _$ConnectionResult;

  Either<ConnectionFailure, Unit> get connectionStatus;
  @JsonKey(ignore: true)
  $ConnectionResultCopyWith<ConnectionResult> get copyWith;
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
    Object cancelRequestUser = freezed,
  }) {
    return _then(EndConnectionRequest(
      cancelRequestUser: cancelRequestUser == freezed
          ? _value.cancelRequestUser
          : cancelRequestUser as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get cancelRequestUser {
    if (_value.cancelRequestUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.cancelRequestUser, (value) {
      return _then(_value.copyWith(cancelRequestUser: value));
    });
  }
}

/// @nodoc
class _$EndConnectionRequest implements EndConnectionRequest {
  const _$EndConnectionRequest({@required this.cancelRequestUser})
      : assert(cancelRequestUser != null);

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
  TResult when<TResult extends Object>({
    @required TResult startSearching(),
    @required TResult deviceDiscovered(User user),
    @required TResult showAllDiscoveredDevices(),
    @required TResult dismissAllDiscoveredDevices(),
    @required TResult deviceLost(String uidString),
    @required TResult stopSearching(),
    @required TResult requestConnection(User discoveredUser),
    @required
        TResult connectionResult(
            Either<ConnectionFailure, Unit> connectionStatus),
    @required TResult endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return endConnectionRequest(cancelRequestUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startSearching(),
    TResult deviceDiscovered(User user),
    TResult showAllDiscoveredDevices(),
    TResult dismissAllDiscoveredDevices(),
    TResult deviceLost(String uidString),
    TResult stopSearching(),
    TResult requestConnection(User discoveredUser),
    TResult connectionResult(Either<ConnectionFailure, Unit> connectionStatus),
    TResult endConnectionRequest(User cancelRequestUser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endConnectionRequest != null) {
      return endConnectionRequest(cancelRequestUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startSearching(StartSearching value),
    @required TResult deviceDiscovered(DeviceDiscovered value),
    @required TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required TResult deviceLost(DeviceLost value),
    @required TResult stopSearching(StopSearching value),
    @required TResult requestConnection(RequestConnection value),
    @required TResult connectionResult(ConnectionResult value),
    @required TResult endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(connectionResult != null);
    assert(endConnectionRequest != null);
    return endConnectionRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startSearching(StartSearching value),
    TResult deviceDiscovered(DeviceDiscovered value),
    TResult showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    TResult dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    TResult deviceLost(DeviceLost value),
    TResult stopSearching(StopSearching value),
    TResult requestConnection(RequestConnection value),
    TResult connectionResult(ConnectionResult value),
    TResult endConnectionRequest(EndConnectionRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endConnectionRequest != null) {
      return endConnectionRequest(this);
    }
    return orElse();
  }
}

abstract class EndConnectionRequest implements SearchEvent {
  const factory EndConnectionRequest({@required User cancelRequestUser}) =
      _$EndConnectionRequest;

  User get cancelRequestUser;
  @JsonKey(ignore: true)
  $EndConnectionRequestCopyWith<EndConnectionRequest> get copyWith;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required
          bool isSearching,
      @required
          bool isLoading,
      @required
          bool isCancelling,
      @required
          bool showAllDiscoveredDevicesPopUp,
      @required
          bool showRequestConnectionPopUp,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrRequestSent,
      @required
          List<User> discoveredDevices}) {
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
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  bool get isSearching;
  bool get isLoading;
  bool get isCancelling;
  bool get showAllDiscoveredDevicesPopUp;
  bool get showRequestConnectionPopUp;
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrRequestSent;
  List<User> get discoveredDevices;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith;
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
    Object isSearching = freezed,
    Object isLoading = freezed,
    Object isCancelling = freezed,
    Object showAllDiscoveredDevicesPopUp = freezed,
    Object showRequestConnectionPopUp = freezed,
    Object connectionFailureOrSuccessOption = freezed,
    Object connectionFailureOrRequestSent = freezed,
    Object discoveredDevices = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isCancelling:
          isCancelling == freezed ? _value.isCancelling : isCancelling as bool,
      showAllDiscoveredDevicesPopUp: showAllDiscoveredDevicesPopUp == freezed
          ? _value.showAllDiscoveredDevicesPopUp
          : showAllDiscoveredDevicesPopUp as bool,
      showRequestConnectionPopUp: showRequestConnectionPopUp == freezed
          ? _value.showRequestConnectionPopUp
          : showRequestConnectionPopUp as bool,
      connectionFailureOrSuccessOption:
          connectionFailureOrSuccessOption == freezed
              ? _value.connectionFailureOrSuccessOption
              : connectionFailureOrSuccessOption
                  as Option<Either<ConnectionFailure, Unit>>,
      connectionFailureOrRequestSent: connectionFailureOrRequestSent == freezed
          ? _value.connectionFailureOrRequestSent
          : connectionFailureOrRequestSent
              as Option<Either<ConnectionFailure, Unit>>,
      discoveredDevices: discoveredDevices == freezed
          ? _value.discoveredDevices
          : discoveredDevices as List<User>,
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
    Object isSearching = freezed,
    Object isLoading = freezed,
    Object isCancelling = freezed,
    Object showAllDiscoveredDevicesPopUp = freezed,
    Object showRequestConnectionPopUp = freezed,
    Object connectionFailureOrSuccessOption = freezed,
    Object connectionFailureOrRequestSent = freezed,
    Object discoveredDevices = freezed,
  }) {
    return _then(_SearchState(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isCancelling:
          isCancelling == freezed ? _value.isCancelling : isCancelling as bool,
      showAllDiscoveredDevicesPopUp: showAllDiscoveredDevicesPopUp == freezed
          ? _value.showAllDiscoveredDevicesPopUp
          : showAllDiscoveredDevicesPopUp as bool,
      showRequestConnectionPopUp: showRequestConnectionPopUp == freezed
          ? _value.showRequestConnectionPopUp
          : showRequestConnectionPopUp as bool,
      connectionFailureOrSuccessOption:
          connectionFailureOrSuccessOption == freezed
              ? _value.connectionFailureOrSuccessOption
              : connectionFailureOrSuccessOption
                  as Option<Either<ConnectionFailure, Unit>>,
      connectionFailureOrRequestSent: connectionFailureOrRequestSent == freezed
          ? _value.connectionFailureOrRequestSent
          : connectionFailureOrRequestSent
              as Option<Either<ConnectionFailure, Unit>>,
      discoveredDevices: discoveredDevices == freezed
          ? _value.discoveredDevices
          : discoveredDevices as List<User>,
    ));
  }
}

/// @nodoc
class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.isSearching,
      @required this.isLoading,
      @required this.isCancelling,
      @required this.showAllDiscoveredDevicesPopUp,
      @required this.showRequestConnectionPopUp,
      @required this.connectionFailureOrSuccessOption,
      @required this.connectionFailureOrRequestSent,
      @required this.discoveredDevices})
      : assert(isSearching != null),
        assert(isLoading != null),
        assert(isCancelling != null),
        assert(showAllDiscoveredDevicesPopUp != null),
        assert(showRequestConnectionPopUp != null),
        assert(connectionFailureOrSuccessOption != null),
        assert(connectionFailureOrRequestSent != null),
        assert(discoveredDevices != null);

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
      {@required
          bool isSearching,
      @required
          bool isLoading,
      @required
          bool isCancelling,
      @required
          bool showAllDiscoveredDevicesPopUp,
      @required
          bool showRequestConnectionPopUp,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrRequestSent,
      @required
          List<User> discoveredDevices}) = _$_SearchState;

  @override
  bool get isSearching;
  @override
  bool get isLoading;
  @override
  bool get isCancelling;
  @override
  bool get showAllDiscoveredDevicesPopUp;
  @override
  bool get showRequestConnectionPopUp;
  @override
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  @override
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrRequestSent;
  @override
  List<User> get discoveredDevices;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
