// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transfer_progress_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransferProgressInfoTearOff {
  const _$TransferProgressInfoTearOff();

  _TransferProgressInfo call(
      {required User user,
      required Option<bool> acceptOrRejectOption,
      required int fileTransferIndex,
      required Map<FileInfo, double> filesMap}) {
    return _TransferProgressInfo(
      user: user,
      acceptOrRejectOption: acceptOrRejectOption,
      fileTransferIndex: fileTransferIndex,
      filesMap: filesMap,
    );
  }
}

/// @nodoc
const $TransferProgressInfo = _$TransferProgressInfoTearOff();

/// @nodoc
mixin _$TransferProgressInfo {
  User get user => throw _privateConstructorUsedError;
  Option<bool> get acceptOrRejectOption => throw _privateConstructorUsedError;
  int get fileTransferIndex => throw _privateConstructorUsedError;
  Map<FileInfo, double> get filesMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferProgressInfoCopyWith<TransferProgressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferProgressInfoCopyWith<$Res> {
  factory $TransferProgressInfoCopyWith(TransferProgressInfo value,
          $Res Function(TransferProgressInfo) then) =
      _$TransferProgressInfoCopyWithImpl<$Res>;
  $Res call(
      {User user,
      Option<bool> acceptOrRejectOption,
      int fileTransferIndex,
      Map<FileInfo, double> filesMap});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TransferProgressInfoCopyWithImpl<$Res>
    implements $TransferProgressInfoCopyWith<$Res> {
  _$TransferProgressInfoCopyWithImpl(this._value, this._then);

  final TransferProgressInfo _value;
  // ignore: unused_field
  final $Res Function(TransferProgressInfo) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? acceptOrRejectOption = freezed,
    Object? fileTransferIndex = freezed,
    Object? filesMap = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      acceptOrRejectOption: acceptOrRejectOption == freezed
          ? _value.acceptOrRejectOption
          : acceptOrRejectOption // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      fileTransferIndex: fileTransferIndex == freezed
          ? _value.fileTransferIndex
          : fileTransferIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filesMap: filesMap == freezed
          ? _value.filesMap
          : filesMap // ignore: cast_nullable_to_non_nullable
              as Map<FileInfo, double>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$TransferProgressInfoCopyWith<$Res>
    implements $TransferProgressInfoCopyWith<$Res> {
  factory _$TransferProgressInfoCopyWith(_TransferProgressInfo value,
          $Res Function(_TransferProgressInfo) then) =
      __$TransferProgressInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      Option<bool> acceptOrRejectOption,
      int fileTransferIndex,
      Map<FileInfo, double> filesMap});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$TransferProgressInfoCopyWithImpl<$Res>
    extends _$TransferProgressInfoCopyWithImpl<$Res>
    implements _$TransferProgressInfoCopyWith<$Res> {
  __$TransferProgressInfoCopyWithImpl(
      _TransferProgressInfo _value, $Res Function(_TransferProgressInfo) _then)
      : super(_value, (v) => _then(v as _TransferProgressInfo));

  @override
  _TransferProgressInfo get _value => super._value as _TransferProgressInfo;

  @override
  $Res call({
    Object? user = freezed,
    Object? acceptOrRejectOption = freezed,
    Object? fileTransferIndex = freezed,
    Object? filesMap = freezed,
  }) {
    return _then(_TransferProgressInfo(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      acceptOrRejectOption: acceptOrRejectOption == freezed
          ? _value.acceptOrRejectOption
          : acceptOrRejectOption // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      fileTransferIndex: fileTransferIndex == freezed
          ? _value.fileTransferIndex
          : fileTransferIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filesMap: filesMap == freezed
          ? _value.filesMap
          : filesMap // ignore: cast_nullable_to_non_nullable
              as Map<FileInfo, double>,
    ));
  }
}

/// @nodoc
class _$_TransferProgressInfo extends _TransferProgressInfo {
  const _$_TransferProgressInfo(
      {required this.user,
      required this.acceptOrRejectOption,
      required this.fileTransferIndex,
      required this.filesMap})
      : super._();

  @override
  final User user;
  @override
  final Option<bool> acceptOrRejectOption;
  @override
  final int fileTransferIndex;
  @override
  final Map<FileInfo, double> filesMap;

  @override
  String toString() {
    return 'TransferProgressInfo(user: $user, acceptOrRejectOption: $acceptOrRejectOption, fileTransferIndex: $fileTransferIndex, filesMap: $filesMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransferProgressInfo &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.acceptOrRejectOption, acceptOrRejectOption) ||
                const DeepCollectionEquality().equals(
                    other.acceptOrRejectOption, acceptOrRejectOption)) &&
            (identical(other.fileTransferIndex, fileTransferIndex) ||
                const DeepCollectionEquality()
                    .equals(other.fileTransferIndex, fileTransferIndex)) &&
            (identical(other.filesMap, filesMap) ||
                const DeepCollectionEquality()
                    .equals(other.filesMap, filesMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(acceptOrRejectOption) ^
      const DeepCollectionEquality().hash(fileTransferIndex) ^
      const DeepCollectionEquality().hash(filesMap);

  @JsonKey(ignore: true)
  @override
  _$TransferProgressInfoCopyWith<_TransferProgressInfo> get copyWith =>
      __$TransferProgressInfoCopyWithImpl<_TransferProgressInfo>(
          this, _$identity);
}

abstract class _TransferProgressInfo extends TransferProgressInfo {
  const factory _TransferProgressInfo(
      {required User user,
      required Option<bool> acceptOrRejectOption,
      required int fileTransferIndex,
      required Map<FileInfo, double> filesMap}) = _$_TransferProgressInfo;
  const _TransferProgressInfo._() : super._();

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  Option<bool> get acceptOrRejectOption => throw _privateConstructorUsedError;
  @override
  int get fileTransferIndex => throw _privateConstructorUsedError;
  @override
  Map<FileInfo, double> get filesMap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransferProgressInfoCopyWith<_TransferProgressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
