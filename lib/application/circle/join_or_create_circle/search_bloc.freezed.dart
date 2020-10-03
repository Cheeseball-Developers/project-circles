// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
  DeviceLost deviceLost() {
    return const DeviceLost();
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
  EndConnectionRequest endConnectionRequest(
      {@required User cancelRequestUser}) {
    return EndConnectionRequest(
      cancelRequestUser: cancelRequestUser,
    );
  }
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
  });
}

abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

abstract class $StartSearchingCopyWith<$Res> {
  factory $StartSearchingCopyWith(
          StartSearching value, $Res Function(StartSearching) then) =
      _$StartSearchingCopyWithImpl<$Res>;
}

class _$StartSearchingCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $StartSearchingCopyWith<$Res> {
  _$StartSearchingCopyWithImpl(
      StartSearching _value, $Res Function(StartSearching) _then)
      : super(_value, (v) => _then(v as StartSearching));

  @override
  StartSearching get _value => super._value as StartSearching;
}

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
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return startSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startSearching != null) {
      return startSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return startSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
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

abstract class $DeviceDiscoveredCopyWith<$Res> {
  factory $DeviceDiscoveredCopyWith(
          DeviceDiscovered value, $Res Function(DeviceDiscovered) then) =
      _$DeviceDiscoveredCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

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

  @override
  $DeviceDiscoveredCopyWith<DeviceDiscovered> get copyWith =>
      _$DeviceDiscoveredCopyWithImpl<DeviceDiscovered>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return deviceDiscovered(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceDiscovered != null) {
      return deviceDiscovered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return deviceDiscovered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
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
  $DeviceDiscoveredCopyWith<DeviceDiscovered> get copyWith;
}

abstract class $ShowAllDiscoveredDevicesCopyWith<$Res> {
  factory $ShowAllDiscoveredDevicesCopyWith(ShowAllDiscoveredDevices value,
          $Res Function(ShowAllDiscoveredDevices) then) =
      _$ShowAllDiscoveredDevicesCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return showAllDiscoveredDevices();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAllDiscoveredDevices != null) {
      return showAllDiscoveredDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return showAllDiscoveredDevices(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
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

abstract class $DismissAllDiscoveredDevicesCopyWith<$Res> {
  factory $DismissAllDiscoveredDevicesCopyWith(
          DismissAllDiscoveredDevices value,
          $Res Function(DismissAllDiscoveredDevices) then) =
      _$DismissAllDiscoveredDevicesCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return dismissAllDiscoveredDevices();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissAllDiscoveredDevices != null) {
      return dismissAllDiscoveredDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return dismissAllDiscoveredDevices(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
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

abstract class $DeviceLostCopyWith<$Res> {
  factory $DeviceLostCopyWith(
          DeviceLost value, $Res Function(DeviceLost) then) =
      _$DeviceLostCopyWithImpl<$Res>;
}

class _$DeviceLostCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $DeviceLostCopyWith<$Res> {
  _$DeviceLostCopyWithImpl(DeviceLost _value, $Res Function(DeviceLost) _then)
      : super(_value, (v) => _then(v as DeviceLost));

  @override
  DeviceLost get _value => super._value as DeviceLost;
}

class _$DeviceLost implements DeviceLost {
  const _$DeviceLost();

  @override
  String toString() {
    return 'SearchEvent.deviceLost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceLost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return deviceLost();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceLost != null) {
      return deviceLost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return deviceLost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceLost != null) {
      return deviceLost(this);
    }
    return orElse();
  }
}

abstract class DeviceLost implements SearchEvent {
  const factory DeviceLost() = _$DeviceLost;
}

abstract class $StopSearchingCopyWith<$Res> {
  factory $StopSearchingCopyWith(
          StopSearching value, $Res Function(StopSearching) then) =
      _$StopSearchingCopyWithImpl<$Res>;
}

class _$StopSearchingCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $StopSearchingCopyWith<$Res> {
  _$StopSearchingCopyWithImpl(
      StopSearching _value, $Res Function(StopSearching) _then)
      : super(_value, (v) => _then(v as StopSearching));

  @override
  StopSearching get _value => super._value as StopSearching;
}

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
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return stopSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopSearching != null) {
      return stopSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return stopSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
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

abstract class $RequestConnectionCopyWith<$Res> {
  factory $RequestConnectionCopyWith(
          RequestConnection value, $Res Function(RequestConnection) then) =
      _$RequestConnectionCopyWithImpl<$Res>;
  $Res call({User discoveredUser});

  $UserCopyWith<$Res> get discoveredUser;
}

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

  @override
  $RequestConnectionCopyWith<RequestConnection> get copyWith =>
      _$RequestConnectionCopyWithImpl<RequestConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return requestConnection(discoveredUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestConnection != null) {
      return requestConnection(discoveredUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return requestConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
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
  $RequestConnectionCopyWith<RequestConnection> get copyWith;
}

abstract class $EndConnectionRequestCopyWith<$Res> {
  factory $EndConnectionRequestCopyWith(EndConnectionRequest value,
          $Res Function(EndConnectionRequest) then) =
      _$EndConnectionRequestCopyWithImpl<$Res>;
  $Res call({User cancelRequestUser});

  $UserCopyWith<$Res> get cancelRequestUser;
}

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

  @override
  $EndConnectionRequestCopyWith<EndConnectionRequest> get copyWith =>
      _$EndConnectionRequestCopyWithImpl<EndConnectionRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result deviceDiscovered(User user),
    @required Result showAllDiscoveredDevices(),
    @required Result dismissAllDiscoveredDevices(),
    @required Result deviceLost(),
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
    @required Result endConnectionRequest(User cancelRequestUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return endConnectionRequest(cancelRequestUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result showAllDiscoveredDevices(),
    Result dismissAllDiscoveredDevices(),
    Result deviceLost(),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    Result endConnectionRequest(User cancelRequestUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (endConnectionRequest != null) {
      return endConnectionRequest(cancelRequestUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    @required
        Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    @required Result deviceLost(DeviceLost value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
    @required Result endConnectionRequest(EndConnectionRequest value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(showAllDiscoveredDevices != null);
    assert(dismissAllDiscoveredDevices != null);
    assert(deviceLost != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    assert(endConnectionRequest != null);
    return endConnectionRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result showAllDiscoveredDevices(ShowAllDiscoveredDevices value),
    Result dismissAllDiscoveredDevices(DismissAllDiscoveredDevices value),
    Result deviceLost(DeviceLost value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
    Result endConnectionRequest(EndConnectionRequest value),
    @required Result orElse(),
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
  $EndConnectionRequestCopyWith<EndConnectionRequest> get copyWith;
}

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required
          bool isSearching,
      @required
          bool isLoading,
      @required
          bool showAllDiscoveredDevicesPopUp,
      @required
          bool showRequestConnectionPopUp,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      @required
          List<User> discoveredDevices}) {
    return _SearchState(
      isSearching: isSearching,
      isLoading: isLoading,
      showAllDiscoveredDevicesPopUp: showAllDiscoveredDevicesPopUp,
      showRequestConnectionPopUp: showRequestConnectionPopUp,
      connectionFailureOrSuccessOption: connectionFailureOrSuccessOption,
      discoveredDevices: discoveredDevices,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  bool get isSearching;
  bool get isLoading;
  bool get showAllDiscoveredDevicesPopUp;
  bool get showRequestConnectionPopUp;
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  List<User> get discoveredDevices;

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSearching,
      bool isLoading,
      bool showAllDiscoveredDevicesPopUp,
      bool showRequestConnectionPopUp,
      Option<Either<ConnectionFailure, Unit>> connectionFailureOrSuccessOption,
      List<User> discoveredDevices});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object isSearching = freezed,
    Object isLoading = freezed,
    Object showAllDiscoveredDevicesPopUp = freezed,
    Object showRequestConnectionPopUp = freezed,
    Object connectionFailureOrSuccessOption = freezed,
    Object discoveredDevices = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
      discoveredDevices: discoveredDevices == freezed
          ? _value.discoveredDevices
          : discoveredDevices as List<User>,
    ));
  }
}

abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSearching,
      bool isLoading,
      bool showAllDiscoveredDevicesPopUp,
      bool showRequestConnectionPopUp,
      Option<Either<ConnectionFailure, Unit>> connectionFailureOrSuccessOption,
      List<User> discoveredDevices});
}

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
    Object showAllDiscoveredDevicesPopUp = freezed,
    Object showRequestConnectionPopUp = freezed,
    Object connectionFailureOrSuccessOption = freezed,
    Object discoveredDevices = freezed,
  }) {
    return _then(_SearchState(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
      discoveredDevices: discoveredDevices == freezed
          ? _value.discoveredDevices
          : discoveredDevices as List<User>,
    ));
  }
}

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.isSearching,
      @required this.isLoading,
      @required this.showAllDiscoveredDevicesPopUp,
      @required this.showRequestConnectionPopUp,
      @required this.connectionFailureOrSuccessOption,
      @required this.discoveredDevices})
      : assert(isSearching != null),
        assert(isLoading != null),
        assert(showAllDiscoveredDevicesPopUp != null),
        assert(showRequestConnectionPopUp != null),
        assert(connectionFailureOrSuccessOption != null),
        assert(discoveredDevices != null);

  @override
  final bool isSearching;
  @override
  final bool isLoading;
  @override
  final bool showAllDiscoveredDevicesPopUp;
  @override
  final bool showRequestConnectionPopUp;
  @override
  final Option<Either<ConnectionFailure, Unit>>
      connectionFailureOrSuccessOption;
  @override
  final List<User> discoveredDevices;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, isLoading: $isLoading, showAllDiscoveredDevicesPopUp: $showAllDiscoveredDevicesPopUp, showRequestConnectionPopUp: $showRequestConnectionPopUp, connectionFailureOrSuccessOption: $connectionFailureOrSuccessOption, discoveredDevices: $discoveredDevices)';
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
            (identical(other.showAllDiscoveredDevicesPopUp,
                    showAllDiscoveredDevicesPopUp) ||
                const DeepCollectionEquality().equals(
                    other.showAllDiscoveredDevicesPopUp,
                    showAllDiscoveredDevicesPopUp)) &&
            (identical(other.showRequestConnectionPopUp,
                    showRequestConnectionPopUp) ||
                const DeepCollectionEquality().equals(
                    other.showRequestConnectionPopUp,
                    showRequestConnectionPopUp)) &&
            (identical(other.connectionFailureOrSuccessOption,
                    connectionFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.connectionFailureOrSuccessOption,
                    connectionFailureOrSuccessOption)) &&
            (identical(other.discoveredDevices, discoveredDevices) ||
                const DeepCollectionEquality()
                    .equals(other.discoveredDevices, discoveredDevices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showAllDiscoveredDevicesPopUp) ^
      const DeepCollectionEquality().hash(showRequestConnectionPopUp) ^
      const DeepCollectionEquality().hash(connectionFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(discoveredDevices);

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
          bool showAllDiscoveredDevicesPopUp,
      @required
          bool showRequestConnectionPopUp,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      @required
          List<User> discoveredDevices}) = _$_SearchState;

  @override
  bool get isSearching;
  @override
  bool get isLoading;
  @override
  bool get showAllDiscoveredDevicesPopUp;
  @override
  bool get showRequestConnectionPopUp;
  @override
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  @override
  List<User> get discoveredDevices;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
