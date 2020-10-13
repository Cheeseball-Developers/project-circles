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
  _FileInfo call({@required String fileName, @required double bytesSize}) {
    return _FileInfo(
      fileName: fileName,
      bytesSize: bytesSize,
    );
  }
}

// ignore: unused_element
const $FileInfo = _$FileInfoTearOff();

mixin _$FileInfo {
  String get fileName;
  double get bytesSize;

  $FileInfoCopyWith<FileInfo> get copyWith;
}

abstract class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) then) =
      _$FileInfoCopyWithImpl<$Res>;
  $Res call({String fileName, double bytesSize});
}

class _$FileInfoCopyWithImpl<$Res> implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._value, this._then);

  final FileInfo _value;
  // ignore: unused_field
  final $Res Function(FileInfo) _then;

  @override
  $Res call({
    Object fileName = freezed,
    Object bytesSize = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      bytesSize: bytesSize == freezed ? _value.bytesSize : bytesSize as double,
    ));
  }
}

abstract class _$FileInfoCopyWith<$Res> implements $FileInfoCopyWith<$Res> {
  factory _$FileInfoCopyWith(_FileInfo value, $Res Function(_FileInfo) then) =
      __$FileInfoCopyWithImpl<$Res>;
  @override
  $Res call({String fileName, double bytesSize});
}

class __$FileInfoCopyWithImpl<$Res> extends _$FileInfoCopyWithImpl<$Res>
    implements _$FileInfoCopyWith<$Res> {
  __$FileInfoCopyWithImpl(_FileInfo _value, $Res Function(_FileInfo) _then)
      : super(_value, (v) => _then(v as _FileInfo));

  @override
  _FileInfo get _value => super._value as _FileInfo;

  @override
  $Res call({
    Object fileName = freezed,
    Object bytesSize = freezed,
  }) {
    return _then(_FileInfo(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      bytesSize: bytesSize == freezed ? _value.bytesSize : bytesSize as double,
    ));
  }
}

class _$_FileInfo extends _FileInfo {
  const _$_FileInfo({@required this.fileName, @required this.bytesSize})
      : assert(fileName != null),
        assert(bytesSize != null),
        super._();

  @override
  final String fileName;
  @override
  final double bytesSize;

  @override
  String toString() {
    return 'FileInfo(fileName: $fileName, bytesSize: $bytesSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileInfo &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.bytesSize, bytesSize) ||
                const DeepCollectionEquality()
                    .equals(other.bytesSize, bytesSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(bytesSize);

  @override
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      __$FileInfoCopyWithImpl<_FileInfo>(this, _$identity);
}

abstract class _FileInfo extends FileInfo {
  const _FileInfo._() : super._();
  const factory _FileInfo(
      {@required String fileName, @required double bytesSize}) = _$_FileInfo;

  @override
  String get fileName;
  @override
  double get bytesSize;
  @override
  _$FileInfoCopyWith<_FileInfo> get copyWith;
}
