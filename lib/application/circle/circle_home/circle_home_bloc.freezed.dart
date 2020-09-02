// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'circle_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CircleHomeStateTearOff {
  const _$CircleHomeStateTearOff();

// ignore: unused_element
  _CircleHomeState call({@required int pageIndex}) {
    return _CircleHomeState(
      pageIndex: pageIndex,
    );
  }
}

// ignore: unused_element
const $CircleHomeState = _$CircleHomeStateTearOff();

mixin _$CircleHomeState {
  int get pageIndex;

  $CircleHomeStateCopyWith<CircleHomeState> get copyWith;
}

abstract class $CircleHomeStateCopyWith<$Res> {
  factory $CircleHomeStateCopyWith(
          CircleHomeState value, $Res Function(CircleHomeState) then) =
      _$CircleHomeStateCopyWithImpl<$Res>;
  $Res call({int pageIndex});
}

class _$CircleHomeStateCopyWithImpl<$Res>
    implements $CircleHomeStateCopyWith<$Res> {
  _$CircleHomeStateCopyWithImpl(this._value, this._then);

  final CircleHomeState _value;
  // ignore: unused_field
  final $Res Function(CircleHomeState) _then;

  @override
  $Res call({
    Object pageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: pageIndex == freezed ? _value.pageIndex : pageIndex as int,
    ));
  }
}

abstract class _$CircleHomeStateCopyWith<$Res>
    implements $CircleHomeStateCopyWith<$Res> {
  factory _$CircleHomeStateCopyWith(
          _CircleHomeState value, $Res Function(_CircleHomeState) then) =
      __$CircleHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int pageIndex});
}

class __$CircleHomeStateCopyWithImpl<$Res>
    extends _$CircleHomeStateCopyWithImpl<$Res>
    implements _$CircleHomeStateCopyWith<$Res> {
  __$CircleHomeStateCopyWithImpl(
      _CircleHomeState _value, $Res Function(_CircleHomeState) _then)
      : super(_value, (v) => _then(v as _CircleHomeState));

  @override
  _CircleHomeState get _value => super._value as _CircleHomeState;

  @override
  $Res call({
    Object pageIndex = freezed,
  }) {
    return _then(_CircleHomeState(
      pageIndex: pageIndex == freezed ? _value.pageIndex : pageIndex as int,
    ));
  }
}

class _$_CircleHomeState implements _CircleHomeState {
  const _$_CircleHomeState({@required this.pageIndex})
      : assert(pageIndex != null);

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'CircleHomeState(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CircleHomeState &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pageIndex);

  @override
  _$CircleHomeStateCopyWith<_CircleHomeState> get copyWith =>
      __$CircleHomeStateCopyWithImpl<_CircleHomeState>(this, _$identity);
}

abstract class _CircleHomeState implements CircleHomeState {
  const factory _CircleHomeState({@required int pageIndex}) =
      _$_CircleHomeState;

  @override
  int get pageIndex;
  @override
  _$CircleHomeStateCopyWith<_CircleHomeState> get copyWith;
}
