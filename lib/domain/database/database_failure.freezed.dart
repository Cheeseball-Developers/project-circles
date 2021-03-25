// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'database_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DatabaseFailureTearOff {
  const _$DatabaseFailureTearOff();

  _UnexpectedFailure unexpectedFailure() {
    return const _UnexpectedFailure();
  }
}

/// @nodoc
const $DatabaseFailure = _$DatabaseFailureTearOff();

/// @nodoc
mixin _$DatabaseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseFailureCopyWith<$Res> {
  factory $DatabaseFailureCopyWith(
          DatabaseFailure value, $Res Function(DatabaseFailure) then) =
      _$DatabaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseFailureCopyWithImpl<$Res>
    implements $DatabaseFailureCopyWith<$Res> {
  _$DatabaseFailureCopyWithImpl(this._value, this._then);

  final DatabaseFailure _value;
  // ignore: unused_field
  final $Res Function(DatabaseFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedFailureCopyWith<$Res> {
  factory _$UnexpectedFailureCopyWith(
          _UnexpectedFailure value, $Res Function(_UnexpectedFailure) then) =
      __$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedFailureCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$UnexpectedFailureCopyWith<$Res> {
  __$UnexpectedFailureCopyWithImpl(
      _UnexpectedFailure _value, $Res Function(_UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as _UnexpectedFailure));

  @override
  _UnexpectedFailure get _value => super._value as _UnexpectedFailure;
}

/// @nodoc
class _$_UnexpectedFailure implements _UnexpectedFailure {
  const _$_UnexpectedFailure();

  @override
  String toString() {
    return 'DatabaseFailure.unexpectedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
  }) {
    return unexpectedFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedFailure implements DatabaseFailure {
  const factory _UnexpectedFailure() = _$_UnexpectedFailure;
}
