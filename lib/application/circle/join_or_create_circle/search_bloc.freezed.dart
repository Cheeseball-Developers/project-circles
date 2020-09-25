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
  StopSearching stopSearching() {
    return const StopSearching();
  }

// ignore: unused_element
  AcceptConnection acceptConnection(
      {@required User discoveredUser, @required bool acceptOrReject}) {
    return AcceptConnection(
      discoveredUser: discoveredUser,
      acceptOrReject: acceptOrReject,
    );
  }
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result stopSearching(),
    @required Result acceptConnection(User discoveredUser, bool acceptOrReject),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result stopSearching(),
    Result acceptConnection(User discoveredUser, bool acceptOrReject),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result stopSearching(StopSearching value),
    @required Result acceptConnection(AcceptConnection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result stopSearching(StopSearching value),
    Result acceptConnection(AcceptConnection value),
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
    @required Result stopSearching(),
    @required Result acceptConnection(User discoveredUser, bool acceptOrReject),
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    assert(acceptConnection != null);
    return startSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result stopSearching(),
    Result acceptConnection(User discoveredUser, bool acceptOrReject),
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
    @required Result stopSearching(StopSearching value),
    @required Result acceptConnection(AcceptConnection value),
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    assert(acceptConnection != null);
    return startSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result stopSearching(StopSearching value),
    Result acceptConnection(AcceptConnection value),
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
    @required Result stopSearching(),
    @required Result acceptConnection(User discoveredUser, bool acceptOrReject),
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    assert(acceptConnection != null);
    return stopSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result stopSearching(),
    Result acceptConnection(User discoveredUser, bool acceptOrReject),
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
    @required Result stopSearching(StopSearching value),
    @required Result acceptConnection(AcceptConnection value),
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    assert(acceptConnection != null);
    return stopSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result stopSearching(StopSearching value),
    Result acceptConnection(AcceptConnection value),
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

abstract class $AcceptConnectionCopyWith<$Res> {
  factory $AcceptConnectionCopyWith(
          AcceptConnection value, $Res Function(AcceptConnection) then) =
      _$AcceptConnectionCopyWithImpl<$Res>;
  $Res call({User discoveredUser, bool acceptOrReject});

  $UserCopyWith<$Res> get discoveredUser;
}

class _$AcceptConnectionCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $AcceptConnectionCopyWith<$Res> {
  _$AcceptConnectionCopyWithImpl(
      AcceptConnection _value, $Res Function(AcceptConnection) _then)
      : super(_value, (v) => _then(v as AcceptConnection));

  @override
  AcceptConnection get _value => super._value as AcceptConnection;

  @override
  $Res call({
    Object discoveredUser = freezed,
    Object acceptOrReject = freezed,
  }) {
    return _then(AcceptConnection(
      discoveredUser: discoveredUser == freezed
          ? _value.discoveredUser
          : discoveredUser as User,
      acceptOrReject: acceptOrReject == freezed
          ? _value.acceptOrReject
          : acceptOrReject as bool,
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

class _$AcceptConnection implements AcceptConnection {
  const _$AcceptConnection(
      {@required this.discoveredUser, @required this.acceptOrReject})
      : assert(discoveredUser != null),
        assert(acceptOrReject != null);

  @override
  final User discoveredUser;
  @override
  final bool acceptOrReject;

  @override
  String toString() {
    return 'SearchEvent.acceptConnection(discoveredUser: $discoveredUser, acceptOrReject: $acceptOrReject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcceptConnection &&
            (identical(other.discoveredUser, discoveredUser) ||
                const DeepCollectionEquality()
                    .equals(other.discoveredUser, discoveredUser)) &&
            (identical(other.acceptOrReject, acceptOrReject) ||
                const DeepCollectionEquality()
                    .equals(other.acceptOrReject, acceptOrReject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(discoveredUser) ^
      const DeepCollectionEquality().hash(acceptOrReject);

  @override
  $AcceptConnectionCopyWith<AcceptConnection> get copyWith =>
      _$AcceptConnectionCopyWithImpl<AcceptConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result stopSearching(),
    @required Result acceptConnection(User discoveredUser, bool acceptOrReject),
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    assert(acceptConnection != null);
    return acceptConnection(discoveredUser, acceptOrReject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result stopSearching(),
    Result acceptConnection(User discoveredUser, bool acceptOrReject),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (acceptConnection != null) {
      return acceptConnection(discoveredUser, acceptOrReject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result stopSearching(StopSearching value),
    @required Result acceptConnection(AcceptConnection value),
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    assert(acceptConnection != null);
    return acceptConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result stopSearching(StopSearching value),
    Result acceptConnection(AcceptConnection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (acceptConnection != null) {
      return acceptConnection(this);
    }
    return orElse();
  }
}

abstract class AcceptConnection implements SearchEvent {
  const factory AcceptConnection(
      {@required User discoveredUser,
      @required bool acceptOrReject}) = _$AcceptConnection;

  User get discoveredUser;
  bool get acceptOrReject;
  $AcceptConnectionCopyWith<AcceptConnection> get copyWith;
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
          Option<List<Either<ConnectionFailure, User>>>
              connectionFailureOrDiscoveredDevice}) {
    return _SearchState(
      isSearching: isSearching,
      isLoading: isLoading,
      connectionFailureOrSuccessOption: connectionFailureOrSuccessOption,
      connectionFailureOrDiscoveredDevice: connectionFailureOrDiscoveredDevice,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  bool get isSearching;
  bool get isLoading;
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  Option<List<Either<ConnectionFailure, User>>>
      get connectionFailureOrDiscoveredDevice;

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
      Option<List<Either<ConnectionFailure, User>>>
          connectionFailureOrDiscoveredDevice});
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
    Object connectionFailureOrDiscoveredDevice = freezed,
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
      connectionFailureOrDiscoveredDevice:
          connectionFailureOrDiscoveredDevice == freezed
              ? _value.connectionFailureOrDiscoveredDevice
              : connectionFailureOrDiscoveredDevice
                  as Option<List<Either<ConnectionFailure, User>>>,
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
      Option<List<Either<ConnectionFailure, User>>>
          connectionFailureOrDiscoveredDevice});
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
    Object connectionFailureOrDiscoveredDevice = freezed,
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
      connectionFailureOrDiscoveredDevice:
          connectionFailureOrDiscoveredDevice == freezed
              ? _value.connectionFailureOrDiscoveredDevice
              : connectionFailureOrDiscoveredDevice
                  as Option<List<Either<ConnectionFailure, User>>>,
    ));
  }
}

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.isSearching,
      @required this.isLoading,
      @required this.connectionFailureOrSuccessOption,
      @required this.connectionFailureOrDiscoveredDevice})
      : assert(isSearching != null),
        assert(isLoading != null),
        assert(connectionFailureOrSuccessOption != null),
        assert(connectionFailureOrDiscoveredDevice != null);

  @override
  final bool isSearching;
  @override
  final bool isLoading;
  @override
  final Option<Either<ConnectionFailure, Unit>>
      connectionFailureOrSuccessOption;
  @override
  final Option<List<Either<ConnectionFailure, User>>>
      connectionFailureOrDiscoveredDevice;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, isLoading: $isLoading, connectionFailureOrSuccessOption: $connectionFailureOrSuccessOption, connectionFailureOrDiscoveredDevice: $connectionFailureOrDiscoveredDevice)';
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
            (identical(other.connectionFailureOrDiscoveredDevice,
                    connectionFailureOrDiscoveredDevice) ||
                const DeepCollectionEquality().equals(
                    other.connectionFailureOrDiscoveredDevice,
                    connectionFailureOrDiscoveredDevice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(connectionFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(connectionFailureOrDiscoveredDevice);

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
          Option<List<Either<ConnectionFailure, User>>>
              connectionFailureOrDiscoveredDevice}) = _$_SearchState;

  @override
  bool get isSearching;
  @override
  bool get isLoading;
  @override
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  @override
  Option<List<Either<ConnectionFailure, User>>>
      get connectionFailureOrDiscoveredDevice;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
