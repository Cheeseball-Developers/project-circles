// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'apps_load_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppsLoadFailureTearOff {
  const _$AppsLoadFailureTearOff();

// ignore: unused_element
  UnexpectedFailure unexpectedFailure() {
    return const UnexpectedFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $AppsLoadFailure = _$AppsLoadFailureTearOff();

/// @nodoc
mixin _$AppsLoadFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpectedFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedFailure(UnexpectedFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedFailure(UnexpectedFailure value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>({
    @required Result unexpectedFailure(),
  }) {
    assert(unexpectedFailure != null);
    return unexpectedFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedFailure(UnexpectedFailure value),
  }) {
    assert(unexpectedFailure != null);
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedFailure(UnexpectedFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements AppsLoadFailure {
  const factory UnexpectedFailure() = _$UnexpectedFailure;
}
