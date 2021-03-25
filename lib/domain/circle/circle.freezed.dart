// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'circle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CircleTearOff {
  const _$CircleTearOff();

  _Circle call({required User host, required List<User> members}) {
    return _Circle(
      host: host,
      members: members,
    );
  }
}

/// @nodoc
const $Circle = _$CircleTearOff();

/// @nodoc
mixin _$Circle {
  User get host => throw _privateConstructorUsedError;
  List<User> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CircleCopyWith<Circle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleCopyWith<$Res> {
  factory $CircleCopyWith(Circle value, $Res Function(Circle) then) =
      _$CircleCopyWithImpl<$Res>;
  $Res call({User host, List<User> members});

  $UserCopyWith<$Res> get host;
}

/// @nodoc
class _$CircleCopyWithImpl<$Res> implements $CircleCopyWith<$Res> {
  _$CircleCopyWithImpl(this._value, this._then);

  final Circle _value;
  // ignore: unused_field
  final $Res Function(Circle) _then;

  @override
  $Res call({
    Object? host = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as User,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }

  @override
  $UserCopyWith<$Res> get host {
    return $UserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }
}

/// @nodoc
abstract class _$CircleCopyWith<$Res> implements $CircleCopyWith<$Res> {
  factory _$CircleCopyWith(_Circle value, $Res Function(_Circle) then) =
      __$CircleCopyWithImpl<$Res>;
  @override
  $Res call({User host, List<User> members});

  @override
  $UserCopyWith<$Res> get host;
}

/// @nodoc
class __$CircleCopyWithImpl<$Res> extends _$CircleCopyWithImpl<$Res>
    implements _$CircleCopyWith<$Res> {
  __$CircleCopyWithImpl(_Circle _value, $Res Function(_Circle) _then)
      : super(_value, (v) => _then(v as _Circle));

  @override
  _Circle get _value => super._value as _Circle;

  @override
  $Res call({
    Object? host = freezed,
    Object? members = freezed,
  }) {
    return _then(_Circle(
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as User,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
class _$_Circle implements _Circle {
  const _$_Circle({required this.host, required this.members});

  @override
  final User host;
  @override
  final List<User> members;

  @override
  String toString() {
    return 'Circle(host: $host, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Circle &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(members);

  @JsonKey(ignore: true)
  @override
  _$CircleCopyWith<_Circle> get copyWith =>
      __$CircleCopyWithImpl<_Circle>(this, _$identity);
}

abstract class _Circle implements Circle {
  const factory _Circle({required User host, required List<User> members}) =
      _$_Circle;

  @override
  User get host => throw _privateConstructorUsedError;
  @override
  List<User> get members => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CircleCopyWith<_Circle> get copyWith => throw _privateConstructorUsedError;
}
