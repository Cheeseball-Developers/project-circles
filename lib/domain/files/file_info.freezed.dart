// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'file_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FileInfoTearOff {
  const _$FileInfoTearOff();

// ignore: unused_element
  _FileInfo call(
      {@required int hash,
      @required String path,
      @required int bytesSize,
      @required Uint8List thumbnail}) {
    return _FileInfo(
      hash: hash,
      path: path,
      bytesSize: bytesSize,
      thumbnail: thumbnail,
    );
  }
}

// ignore: unused_element
const $FileInfo = _$FileInfoTearOff();

mixin _$FileInfo {
  int get hash;
  String get path;
  int get bytesSize;
  Uint8List get thumbnail;

  $FileInfoCopyWith<FileInfo> get copyWith;
}

abstract class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) then) =
      _$FileInfoCopyWithImpl<$Res>;
  $Res call({int hash, String path, int bytesSize, Uint8List thumbnail});
}

class _$FileInfoCopyWithImpl<$Res> implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._value, this._then);

  final FileInfo _value;
  // ignore: unused_field
  final $Res Function(FileInfo) _then;

  @override
  $Res call({
    Object hash = freezed,
    Object path = freezed,
    Object bytesSize = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed ? _value.hash : hash as int,
      path: path == freezed ? _value.path : path as String,
      bytesSize: bytesSize == freezed ? _value.bytesSize : bytesSize as int,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Uint8List,
    ));
  }
}

abstract class _$FileInfoCopyWith<$Res> implements $FileInfoCopyWith<$Res> {
  factory _$FileInfoCopyWith(_FileInfo value, $Res Function(_FileInfo) then) =
      __$FileInfoCopyWithImpl<$Res>;
  @override
  $Res call({int hash, String path, int bytesSize, Uint8List thumbnail});
}

class __$FileInfoCopyWithImpl<$Res> extends _$FileInfoCopyWithImpl<$Res>
    implements _$FileInfoCopyWith<$Res> {
  __$FileInfoCopyWithImpl(_FileInfo _value, $Res Function(_FileInfo) _then)
      : super(_value, (v) => _then(v as _FileInfo));

  @override
  _FileInfo get _value => super._value as _FileInfo;

  @override
  $Res call({
    Object hash = freezed,
    Object path = freezed,
    Object bytesSize = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_FileInfo(
      hash: hash == freezed ? _value.hash : hash as int,
      path: path == freezed ? _value.path : path as String,
      bytesSize: bytesSize == freezed ? _value.bytesSize : bytesSize as int,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Uint8List,
    ));
  }
}

class _$_FileInfo extends _FileInfo {
  const _$_FileInfo(
      {@required this.hash,
      @required this.path,
      @required this.bytesSize,
      @required this.thumbnail})
      : assert(hash != null),
        assert(path != null),
        assert(bytesSize != null),
        assert(thumbnail != null),
        super._();

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
    return 'FileInfo(hash: $hash, path: $path, bytesSize: $bytesSize, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileInfo &&
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
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(bytesSize) ^
      const DeepCollectionEquality().hash(thumbnail);

  @override
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      __$FileInfoCopyWithImpl<_FileInfo>(this, _$identity);
}

abstract class _FileInfo extends FileInfo {
  const _FileInfo._() : super._();
  const factory _FileInfo(
      {@required int hash,
      @required String path,
      @required int bytesSize,
      @required Uint8List thumbnail}) = _$_FileInfo;

  @override
  int get hash;
  @override
  String get path;
  @override
  int get bytesSize;
  @override
  Uint8List get thumbnail;
  @override
  _$FileInfoCopyWith<_FileInfo> get copyWith;
}
