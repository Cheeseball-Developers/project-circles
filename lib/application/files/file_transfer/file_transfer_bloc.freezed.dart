// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'file_transfer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileTransferEventTearOff {
  const _$FileTransferEventTearOff();

  _Initialize initialize() {
    return const _Initialize();
  }

  _ConfirmOutgoingFiles confirmOutgoingFiles({required List<User> users}) {
    return _ConfirmOutgoingFiles(
      users: users,
    );
  }

  _CancelSend cancelSend() {
    return const _CancelSend();
  }

  _SendFilesInfo sendFilesInfo() {
    return const _SendFilesInfo();
  }

  _SendFiles sendFiles({required String endPointId}) {
    return _SendFiles(
      endPointId: endPointId,
    );
  }

  _FilesSent filesSent() {
    return const _FilesSent();
  }

  _FileInfoReceived fileInfoReceived({required FileInfo fileInfo}) {
    return _FileInfoReceived(
      fileInfo: fileInfo,
    );
  }

  _EndIdReceived endIdReceived({required String endId}) {
    return _EndIdReceived(
      endId: endId,
    );
  }

  _ConfirmIncomingFiles confirmIncomingFiles({required bool acceptOrReject}) {
    return _ConfirmIncomingFiles(
      acceptOrReject: acceptOrReject,
    );
  }

  _UpdateProgress updateProgress({required PayloadInfo payloadInfo}) {
    return _UpdateProgress(
      payloadInfo: payloadInfo,
    );
  }

  _IncrementFileTransferIndex incrementFileTransferIndex(
      {required UniqueId uid}) {
    return _IncrementFileTransferIndex(
      uid: uid,
    );
  }

  _FilesReceived filesReceived() {
    return const _FilesReceived();
  }

  _AbortFileTransfer abortFileTransfer() {
    return const _AbortFileTransfer();
  }

  _Reset reset() {
    return const _Reset();
  }
}

/// @nodoc
const $FileTransferEvent = _$FileTransferEventTearOff();

/// @nodoc
mixin _$FileTransferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileTransferEventCopyWith<$Res> {
  factory $FileTransferEventCopyWith(
          FileTransferEvent value, $Res Function(FileTransferEvent) then) =
      _$FileTransferEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileTransferEventCopyWithImpl<$Res>
    implements $FileTransferEventCopyWith<$Res> {
  _$FileTransferEventCopyWithImpl(this._value, this._then);

  final FileTransferEvent _value;
  // ignore: unused_field
  final $Res Function(FileTransferEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;
}

/// @nodoc
class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'FileTransferEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements FileTransferEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$ConfirmOutgoingFilesCopyWith<$Res> {
  factory _$ConfirmOutgoingFilesCopyWith(_ConfirmOutgoingFiles value,
          $Res Function(_ConfirmOutgoingFiles) then) =
      __$ConfirmOutgoingFilesCopyWithImpl<$Res>;
  $Res call({List<User> users});
}

/// @nodoc
class __$ConfirmOutgoingFilesCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$ConfirmOutgoingFilesCopyWith<$Res> {
  __$ConfirmOutgoingFilesCopyWithImpl(
      _ConfirmOutgoingFiles _value, $Res Function(_ConfirmOutgoingFiles) _then)
      : super(_value, (v) => _then(v as _ConfirmOutgoingFiles));

  @override
  _ConfirmOutgoingFiles get _value => super._value as _ConfirmOutgoingFiles;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_ConfirmOutgoingFiles(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
class _$_ConfirmOutgoingFiles implements _ConfirmOutgoingFiles {
  const _$_ConfirmOutgoingFiles({required this.users});

  @override
  final List<User> users;

  @override
  String toString() {
    return 'FileTransferEvent.confirmOutgoingFiles(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmOutgoingFiles &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$ConfirmOutgoingFilesCopyWith<_ConfirmOutgoingFiles> get copyWith =>
      __$ConfirmOutgoingFilesCopyWithImpl<_ConfirmOutgoingFiles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return confirmOutgoingFiles(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (confirmOutgoingFiles != null) {
      return confirmOutgoingFiles(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return confirmOutgoingFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (confirmOutgoingFiles != null) {
      return confirmOutgoingFiles(this);
    }
    return orElse();
  }
}

abstract class _ConfirmOutgoingFiles implements FileTransferEvent {
  const factory _ConfirmOutgoingFiles({required List<User> users}) =
      _$_ConfirmOutgoingFiles;

  List<User> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfirmOutgoingFilesCopyWith<_ConfirmOutgoingFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelSendCopyWith<$Res> {
  factory _$CancelSendCopyWith(
          _CancelSend value, $Res Function(_CancelSend) then) =
      __$CancelSendCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelSendCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$CancelSendCopyWith<$Res> {
  __$CancelSendCopyWithImpl(
      _CancelSend _value, $Res Function(_CancelSend) _then)
      : super(_value, (v) => _then(v as _CancelSend));

  @override
  _CancelSend get _value => super._value as _CancelSend;
}

/// @nodoc
class _$_CancelSend implements _CancelSend {
  const _$_CancelSend();

  @override
  String toString() {
    return 'FileTransferEvent.cancelSend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CancelSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return cancelSend();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (cancelSend != null) {
      return cancelSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return cancelSend(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (cancelSend != null) {
      return cancelSend(this);
    }
    return orElse();
  }
}

abstract class _CancelSend implements FileTransferEvent {
  const factory _CancelSend() = _$_CancelSend;
}

/// @nodoc
abstract class _$SendFilesInfoCopyWith<$Res> {
  factory _$SendFilesInfoCopyWith(
          _SendFilesInfo value, $Res Function(_SendFilesInfo) then) =
      __$SendFilesInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendFilesInfoCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$SendFilesInfoCopyWith<$Res> {
  __$SendFilesInfoCopyWithImpl(
      _SendFilesInfo _value, $Res Function(_SendFilesInfo) _then)
      : super(_value, (v) => _then(v as _SendFilesInfo));

  @override
  _SendFilesInfo get _value => super._value as _SendFilesInfo;
}

/// @nodoc
class _$_SendFilesInfo implements _SendFilesInfo {
  const _$_SendFilesInfo();

  @override
  String toString() {
    return 'FileTransferEvent.sendFilesInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendFilesInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return sendFilesInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (sendFilesInfo != null) {
      return sendFilesInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return sendFilesInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (sendFilesInfo != null) {
      return sendFilesInfo(this);
    }
    return orElse();
  }
}

abstract class _SendFilesInfo implements FileTransferEvent {
  const factory _SendFilesInfo() = _$_SendFilesInfo;
}

/// @nodoc
abstract class _$SendFilesCopyWith<$Res> {
  factory _$SendFilesCopyWith(
          _SendFiles value, $Res Function(_SendFiles) then) =
      __$SendFilesCopyWithImpl<$Res>;
  $Res call({String endPointId});
}

/// @nodoc
class __$SendFilesCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$SendFilesCopyWith<$Res> {
  __$SendFilesCopyWithImpl(_SendFiles _value, $Res Function(_SendFiles) _then)
      : super(_value, (v) => _then(v as _SendFiles));

  @override
  _SendFiles get _value => super._value as _SendFiles;

  @override
  $Res call({
    Object? endPointId = freezed,
  }) {
    return _then(_SendFiles(
      endPointId: endPointId == freezed
          ? _value.endPointId
          : endPointId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SendFiles implements _SendFiles {
  const _$_SendFiles({required this.endPointId});

  @override
  final String endPointId;

  @override
  String toString() {
    return 'FileTransferEvent.sendFiles(endPointId: $endPointId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendFiles &&
            (identical(other.endPointId, endPointId) ||
                const DeepCollectionEquality()
                    .equals(other.endPointId, endPointId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(endPointId);

  @JsonKey(ignore: true)
  @override
  _$SendFilesCopyWith<_SendFiles> get copyWith =>
      __$SendFilesCopyWithImpl<_SendFiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return sendFiles(endPointId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (sendFiles != null) {
      return sendFiles(endPointId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return sendFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (sendFiles != null) {
      return sendFiles(this);
    }
    return orElse();
  }
}

abstract class _SendFiles implements FileTransferEvent {
  const factory _SendFiles({required String endPointId}) = _$_SendFiles;

  String get endPointId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendFilesCopyWith<_SendFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilesSentCopyWith<$Res> {
  factory _$FilesSentCopyWith(
          _FilesSent value, $Res Function(_FilesSent) then) =
      __$FilesSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilesSentCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$FilesSentCopyWith<$Res> {
  __$FilesSentCopyWithImpl(_FilesSent _value, $Res Function(_FilesSent) _then)
      : super(_value, (v) => _then(v as _FilesSent));

  @override
  _FilesSent get _value => super._value as _FilesSent;
}

/// @nodoc
class _$_FilesSent implements _FilesSent {
  const _$_FilesSent();

  @override
  String toString() {
    return 'FileTransferEvent.filesSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FilesSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return filesSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (filesSent != null) {
      return filesSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return filesSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (filesSent != null) {
      return filesSent(this);
    }
    return orElse();
  }
}

abstract class _FilesSent implements FileTransferEvent {
  const factory _FilesSent() = _$_FilesSent;
}

/// @nodoc
abstract class _$FileInfoReceivedCopyWith<$Res> {
  factory _$FileInfoReceivedCopyWith(
          _FileInfoReceived value, $Res Function(_FileInfoReceived) then) =
      __$FileInfoReceivedCopyWithImpl<$Res>;
  $Res call({FileInfo fileInfo});

  $FileInfoCopyWith<$Res> get fileInfo;
}

/// @nodoc
class __$FileInfoReceivedCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$FileInfoReceivedCopyWith<$Res> {
  __$FileInfoReceivedCopyWithImpl(
      _FileInfoReceived _value, $Res Function(_FileInfoReceived) _then)
      : super(_value, (v) => _then(v as _FileInfoReceived));

  @override
  _FileInfoReceived get _value => super._value as _FileInfoReceived;

  @override
  $Res call({
    Object? fileInfo = freezed,
  }) {
    return _then(_FileInfoReceived(
      fileInfo: fileInfo == freezed
          ? _value.fileInfo
          : fileInfo // ignore: cast_nullable_to_non_nullable
              as FileInfo,
    ));
  }

  @override
  $FileInfoCopyWith<$Res> get fileInfo {
    return $FileInfoCopyWith<$Res>(_value.fileInfo, (value) {
      return _then(_value.copyWith(fileInfo: value));
    });
  }
}

/// @nodoc
class _$_FileInfoReceived implements _FileInfoReceived {
  const _$_FileInfoReceived({required this.fileInfo});

  @override
  final FileInfo fileInfo;

  @override
  String toString() {
    return 'FileTransferEvent.fileInfoReceived(fileInfo: $fileInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileInfoReceived &&
            (identical(other.fileInfo, fileInfo) ||
                const DeepCollectionEquality()
                    .equals(other.fileInfo, fileInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fileInfo);

  @JsonKey(ignore: true)
  @override
  _$FileInfoReceivedCopyWith<_FileInfoReceived> get copyWith =>
      __$FileInfoReceivedCopyWithImpl<_FileInfoReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return fileInfoReceived(fileInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fileInfoReceived != null) {
      return fileInfoReceived(fileInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return fileInfoReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (fileInfoReceived != null) {
      return fileInfoReceived(this);
    }
    return orElse();
  }
}

abstract class _FileInfoReceived implements FileTransferEvent {
  const factory _FileInfoReceived({required FileInfo fileInfo}) =
      _$_FileInfoReceived;

  FileInfo get fileInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FileInfoReceivedCopyWith<_FileInfoReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EndIdReceivedCopyWith<$Res> {
  factory _$EndIdReceivedCopyWith(
          _EndIdReceived value, $Res Function(_EndIdReceived) then) =
      __$EndIdReceivedCopyWithImpl<$Res>;
  $Res call({String endId});
}

/// @nodoc
class __$EndIdReceivedCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$EndIdReceivedCopyWith<$Res> {
  __$EndIdReceivedCopyWithImpl(
      _EndIdReceived _value, $Res Function(_EndIdReceived) _then)
      : super(_value, (v) => _then(v as _EndIdReceived));

  @override
  _EndIdReceived get _value => super._value as _EndIdReceived;

  @override
  $Res call({
    Object? endId = freezed,
  }) {
    return _then(_EndIdReceived(
      endId: endId == freezed
          ? _value.endId
          : endId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_EndIdReceived implements _EndIdReceived {
  const _$_EndIdReceived({required this.endId});

  @override
  final String endId;

  @override
  String toString() {
    return 'FileTransferEvent.endIdReceived(endId: $endId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndIdReceived &&
            (identical(other.endId, endId) ||
                const DeepCollectionEquality().equals(other.endId, endId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(endId);

  @JsonKey(ignore: true)
  @override
  _$EndIdReceivedCopyWith<_EndIdReceived> get copyWith =>
      __$EndIdReceivedCopyWithImpl<_EndIdReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return endIdReceived(endId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (endIdReceived != null) {
      return endIdReceived(endId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return endIdReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (endIdReceived != null) {
      return endIdReceived(this);
    }
    return orElse();
  }
}

abstract class _EndIdReceived implements FileTransferEvent {
  const factory _EndIdReceived({required String endId}) = _$_EndIdReceived;

  String get endId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EndIdReceivedCopyWith<_EndIdReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmIncomingFilesCopyWith<$Res> {
  factory _$ConfirmIncomingFilesCopyWith(_ConfirmIncomingFiles value,
          $Res Function(_ConfirmIncomingFiles) then) =
      __$ConfirmIncomingFilesCopyWithImpl<$Res>;
  $Res call({bool acceptOrReject});
}

/// @nodoc
class __$ConfirmIncomingFilesCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$ConfirmIncomingFilesCopyWith<$Res> {
  __$ConfirmIncomingFilesCopyWithImpl(
      _ConfirmIncomingFiles _value, $Res Function(_ConfirmIncomingFiles) _then)
      : super(_value, (v) => _then(v as _ConfirmIncomingFiles));

  @override
  _ConfirmIncomingFiles get _value => super._value as _ConfirmIncomingFiles;

  @override
  $Res call({
    Object? acceptOrReject = freezed,
  }) {
    return _then(_ConfirmIncomingFiles(
      acceptOrReject: acceptOrReject == freezed
          ? _value.acceptOrReject
          : acceptOrReject // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ConfirmIncomingFiles implements _ConfirmIncomingFiles {
  const _$_ConfirmIncomingFiles({required this.acceptOrReject});

  @override
  final bool acceptOrReject;

  @override
  String toString() {
    return 'FileTransferEvent.confirmIncomingFiles(acceptOrReject: $acceptOrReject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmIncomingFiles &&
            (identical(other.acceptOrReject, acceptOrReject) ||
                const DeepCollectionEquality()
                    .equals(other.acceptOrReject, acceptOrReject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(acceptOrReject);

  @JsonKey(ignore: true)
  @override
  _$ConfirmIncomingFilesCopyWith<_ConfirmIncomingFiles> get copyWith =>
      __$ConfirmIncomingFilesCopyWithImpl<_ConfirmIncomingFiles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return confirmIncomingFiles(acceptOrReject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (confirmIncomingFiles != null) {
      return confirmIncomingFiles(acceptOrReject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return confirmIncomingFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (confirmIncomingFiles != null) {
      return confirmIncomingFiles(this);
    }
    return orElse();
  }
}

abstract class _ConfirmIncomingFiles implements FileTransferEvent {
  const factory _ConfirmIncomingFiles({required bool acceptOrReject}) =
      _$_ConfirmIncomingFiles;

  bool get acceptOrReject => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfirmIncomingFilesCopyWith<_ConfirmIncomingFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateProgressCopyWith<$Res> {
  factory _$UpdateProgressCopyWith(
          _UpdateProgress value, $Res Function(_UpdateProgress) then) =
      __$UpdateProgressCopyWithImpl<$Res>;
  $Res call({PayloadInfo payloadInfo});

  $PayloadInfoCopyWith<$Res> get payloadInfo;
}

/// @nodoc
class __$UpdateProgressCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$UpdateProgressCopyWith<$Res> {
  __$UpdateProgressCopyWithImpl(
      _UpdateProgress _value, $Res Function(_UpdateProgress) _then)
      : super(_value, (v) => _then(v as _UpdateProgress));

  @override
  _UpdateProgress get _value => super._value as _UpdateProgress;

  @override
  $Res call({
    Object? payloadInfo = freezed,
  }) {
    return _then(_UpdateProgress(
      payloadInfo: payloadInfo == freezed
          ? _value.payloadInfo
          : payloadInfo // ignore: cast_nullable_to_non_nullable
              as PayloadInfo,
    ));
  }

  @override
  $PayloadInfoCopyWith<$Res> get payloadInfo {
    return $PayloadInfoCopyWith<$Res>(_value.payloadInfo, (value) {
      return _then(_value.copyWith(payloadInfo: value));
    });
  }
}

/// @nodoc
class _$_UpdateProgress implements _UpdateProgress {
  const _$_UpdateProgress({required this.payloadInfo});

  @override
  final PayloadInfo payloadInfo;

  @override
  String toString() {
    return 'FileTransferEvent.updateProgress(payloadInfo: $payloadInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProgress &&
            (identical(other.payloadInfo, payloadInfo) ||
                const DeepCollectionEquality()
                    .equals(other.payloadInfo, payloadInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payloadInfo);

  @JsonKey(ignore: true)
  @override
  _$UpdateProgressCopyWith<_UpdateProgress> get copyWith =>
      __$UpdateProgressCopyWithImpl<_UpdateProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return updateProgress(payloadInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateProgress != null) {
      return updateProgress(payloadInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return updateProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (updateProgress != null) {
      return updateProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateProgress implements FileTransferEvent {
  const factory _UpdateProgress({required PayloadInfo payloadInfo}) =
      _$_UpdateProgress;

  PayloadInfo get payloadInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateProgressCopyWith<_UpdateProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IncrementFileTransferIndexCopyWith<$Res> {
  factory _$IncrementFileTransferIndexCopyWith(
          _IncrementFileTransferIndex value,
          $Res Function(_IncrementFileTransferIndex) then) =
      __$IncrementFileTransferIndexCopyWithImpl<$Res>;
  $Res call({UniqueId uid});
}

/// @nodoc
class __$IncrementFileTransferIndexCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$IncrementFileTransferIndexCopyWith<$Res> {
  __$IncrementFileTransferIndexCopyWithImpl(_IncrementFileTransferIndex _value,
      $Res Function(_IncrementFileTransferIndex) _then)
      : super(_value, (v) => _then(v as _IncrementFileTransferIndex));

  @override
  _IncrementFileTransferIndex get _value =>
      super._value as _IncrementFileTransferIndex;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_IncrementFileTransferIndex(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
class _$_IncrementFileTransferIndex implements _IncrementFileTransferIndex {
  const _$_IncrementFileTransferIndex({required this.uid});

  @override
  final UniqueId uid;

  @override
  String toString() {
    return 'FileTransferEvent.incrementFileTransferIndex(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncrementFileTransferIndex &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$IncrementFileTransferIndexCopyWith<_IncrementFileTransferIndex>
      get copyWith => __$IncrementFileTransferIndexCopyWithImpl<
          _IncrementFileTransferIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return incrementFileTransferIndex(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (incrementFileTransferIndex != null) {
      return incrementFileTransferIndex(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return incrementFileTransferIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (incrementFileTransferIndex != null) {
      return incrementFileTransferIndex(this);
    }
    return orElse();
  }
}

abstract class _IncrementFileTransferIndex implements FileTransferEvent {
  const factory _IncrementFileTransferIndex({required UniqueId uid}) =
      _$_IncrementFileTransferIndex;

  UniqueId get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IncrementFileTransferIndexCopyWith<_IncrementFileTransferIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilesReceivedCopyWith<$Res> {
  factory _$FilesReceivedCopyWith(
          _FilesReceived value, $Res Function(_FilesReceived) then) =
      __$FilesReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilesReceivedCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$FilesReceivedCopyWith<$Res> {
  __$FilesReceivedCopyWithImpl(
      _FilesReceived _value, $Res Function(_FilesReceived) _then)
      : super(_value, (v) => _then(v as _FilesReceived));

  @override
  _FilesReceived get _value => super._value as _FilesReceived;
}

/// @nodoc
class _$_FilesReceived implements _FilesReceived {
  const _$_FilesReceived();

  @override
  String toString() {
    return 'FileTransferEvent.filesReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FilesReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return filesReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (filesReceived != null) {
      return filesReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return filesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (filesReceived != null) {
      return filesReceived(this);
    }
    return orElse();
  }
}

abstract class _FilesReceived implements FileTransferEvent {
  const factory _FilesReceived() = _$_FilesReceived;
}

/// @nodoc
abstract class _$AbortFileTransferCopyWith<$Res> {
  factory _$AbortFileTransferCopyWith(
          _AbortFileTransfer value, $Res Function(_AbortFileTransfer) then) =
      __$AbortFileTransferCopyWithImpl<$Res>;
}

/// @nodoc
class __$AbortFileTransferCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$AbortFileTransferCopyWith<$Res> {
  __$AbortFileTransferCopyWithImpl(
      _AbortFileTransfer _value, $Res Function(_AbortFileTransfer) _then)
      : super(_value, (v) => _then(v as _AbortFileTransfer));

  @override
  _AbortFileTransfer get _value => super._value as _AbortFileTransfer;
}

/// @nodoc
class _$_AbortFileTransfer implements _AbortFileTransfer {
  const _$_AbortFileTransfer();

  @override
  String toString() {
    return 'FileTransferEvent.abortFileTransfer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AbortFileTransfer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return abortFileTransfer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (abortFileTransfer != null) {
      return abortFileTransfer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return abortFileTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (abortFileTransfer != null) {
      return abortFileTransfer(this);
    }
    return orElse();
  }
}

abstract class _AbortFileTransfer implements FileTransferEvent {
  const factory _AbortFileTransfer() = _$_AbortFileTransfer;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$FileTransferEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc
class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'FileTransferEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<User> users) confirmOutgoingFiles,
    required TResult Function() cancelSend,
    required TResult Function() sendFilesInfo,
    required TResult Function(String endPointId) sendFiles,
    required TResult Function() filesSent,
    required TResult Function(FileInfo fileInfo) fileInfoReceived,
    required TResult Function(String endId) endIdReceived,
    required TResult Function(bool acceptOrReject) confirmIncomingFiles,
    required TResult Function(PayloadInfo payloadInfo) updateProgress,
    required TResult Function(UniqueId uid) incrementFileTransferIndex,
    required TResult Function() filesReceived,
    required TResult Function() abortFileTransfer,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<User> users)? confirmOutgoingFiles,
    TResult Function()? cancelSend,
    TResult Function()? sendFilesInfo,
    TResult Function(String endPointId)? sendFiles,
    TResult Function()? filesSent,
    TResult Function(FileInfo fileInfo)? fileInfoReceived,
    TResult Function(String endId)? endIdReceived,
    TResult Function(bool acceptOrReject)? confirmIncomingFiles,
    TResult Function(PayloadInfo payloadInfo)? updateProgress,
    TResult Function(UniqueId uid)? incrementFileTransferIndex,
    TResult Function()? filesReceived,
    TResult Function()? abortFileTransfer,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ConfirmOutgoingFiles value) confirmOutgoingFiles,
    required TResult Function(_CancelSend value) cancelSend,
    required TResult Function(_SendFilesInfo value) sendFilesInfo,
    required TResult Function(_SendFiles value) sendFiles,
    required TResult Function(_FilesSent value) filesSent,
    required TResult Function(_FileInfoReceived value) fileInfoReceived,
    required TResult Function(_EndIdReceived value) endIdReceived,
    required TResult Function(_ConfirmIncomingFiles value) confirmIncomingFiles,
    required TResult Function(_UpdateProgress value) updateProgress,
    required TResult Function(_IncrementFileTransferIndex value)
        incrementFileTransferIndex,
    required TResult Function(_FilesReceived value) filesReceived,
    required TResult Function(_AbortFileTransfer value) abortFileTransfer,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ConfirmOutgoingFiles value)? confirmOutgoingFiles,
    TResult Function(_CancelSend value)? cancelSend,
    TResult Function(_SendFilesInfo value)? sendFilesInfo,
    TResult Function(_SendFiles value)? sendFiles,
    TResult Function(_FilesSent value)? filesSent,
    TResult Function(_FileInfoReceived value)? fileInfoReceived,
    TResult Function(_EndIdReceived value)? endIdReceived,
    TResult Function(_ConfirmIncomingFiles value)? confirmIncomingFiles,
    TResult Function(_UpdateProgress value)? updateProgress,
    TResult Function(_IncrementFileTransferIndex value)?
        incrementFileTransferIndex,
    TResult Function(_FilesReceived value)? filesReceived,
    TResult Function(_AbortFileTransfer value)? abortFileTransfer,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements FileTransferEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
class _$FileTransferStateTearOff {
  const _$FileTransferStateTearOff();

  _Initial initial({required Set<FileInfo> incomingFileInfo}) {
    return _Initial(
      incomingFileInfo: incomingFileInfo,
    );
  }

  _OutgoingFilesConfirmation outgoingFilesConfirmation(
      {required Option<Set<FileInfo>> filesOption, required List<User> users}) {
    return _OutgoingFilesConfirmation(
      filesOption: filesOption,
      users: users,
    );
  }

  _IncomingFilesConfirmation incomingFilesConfirmation(
      {required Set<FileInfo> files, required User user}) {
    return _IncomingFilesConfirmation(
      files: files,
      user: user,
    );
  }

  _SendingFiles sendingFiles(
      {required List<TransferProgressInfo> transferProgressInfos,
      required List<File> files}) {
    return _SendingFiles(
      transferProgressInfos: transferProgressInfos,
      files: files,
    );
  }

  _ReceivingFiles receivingFiles(
      {required TransferProgressInfo transferProgressInfo}) {
    return _ReceivingFiles(
      transferProgressInfo: transferProgressInfo,
    );
  }

  _TransferComplete transferComplete(
      {required FileTransferType type,
      required List<TransferProgressInfo> transferProgressInfos}) {
    return _TransferComplete(
      type: type,
      transferProgressInfos: transferProgressInfos,
    );
  }

  _HasFailed hasFailed({required FileTransferFailure failure}) {
    return _HasFailed(
      failure: failure,
    );
  }
}

/// @nodoc
const $FileTransferState = _$FileTransferStateTearOff();

/// @nodoc
mixin _$FileTransferState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileTransferStateCopyWith<$Res> {
  factory $FileTransferStateCopyWith(
          FileTransferState value, $Res Function(FileTransferState) then) =
      _$FileTransferStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileTransferStateCopyWithImpl<$Res>
    implements $FileTransferStateCopyWith<$Res> {
  _$FileTransferStateCopyWithImpl(this._value, this._then);

  final FileTransferState _value;
  // ignore: unused_field
  final $Res Function(FileTransferState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({Set<FileInfo> incomingFileInfo});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? incomingFileInfo = freezed,
  }) {
    return _then(_Initial(
      incomingFileInfo: incomingFileInfo == freezed
          ? _value.incomingFileInfo
          : incomingFileInfo // ignore: cast_nullable_to_non_nullable
              as Set<FileInfo>,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial({required this.incomingFileInfo});

  @override
  final Set<FileInfo> incomingFileInfo;

  @override
  String toString() {
    return 'FileTransferState.initial(incomingFileInfo: $incomingFileInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.incomingFileInfo, incomingFileInfo) ||
                const DeepCollectionEquality()
                    .equals(other.incomingFileInfo, incomingFileInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(incomingFileInfo);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) {
    return initial(incomingFileInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(incomingFileInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FileTransferState {
  const factory _Initial({required Set<FileInfo> incomingFileInfo}) =
      _$_Initial;

  Set<FileInfo> get incomingFileInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OutgoingFilesConfirmationCopyWith<$Res> {
  factory _$OutgoingFilesConfirmationCopyWith(_OutgoingFilesConfirmation value,
          $Res Function(_OutgoingFilesConfirmation) then) =
      __$OutgoingFilesConfirmationCopyWithImpl<$Res>;
  $Res call({Option<Set<FileInfo>> filesOption, List<User> users});
}

/// @nodoc
class __$OutgoingFilesConfirmationCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$OutgoingFilesConfirmationCopyWith<$Res> {
  __$OutgoingFilesConfirmationCopyWithImpl(_OutgoingFilesConfirmation _value,
      $Res Function(_OutgoingFilesConfirmation) _then)
      : super(_value, (v) => _then(v as _OutgoingFilesConfirmation));

  @override
  _OutgoingFilesConfirmation get _value =>
      super._value as _OutgoingFilesConfirmation;

  @override
  $Res call({
    Object? filesOption = freezed,
    Object? users = freezed,
  }) {
    return _then(_OutgoingFilesConfirmation(
      filesOption: filesOption == freezed
          ? _value.filesOption
          : filesOption // ignore: cast_nullable_to_non_nullable
              as Option<Set<FileInfo>>,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
class _$_OutgoingFilesConfirmation implements _OutgoingFilesConfirmation {
  const _$_OutgoingFilesConfirmation(
      {required this.filesOption, required this.users});

  @override
  final Option<Set<FileInfo>> filesOption;
  @override
  final List<User> users;

  @override
  String toString() {
    return 'FileTransferState.outgoingFilesConfirmation(filesOption: $filesOption, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutgoingFilesConfirmation &&
            (identical(other.filesOption, filesOption) ||
                const DeepCollectionEquality()
                    .equals(other.filesOption, filesOption)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filesOption) ^
      const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$OutgoingFilesConfirmationCopyWith<_OutgoingFilesConfirmation>
      get copyWith =>
          __$OutgoingFilesConfirmationCopyWithImpl<_OutgoingFilesConfirmation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) {
    return outgoingFilesConfirmation(filesOption, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (outgoingFilesConfirmation != null) {
      return outgoingFilesConfirmation(filesOption, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return outgoingFilesConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (outgoingFilesConfirmation != null) {
      return outgoingFilesConfirmation(this);
    }
    return orElse();
  }
}

abstract class _OutgoingFilesConfirmation implements FileTransferState {
  const factory _OutgoingFilesConfirmation(
      {required Option<Set<FileInfo>> filesOption,
      required List<User> users}) = _$_OutgoingFilesConfirmation;

  Option<Set<FileInfo>> get filesOption => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OutgoingFilesConfirmationCopyWith<_OutgoingFilesConfirmation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IncomingFilesConfirmationCopyWith<$Res> {
  factory _$IncomingFilesConfirmationCopyWith(_IncomingFilesConfirmation value,
          $Res Function(_IncomingFilesConfirmation) then) =
      __$IncomingFilesConfirmationCopyWithImpl<$Res>;
  $Res call({Set<FileInfo> files, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$IncomingFilesConfirmationCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$IncomingFilesConfirmationCopyWith<$Res> {
  __$IncomingFilesConfirmationCopyWithImpl(_IncomingFilesConfirmation _value,
      $Res Function(_IncomingFilesConfirmation) _then)
      : super(_value, (v) => _then(v as _IncomingFilesConfirmation));

  @override
  _IncomingFilesConfirmation get _value =>
      super._value as _IncomingFilesConfirmation;

  @override
  $Res call({
    Object? files = freezed,
    Object? user = freezed,
  }) {
    return _then(_IncomingFilesConfirmation(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Set<FileInfo>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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
class _$_IncomingFilesConfirmation implements _IncomingFilesConfirmation {
  const _$_IncomingFilesConfirmation({required this.files, required this.user});

  @override
  final Set<FileInfo> files;
  @override
  final User user;

  @override
  String toString() {
    return 'FileTransferState.incomingFilesConfirmation(files: $files, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncomingFilesConfirmation &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$IncomingFilesConfirmationCopyWith<_IncomingFilesConfirmation>
      get copyWith =>
          __$IncomingFilesConfirmationCopyWithImpl<_IncomingFilesConfirmation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) {
    return incomingFilesConfirmation(files, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (incomingFilesConfirmation != null) {
      return incomingFilesConfirmation(files, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return incomingFilesConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (incomingFilesConfirmation != null) {
      return incomingFilesConfirmation(this);
    }
    return orElse();
  }
}

abstract class _IncomingFilesConfirmation implements FileTransferState {
  const factory _IncomingFilesConfirmation(
      {required Set<FileInfo> files,
      required User user}) = _$_IncomingFilesConfirmation;

  Set<FileInfo> get files => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IncomingFilesConfirmationCopyWith<_IncomingFilesConfirmation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendingFilesCopyWith<$Res> {
  factory _$SendingFilesCopyWith(
          _SendingFiles value, $Res Function(_SendingFiles) then) =
      __$SendingFilesCopyWithImpl<$Res>;
  $Res call(
      {List<TransferProgressInfo> transferProgressInfos, List<File> files});
}

/// @nodoc
class __$SendingFilesCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$SendingFilesCopyWith<$Res> {
  __$SendingFilesCopyWithImpl(
      _SendingFiles _value, $Res Function(_SendingFiles) _then)
      : super(_value, (v) => _then(v as _SendingFiles));

  @override
  _SendingFiles get _value => super._value as _SendingFiles;

  @override
  $Res call({
    Object? transferProgressInfos = freezed,
    Object? files = freezed,
  }) {
    return _then(_SendingFiles(
      transferProgressInfos: transferProgressInfos == freezed
          ? _value.transferProgressInfos
          : transferProgressInfos // ignore: cast_nullable_to_non_nullable
              as List<TransferProgressInfo>,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
class _$_SendingFiles implements _SendingFiles {
  const _$_SendingFiles(
      {required this.transferProgressInfos, required this.files});

  @override
  final List<TransferProgressInfo> transferProgressInfos;
  @override
  final List<File> files;

  @override
  String toString() {
    return 'FileTransferState.sendingFiles(transferProgressInfos: $transferProgressInfos, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendingFiles &&
            (identical(other.transferProgressInfos, transferProgressInfos) ||
                const DeepCollectionEquality().equals(
                    other.transferProgressInfos, transferProgressInfos)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transferProgressInfos) ^
      const DeepCollectionEquality().hash(files);

  @JsonKey(ignore: true)
  @override
  _$SendingFilesCopyWith<_SendingFiles> get copyWith =>
      __$SendingFilesCopyWithImpl<_SendingFiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) {
    return sendingFiles(transferProgressInfos, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (sendingFiles != null) {
      return sendingFiles(transferProgressInfos, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return sendingFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (sendingFiles != null) {
      return sendingFiles(this);
    }
    return orElse();
  }
}

abstract class _SendingFiles implements FileTransferState {
  const factory _SendingFiles(
      {required List<TransferProgressInfo> transferProgressInfos,
      required List<File> files}) = _$_SendingFiles;

  List<TransferProgressInfo> get transferProgressInfos =>
      throw _privateConstructorUsedError;
  List<File> get files => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendingFilesCopyWith<_SendingFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReceivingFilesCopyWith<$Res> {
  factory _$ReceivingFilesCopyWith(
          _ReceivingFiles value, $Res Function(_ReceivingFiles) then) =
      __$ReceivingFilesCopyWithImpl<$Res>;
  $Res call({TransferProgressInfo transferProgressInfo});

  $TransferProgressInfoCopyWith<$Res> get transferProgressInfo;
}

/// @nodoc
class __$ReceivingFilesCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$ReceivingFilesCopyWith<$Res> {
  __$ReceivingFilesCopyWithImpl(
      _ReceivingFiles _value, $Res Function(_ReceivingFiles) _then)
      : super(_value, (v) => _then(v as _ReceivingFiles));

  @override
  _ReceivingFiles get _value => super._value as _ReceivingFiles;

  @override
  $Res call({
    Object? transferProgressInfo = freezed,
  }) {
    return _then(_ReceivingFiles(
      transferProgressInfo: transferProgressInfo == freezed
          ? _value.transferProgressInfo
          : transferProgressInfo // ignore: cast_nullable_to_non_nullable
              as TransferProgressInfo,
    ));
  }

  @override
  $TransferProgressInfoCopyWith<$Res> get transferProgressInfo {
    return $TransferProgressInfoCopyWith<$Res>(_value.transferProgressInfo,
        (value) {
      return _then(_value.copyWith(transferProgressInfo: value));
    });
  }
}

/// @nodoc
class _$_ReceivingFiles implements _ReceivingFiles {
  const _$_ReceivingFiles({required this.transferProgressInfo});

  @override
  final TransferProgressInfo transferProgressInfo;

  @override
  String toString() {
    return 'FileTransferState.receivingFiles(transferProgressInfo: $transferProgressInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReceivingFiles &&
            (identical(other.transferProgressInfo, transferProgressInfo) ||
                const DeepCollectionEquality()
                    .equals(other.transferProgressInfo, transferProgressInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transferProgressInfo);

  @JsonKey(ignore: true)
  @override
  _$ReceivingFilesCopyWith<_ReceivingFiles> get copyWith =>
      __$ReceivingFilesCopyWithImpl<_ReceivingFiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) {
    return receivingFiles(transferProgressInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (receivingFiles != null) {
      return receivingFiles(transferProgressInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return receivingFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (receivingFiles != null) {
      return receivingFiles(this);
    }
    return orElse();
  }
}

abstract class _ReceivingFiles implements FileTransferState {
  const factory _ReceivingFiles(
      {required TransferProgressInfo transferProgressInfo}) = _$_ReceivingFiles;

  TransferProgressInfo get transferProgressInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReceivingFilesCopyWith<_ReceivingFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransferCompleteCopyWith<$Res> {
  factory _$TransferCompleteCopyWith(
          _TransferComplete value, $Res Function(_TransferComplete) then) =
      __$TransferCompleteCopyWithImpl<$Res>;
  $Res call(
      {FileTransferType type,
      List<TransferProgressInfo> transferProgressInfos});

  $FileTransferTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$TransferCompleteCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$TransferCompleteCopyWith<$Res> {
  __$TransferCompleteCopyWithImpl(
      _TransferComplete _value, $Res Function(_TransferComplete) _then)
      : super(_value, (v) => _then(v as _TransferComplete));

  @override
  _TransferComplete get _value => super._value as _TransferComplete;

  @override
  $Res call({
    Object? type = freezed,
    Object? transferProgressInfos = freezed,
  }) {
    return _then(_TransferComplete(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileTransferType,
      transferProgressInfos: transferProgressInfos == freezed
          ? _value.transferProgressInfos
          : transferProgressInfos // ignore: cast_nullable_to_non_nullable
              as List<TransferProgressInfo>,
    ));
  }

  @override
  $FileTransferTypeCopyWith<$Res> get type {
    return $FileTransferTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
class _$_TransferComplete implements _TransferComplete {
  const _$_TransferComplete(
      {required this.type, required this.transferProgressInfos});

  @override
  final FileTransferType type;
  @override
  final List<TransferProgressInfo> transferProgressInfos;

  @override
  String toString() {
    return 'FileTransferState.transferComplete(type: $type, transferProgressInfos: $transferProgressInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransferComplete &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.transferProgressInfos, transferProgressInfos) ||
                const DeepCollectionEquality().equals(
                    other.transferProgressInfos, transferProgressInfos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(transferProgressInfos);

  @JsonKey(ignore: true)
  @override
  _$TransferCompleteCopyWith<_TransferComplete> get copyWith =>
      __$TransferCompleteCopyWithImpl<_TransferComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) {
    return transferComplete(type, transferProgressInfos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (transferComplete != null) {
      return transferComplete(type, transferProgressInfos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return transferComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (transferComplete != null) {
      return transferComplete(this);
    }
    return orElse();
  }
}

abstract class _TransferComplete implements FileTransferState {
  const factory _TransferComplete(
          {required FileTransferType type,
          required List<TransferProgressInfo> transferProgressInfos}) =
      _$_TransferComplete;

  FileTransferType get type => throw _privateConstructorUsedError;
  List<TransferProgressInfo> get transferProgressInfos =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransferCompleteCopyWith<_TransferComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasFailedCopyWith<$Res> {
  factory _$HasFailedCopyWith(
          _HasFailed value, $Res Function(_HasFailed) then) =
      __$HasFailedCopyWithImpl<$Res>;
  $Res call({FileTransferFailure failure});

  $FileTransferFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$HasFailedCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$HasFailedCopyWith<$Res> {
  __$HasFailedCopyWithImpl(_HasFailed _value, $Res Function(_HasFailed) _then)
      : super(_value, (v) => _then(v as _HasFailed));

  @override
  _HasFailed get _value => super._value as _HasFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_HasFailed(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FileTransferFailure,
    ));
  }

  @override
  $FileTransferFailureCopyWith<$Res> get failure {
    return $FileTransferFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_HasFailed implements _HasFailed {
  const _$_HasFailed({required this.failure});

  @override
  final FileTransferFailure failure;

  @override
  String toString() {
    return 'FileTransferState.hasFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$HasFailedCopyWith<_HasFailed> get copyWith =>
      __$HasFailedCopyWithImpl<_HasFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<FileInfo> incomingFileInfo) initial,
    required TResult Function(
            Option<Set<FileInfo>> filesOption, List<User> users)
        outgoingFilesConfirmation,
    required TResult Function(Set<FileInfo> files, User user)
        incomingFilesConfirmation,
    required TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)
        sendingFiles,
    required TResult Function(TransferProgressInfo transferProgressInfo)
        receivingFiles,
    required TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)
        transferComplete,
    required TResult Function(FileTransferFailure failure) hasFailed,
  }) {
    return hasFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<FileInfo> incomingFileInfo)? initial,
    TResult Function(Option<Set<FileInfo>> filesOption, List<User> users)?
        outgoingFilesConfirmation,
    TResult Function(Set<FileInfo> files, User user)? incomingFilesConfirmation,
    TResult Function(
            List<TransferProgressInfo> transferProgressInfos, List<File> files)?
        sendingFiles,
    TResult Function(TransferProgressInfo transferProgressInfo)? receivingFiles,
    TResult Function(FileTransferType type,
            List<TransferProgressInfo> transferProgressInfos)?
        transferComplete,
    TResult Function(FileTransferFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasFailed != null) {
      return hasFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OutgoingFilesConfirmation value)
        outgoingFilesConfirmation,
    required TResult Function(_IncomingFilesConfirmation value)
        incomingFilesConfirmation,
    required TResult Function(_SendingFiles value) sendingFiles,
    required TResult Function(_ReceivingFiles value) receivingFiles,
    required TResult Function(_TransferComplete value) transferComplete,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OutgoingFilesConfirmation value)?
        outgoingFilesConfirmation,
    TResult Function(_IncomingFilesConfirmation value)?
        incomingFilesConfirmation,
    TResult Function(_SendingFiles value)? sendingFiles,
    TResult Function(_ReceivingFiles value)? receivingFiles,
    TResult Function(_TransferComplete value)? transferComplete,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasFailed != null) {
      return hasFailed(this);
    }
    return orElse();
  }
}

abstract class _HasFailed implements FileTransferState {
  const factory _HasFailed({required FileTransferFailure failure}) =
      _$_HasFailed;

  FileTransferFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasFailedCopyWith<_HasFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
