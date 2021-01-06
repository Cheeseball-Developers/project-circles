// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'database_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DatabaseFailureTearOff {
  const _$DatabaseFailureTearOff();

// ignore: unused_element
  _UnexpectedFailure unexpectedFailure() {
    return const _UnexpectedFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $DatabaseFailure = _$DatabaseFailureTearOff();

/// @nodoc
mixin _$DatabaseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpectedFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedFailure(_UnexpectedFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedFailure(_UnexpectedFailure value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult unexpectedFailure(),
  }) {
    assert(unexpectedFailure != null);
    return unexpectedFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpectedFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpectedFailure(_UnexpectedFailure value),
  }) {
    assert(unexpectedFailure != null);
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpectedFailure(_UnexpectedFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedFailure implements DatabaseFailure {
  const factory _UnexpectedFailure() = _$_UnexpectedFailure;
}
