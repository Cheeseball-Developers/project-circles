// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'media_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MediaInfoTearOff {
  const _$MediaInfoTearOff();

// ignore: unused_element
  _MediaInfo call(
      {@required AssetEntity entity, @required Uint8List thumbnail}) {
    return _MediaInfo(
      entity: entity,
      thumbnail: thumbnail,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MediaInfo = _$MediaInfoTearOff();

/// @nodoc
mixin _$MediaInfo {
  AssetEntity get entity;
  Uint8List get thumbnail;

  $MediaInfoCopyWith<MediaInfo> get copyWith;
}

/// @nodoc
abstract class $MediaInfoCopyWith<$Res> {
  factory $MediaInfoCopyWith(MediaInfo value, $Res Function(MediaInfo) then) =
      _$MediaInfoCopyWithImpl<$Res>;
  $Res call({AssetEntity entity, Uint8List thumbnail});
}

/// @nodoc
class _$MediaInfoCopyWithImpl<$Res> implements $MediaInfoCopyWith<$Res> {
  _$MediaInfoCopyWithImpl(this._value, this._then);

  final MediaInfo _value;
  // ignore: unused_field
  final $Res Function(MediaInfo) _then;

  @override
  $Res call({
    Object entity = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      entity: entity == freezed ? _value.entity : entity as AssetEntity,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$MediaInfoCopyWith<$Res> implements $MediaInfoCopyWith<$Res> {
  factory _$MediaInfoCopyWith(
          _MediaInfo value, $Res Function(_MediaInfo) then) =
      __$MediaInfoCopyWithImpl<$Res>;
  @override
  $Res call({AssetEntity entity, Uint8List thumbnail});
}

/// @nodoc
class __$MediaInfoCopyWithImpl<$Res> extends _$MediaInfoCopyWithImpl<$Res>
    implements _$MediaInfoCopyWith<$Res> {
  __$MediaInfoCopyWithImpl(_MediaInfo _value, $Res Function(_MediaInfo) _then)
      : super(_value, (v) => _then(v as _MediaInfo));

  @override
  _MediaInfo get _value => super._value as _MediaInfo;

  @override
  $Res call({
    Object entity = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_MediaInfo(
      entity: entity == freezed ? _value.entity : entity as AssetEntity,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Uint8List,
    ));
  }
}

/// @nodoc
class _$_MediaInfo implements _MediaInfo {
  const _$_MediaInfo({@required this.entity, @required this.thumbnail})
      : assert(entity != null),
        assert(thumbnail != null);

  @override
  final AssetEntity entity;
  @override
  final Uint8List thumbnail;

  @override
  String toString() {
    return 'MediaInfo(entity: $entity, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MediaInfo &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(thumbnail);

  @override
  _$MediaInfoCopyWith<_MediaInfo> get copyWith =>
      __$MediaInfoCopyWithImpl<_MediaInfo>(this, _$identity);
}

abstract class _MediaInfo implements MediaInfo {
  const factory _MediaInfo(
      {@required AssetEntity entity,
      @required Uint8List thumbnail}) = _$_MediaInfo;

  @override
  AssetEntity get entity;
  @override
  Uint8List get thumbnail;
  @override
  _$MediaInfoCopyWith<_MediaInfo> get copyWith;
}
