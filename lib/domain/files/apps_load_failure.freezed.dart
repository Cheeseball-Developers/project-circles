// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'apps_load_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppsLoadFailureTearOff {
  const _$AppsLoadFailureTearOff();

  UnexpectedFailure unexpectedFailure() {
    return const UnexpectedFailure();
  }
}

/// @nodoc
const $AppsLoadFailure = _$AppsLoadFailureTearOff();

/// @nodoc
mixin _$AppsLoadFailure {
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
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsLoadFailureCopyWith<$Res> {
  factory $AppsLoadFailureCopyWith(
          AppsLoadFailure value, $Res Function(AppsLoadFailure) then) =
      _$AppsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppsLoadFailureCopyWithImpl<$Res>
    implements $AppsLoadFailureCopyWith<$Res> {
  _$AppsLoadFailureCopyWithImpl(this._value, this._then);

  final AppsLoadFailure _value;
  // ignore: unused_field
  final $Res Function(AppsLoadFailure) _then;
}

/// @nodoc
abstract class $UnexpectedFailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(
          UnexpectedFailure value, $Res Function(UnexpectedFailure) then) =
      _$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    extends _$AppsLoadFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(
      UnexpectedFailure _value, $Res Function(UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedFailure));

  @override
  UnexpectedFailure get _value => super._value as UnexpectedFailure;
}

/// @nodoc
class _$UnexpectedFailure implements UnexpectedFailure {
  const _$UnexpectedFailure();

  @override
  String toString() {
    return 'AppsLoadFailure.unexpectedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedFailure);
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
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements AppsLoadFailure {
  const factory UnexpectedFailure() = _$UnexpectedFailure;
}
