// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'file_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileInfoTearOff {
  const _$FileInfoTearOff();

  _FileInfo call(
      {required String name,
      required int hash,
      required String path,
      required int bytesSize,
      required Uint8List thumbnail}) {
    return _FileInfo(
      name: name,
      hash: hash,
      path: path,
      bytesSize: bytesSize,
      thumbnail: thumbnail,
    );
  }
}

/// @nodoc
const $FileInfo = _$FileInfoTearOff();

/// @nodoc
mixin _$FileInfo {
  String get name => throw _privateConstructorUsedError;
  int get hash => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get bytesSize => throw _privateConstructorUsedError;
  Uint8List get thumbnail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileInfoCopyWith<FileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) then) =
      _$FileInfoCopyWithImpl<$Res>;
  $Res call(
      {String name, int hash, String path, int bytesSize, Uint8List thumbnail});
}

/// @nodoc
class _$FileInfoCopyWithImpl<$Res> implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._value, this._then);

  final FileInfo _value;
  // ignore: unused_field
  final $Res Function(FileInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? hash = freezed,
    Object? path = freezed,
    Object? bytesSize = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      bytesSize: bytesSize == freezed
          ? _value.bytesSize
          : bytesSize // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$FileInfoCopyWith<$Res> implements $FileInfoCopyWith<$Res> {
  factory _$FileInfoCopyWith(_FileInfo value, $Res Function(_FileInfo) then) =
      __$FileInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, int hash, String path, int bytesSize, Uint8List thumbnail});
}

/// @nodoc
class __$FileInfoCopyWithImpl<$Res> extends _$FileInfoCopyWithImpl<$Res>
    implements _$FileInfoCopyWith<$Res> {
  __$FileInfoCopyWithImpl(_FileInfo _value, $Res Function(_FileInfo) _then)
      : super(_value, (v) => _then(v as _FileInfo));

  @override
  _FileInfo get _value => super._value as _FileInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? hash = freezed,
    Object? path = freezed,
    Object? bytesSize = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_FileInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      bytesSize: bytesSize == freezed
          ? _value.bytesSize
          : bytesSize // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
class _$_FileInfo extends _FileInfo {
  const _$_FileInfo(
      {required this.name,
      required this.hash,
      required this.path,
      required this.bytesSize,
      required this.thumbnail})
      : super._();

  @override
  final String name;
  @override
  final int hash;
  @override
  final String path;
  @override
  final int bytesSize;
  @override
  final Uint8List thumbnail;

  @override
  String toString() {
    return 'FileInfo(name: $name, hash: $hash, path: $path, bytesSize: $bytesSize, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.bytesSize, bytesSize) ||
                const DeepCollectionEquality()
                    .equals(other.bytesSize, bytesSize)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(bytesSize) ^
      const DeepCollectionEquality().hash(thumbnail);

  @JsonKey(ignore: true)
  @override
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      __$FileInfoCopyWithImpl<_FileInfo>(this, _$identity);
}

abstract class _FileInfo extends FileInfo {
  const factory _FileInfo(
      {required String name,
      required int hash,
      required String path,
      required int bytesSize,
      required Uint8List thumbnail}) = _$_FileInfo;
  const _FileInfo._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get hash => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  int get bytesSize => throw _privateConstructorUsedError;
  @override
  Uint8List get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
