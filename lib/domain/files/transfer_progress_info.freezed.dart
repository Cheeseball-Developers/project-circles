// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transfer_progress_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransferProgressInfoTearOff {
  const _$TransferProgressInfoTearOff();

// ignore: unused_element
  _TransferProgressInfo call(
      {@required User user,
      @required Option<bool> acceptOrRejectOption,
      @required int fileTransferIndex,
      @required Map<FileInfo, double> filesMap}) {
    return _TransferProgressInfo(
      user: user,
      acceptOrRejectOption: acceptOrRejectOption,
      fileTransferIndex: fileTransferIndex,
      filesMap: filesMap,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferProgressInfo = _$TransferProgressInfoTearOff();

/// @nodoc
mixin _$TransferProgressInfo {
  User get user;
  Option<bool> get acceptOrRejectOption;
  int get fileTransferIndex;
  Map<FileInfo, double> get filesMap;

  $TransferProgressInfoCopyWith<TransferProgressInfo> get copyWith;
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
    Object user = freezed,
    Object acceptOrRejectOption = freezed,
    Object fileTransferIndex = freezed,
    Object filesMap = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      acceptOrRejectOption: acceptOrRejectOption == freezed
          ? _value.acceptOrRejectOption
          : acceptOrRejectOption as Option<bool>,
      fileTransferIndex: fileTransferIndex == freezed
          ? _value.fileTransferIndex
          : fileTransferIndex as int,
      filesMap: filesMap == freezed
          ? _value.filesMap
          : filesMap as Map<FileInfo, double>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
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
    Object user = freezed,
    Object acceptOrRejectOption = freezed,
    Object fileTransferIndex = freezed,
    Object filesMap = freezed,
  }) {
    return _then(_TransferProgressInfo(
      user: user == freezed ? _value.user : user as User,
      acceptOrRejectOption: acceptOrRejectOption == freezed
          ? _value.acceptOrRejectOption
          : acceptOrRejectOption as Option<bool>,
      fileTransferIndex: fileTransferIndex == freezed
          ? _value.fileTransferIndex
          : fileTransferIndex as int,
      filesMap: filesMap == freezed
          ? _value.filesMap
          : filesMap as Map<FileInfo, double>,
    ));
  }
}

/// @nodoc
class _$_TransferProgressInfo extends _TransferProgressInfo {
  const _$_TransferProgressInfo(
      {@required this.user,
      @required this.acceptOrRejectOption,
      @required this.fileTransferIndex,
      @required this.filesMap})
      : assert(user != null),
        assert(acceptOrRejectOption != null),
        assert(fileTransferIndex != null),
        assert(filesMap != null),
        super._();

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

  @override
  _$TransferProgressInfoCopyWith<_TransferProgressInfo> get copyWith =>
      __$TransferProgressInfoCopyWithImpl<_TransferProgressInfo>(
          this, _$identity);
}

abstract class _TransferProgressInfo extends TransferProgressInfo {
  const _TransferProgressInfo._() : super._();
  const factory _TransferProgressInfo(
      {@required User user,
      @required Option<bool> acceptOrRejectOption,
      @required int fileTransferIndex,
      @required Map<FileInfo, double> filesMap}) = _$_TransferProgressInfo;

  @override
  User get user;
  @override
  Option<bool> get acceptOrRejectOption;
  @override
  int get fileTransferIndex;
  @override
  Map<FileInfo, double> get filesMap;
  @override
  _$TransferProgressInfoCopyWith<_TransferProgressInfo> get copyWith;
}
