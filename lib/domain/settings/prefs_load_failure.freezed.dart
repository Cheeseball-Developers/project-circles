// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'prefs_load_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PrefsLoadFailureTearOff {
  const _$PrefsLoadFailureTearOff();

// ignore: unused_element
  FailedToLoad failedToLoad() {
    return const FailedToLoad();
  }
}

// ignore: unused_element
const $PrefsLoadFailure = _$PrefsLoadFailureTearOff();

mixin _$PrefsLoadFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failedToLoad(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failedToLoad(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failedToLoad(FailedToLoad value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failedToLoad(FailedToLoad value),
    @required Result orElse(),
  });
}

abstract class $PrefsLoadFailureCopyWith<$Res> {
  factory $PrefsLoadFailureCopyWith(
          PrefsLoadFailure value, $Res Function(PrefsLoadFailure) then) =
      _$PrefsLoadFailureCopyWithImpl<$Res>;
}

class _$PrefsLoadFailureCopyWithImpl<$Res>
    implements $PrefsLoadFailureCopyWith<$Res> {
  _$PrefsLoadFailureCopyWithImpl(this._value, this._then);

  final PrefsLoadFailure _value;
  // ignore: unused_field
  final $Res Function(PrefsLoadFailure) _then;
}

abstract class $FailedToLoadCopyWith<$Res> {
  factory $FailedToLoadCopyWith(
          FailedToLoad value, $Res Function(FailedToLoad) then) =
      _$FailedToLoadCopyWithImpl<$Res>;
}

class _$FailedToLoadCopyWithImpl<$Res>
    extends _$PrefsLoadFailureCopyWithImpl<$Res>
    implements $FailedToLoadCopyWith<$Res> {
  _$FailedToLoadCopyWithImpl(
      FailedToLoad _value, $Res Function(FailedToLoad) _then)
      : super(_value, (v) => _then(v as FailedToLoad));

  @override
  FailedToLoad get _value => super._value as FailedToLoad;
}

class _$FailedToLoad implements FailedToLoad {
  const _$FailedToLoad();

  @override
  String toString() {
    return 'PrefsLoadFailure.failedToLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FailedToLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failedToLoad(),
  }) {
    assert(failedToLoad != null);
    return failedToLoad();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failedToLoad(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedToLoad != null) {
      return failedToLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failedToLoad(FailedToLoad value),
  }) {
    assert(failedToLoad != null);
    return failedToLoad(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failedToLoad(FailedToLoad value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failedToLoad != null) {
      return failedToLoad(this);
    }
    return orElse();
  }
}

abstract class FailedToLoad implements PrefsLoadFailure {
  const factory FailedToLoad() = _$FailedToLoad;
}
