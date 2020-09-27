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
  StopSearching stopSearching() {
    return const StopSearching();
  }

// ignore: unused_element
  RequestConnection requestConnection({@required User discoveredUser}) {
    return RequestConnection(
      discoveredUser: discoveredUser,
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
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result deviceDiscovered(DeviceDiscovered value),
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
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
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return startSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
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
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return startSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
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
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return deviceDiscovered(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
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
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return deviceDiscovered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
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
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return stopSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
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
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return stopSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
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
    @required Result stopSearching(),
    @required Result requestConnection(User discoveredUser),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return requestConnection(discoveredUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result deviceDiscovered(User user),
    Result stopSearching(),
    Result requestConnection(User discoveredUser),
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
    @required Result stopSearching(StopSearching value),
    @required Result requestConnection(RequestConnection value),
  }) {
    assert(startSearching != null);
    assert(deviceDiscovered != null);
    assert(stopSearching != null);
    assert(requestConnection != null);
    return requestConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result deviceDiscovered(DeviceDiscovered value),
    Result stopSearching(StopSearching value),
    Result requestConnection(RequestConnection value),
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

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required
          bool isSearching,
      @required
          bool isLoading,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      @required
          List<User> discoveredDevices}) {
    return _SearchState(
      isSearching: isSearching,
      isLoading: isLoading,
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
    Object connectionFailureOrSuccessOption = freezed,
    Object discoveredDevices = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
    Object connectionFailureOrSuccessOption = freezed,
    Object discoveredDevices = freezed,
  }) {
    return _then(_SearchState(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
      @required this.connectionFailureOrSuccessOption,
      @required this.discoveredDevices})
      : assert(isSearching != null),
        assert(isLoading != null),
        assert(connectionFailureOrSuccessOption != null),
        assert(discoveredDevices != null);

  @override
  final bool isSearching;
  @override
  final bool isLoading;
  @override
  final Option<Either<ConnectionFailure, Unit>>
      connectionFailureOrSuccessOption;
  @override
  final List<User> discoveredDevices;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, isLoading: $isLoading, connectionFailureOrSuccessOption: $connectionFailureOrSuccessOption, discoveredDevices: $discoveredDevices)';
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
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption,
      @required
          List<User> discoveredDevices}) = _$_SearchState;

  @override
  bool get isSearching;
  @override
  bool get isLoading;
  @override
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  @override
  List<User> get discoveredDevices;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
