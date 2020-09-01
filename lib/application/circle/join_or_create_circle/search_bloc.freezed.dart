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
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startSearching(),
    @required Result stopSearching(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result stopSearching(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startSearching(StartSearching value),
    @required Result stopSearching(StopSearching value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result stopSearching(StopSearching value),
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
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    return startSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result stopSearching(),
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
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    return startSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result stopSearching(StopSearching value),
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
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    return stopSearching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startSearching(),
    Result stopSearching(),
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
  }) {
    assert(startSearching != null);
    assert(stopSearching != null);
    return stopSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startSearching(StartSearching value),
    Result stopSearching(StopSearching value),
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

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required
          bool isSearching,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption}) {
    return _SearchState(
      isSearching: isSearching,
      connectionFailureOrSuccessOption: connectionFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  bool get isSearching;
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSearching,
      Option<Either<ConnectionFailure, Unit>>
          connectionFailureOrSuccessOption});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object isSearching = freezed,
    Object connectionFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      connectionFailureOrSuccessOption:
          connectionFailureOrSuccessOption == freezed
              ? _value.connectionFailureOrSuccessOption
              : connectionFailureOrSuccessOption
                  as Option<Either<ConnectionFailure, Unit>>,
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
      Option<Either<ConnectionFailure, Unit>>
          connectionFailureOrSuccessOption});
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
    Object connectionFailureOrSuccessOption = freezed,
  }) {
    return _then(_SearchState(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      connectionFailureOrSuccessOption:
          connectionFailureOrSuccessOption == freezed
              ? _value.connectionFailureOrSuccessOption
              : connectionFailureOrSuccessOption
                  as Option<Either<ConnectionFailure, Unit>>,
    ));
  }
}

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.isSearching,
      @required this.connectionFailureOrSuccessOption})
      : assert(isSearching != null),
        assert(connectionFailureOrSuccessOption != null);

  @override
  final bool isSearching;
  @override
  final Option<Either<ConnectionFailure, Unit>>
      connectionFailureOrSuccessOption;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, connectionFailureOrSuccessOption: $connectionFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.connectionFailureOrSuccessOption,
                    connectionFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.connectionFailureOrSuccessOption,
                    connectionFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(connectionFailureOrSuccessOption);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {@required
          bool isSearching,
      @required
          Option<Either<ConnectionFailure, Unit>>
              connectionFailureOrSuccessOption}) = _$_SearchState;

  @override
  bool get isSearching;
  @override
  Option<Either<ConnectionFailure, Unit>> get connectionFailureOrSuccessOption;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
