// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'file_info_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FileInfoDtoTearOff {
  const _$FileInfoDtoTearOff();

// ignore: unused_element
  _FileInfoDto call(
      {@required int hash,
      @required String name,
      @required String path,
      @required int bytesSize,
      @required Uint8List thumbnail,
      @required DateTime dateTime}) {
    return _FileInfoDto(
      hash: hash,
      name: name,
      path: path,
      bytesSize: bytesSize,
      thumbnail: thumbnail,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FileInfoDto = _$FileInfoDtoTearOff();

/// @nodoc
mixin _$FileInfoDto {
  int get hash;
  String get name;
  String get path;
  int get bytesSize;
  Uint8List get thumbnail;
  DateTime get dateTime;

  $FileInfoDtoCopyWith<FileInfoDto> get copyWith;
}

/// @nodoc
abstract class $FileInfoDtoCopyWith<$Res> {
  factory $FileInfoDtoCopyWith(
          FileInfoDto value, $Res Function(FileInfoDto) then) =
      _$FileInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {int hash,
      String name,
      String path,
      int bytesSize,
      Uint8List thumbnail,
      DateTime dateTime});
}

/// @nodoc
class _$FileInfoDtoCopyWithImpl<$Res> implements $FileInfoDtoCopyWith<$Res> {
  _$FileInfoDtoCopyWithImpl(this._value, this._then);

  final FileInfoDto _value;
  // ignore: unused_field
  final $Res Function(FileInfoDto) _then;

  @override
  $Res call({
    Object hash = freezed,
    Object name = freezed,
    Object path = freezed,
    Object bytesSize = freezed,
    Object thumbnail = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed ? _value.hash : hash as int,
      name: name == freezed ? _value.name : name as String,
      path: path == freezed ? _value.path : path as String,
      bytesSize: bytesSize == freezed ? _value.bytesSize : bytesSize as int,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Uint8List,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FileInfoDtoCopyWith<$Res>
    implements $FileInfoDtoCopyWith<$Res> {
  factory _$FileInfoDtoCopyWith(
          _FileInfoDto value, $Res Function(_FileInfoDto) then) =
      __$FileInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int hash,
      String name,
      String path,
      int bytesSize,
      Uint8List thumbnail,
      DateTime dateTime});
}

/// @nodoc
class __$FileInfoDtoCopyWithImpl<$Res> extends _$FileInfoDtoCopyWithImpl<$Res>
    implements _$FileInfoDtoCopyWith<$Res> {
  __$FileInfoDtoCopyWithImpl(
      _FileInfoDto _value, $Res Function(_FileInfoDto) _then)
      : super(_value, (v) => _then(v as _FileInfoDto));

  @override
  _FileInfoDto get _value => super._value as _FileInfoDto;

  @override
  $Res call({
    Object hash = freezed,
    Object name = freezed,
    Object path = freezed,
    Object bytesSize = freezed,
    Object thumbnail = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_FileInfoDto(
      hash: hash == freezed ? _value.hash : hash as int,
      name: name == freezed ? _value.name : name as String,
      path: path == freezed ? _value.path : path as String,
      bytesSize: bytesSize == freezed ? _value.bytesSize : bytesSize as int,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Uint8List,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

/// @nodoc
class _$_FileInfoDto extends _FileInfoDto {
  const _$_FileInfoDto(
      {@required this.hash,
      @required this.name,
      @required this.path,
      @required this.bytesSize,
      @required this.thumbnail,
      @required this.dateTime})
      : assert(hash != null),
        assert(name != null),
        assert(path != null),
        assert(bytesSize != null),
        assert(thumbnail != null),
        assert(dateTime != null),
        super._();

  @override
  final int hash;
  @override
  final String name;
  @override
  final String path;
  @override
  final int bytesSize;
  @override
  final Uint8List thumbnail;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'FileInfoDto(hash: $hash, name: $name, path: $path, bytesSize: $bytesSize, thumbnail: $thumbnail, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileInfoDto &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.bytesSize, bytesSize) ||
                const DeepCollectionEquality()
                    .equals(other.bytesSize, bytesSize)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(bytesSize) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(dateTime);

  @override
  _$FileInfoDtoCopyWith<_FileInfoDto> get copyWith =>
      __$FileInfoDtoCopyWithImpl<_FileInfoDto>(this, _$identity);
}

abstract class _FileInfoDto extends FileInfoDto {
  const _FileInfoDto._() : super._();
  const factory _FileInfoDto(
      {@required int hash,
      @required String name,
      @required String path,
      @required int bytesSize,
      @required Uint8List thumbnail,
      @required DateTime dateTime}) = _$_FileInfoDto;

  @override
  int get hash;
  @override
  String get name;
  @override
  String get path;
  @override
  int get bytesSize;
  @override
  Uint8List get thumbnail;
  @override
  DateTime get dateTime;
  @override
  _$FileInfoDtoCopyWith<_FileInfoDto> get copyWith;
}
