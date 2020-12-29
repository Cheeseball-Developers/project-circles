// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'file_transfer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FileTransferEventTearOff {
  const _$FileTransferEventTearOff();

// ignore: unused_element
  _Initialize initialize() {
    return const _Initialize();
  }

// ignore: unused_element
  _ConfirmOutgoingFiles confirmOutgoingFiles({@required List<User> users}) {
    return _ConfirmOutgoingFiles(
      users: users,
    );
  }

// ignore: unused_element
  _CancelSend cancelSend() {
    return const _CancelSend();
  }

// ignore: unused_element
  _SendFilesInfo sendFilesInfo() {
    return const _SendFilesInfo();
  }

// ignore: unused_element
  _SendFiles sendFiles({@required String endPointId}) {
    return _SendFiles(
      endPointId: endPointId,
    );
  }

// ignore: unused_element
  _FilesSent filesSent() {
    return const _FilesSent();
  }

// ignore: unused_element
  _FileInfoReceived fileInfoReceived({FileInfo fileInfo}) {
    return _FileInfoReceived(
      fileInfo: fileInfo,
    );
  }

// ignore: unused_element
  _EndIdReceived endIdReceived({String endId}) {
    return _EndIdReceived(
      endId: endId,
    );
  }

// ignore: unused_element
  _ConfirmIncomingFiles confirmIncomingFiles({@required bool acceptOrReject}) {
    return _ConfirmIncomingFiles(
      acceptOrReject: acceptOrReject,
    );
  }

// ignore: unused_element
  _UpdateProgress updateProgress({@required PayloadInfo payloadInfo}) {
    return _UpdateProgress(
      payloadInfo: payloadInfo,
    );
  }

// ignore: unused_element
  _FilesReceived filesReceived() {
    return const _FilesReceived();
  }
}

/// @nodoc
// ignore: unused_element
const $FileTransferEvent = _$FileTransferEventTearOff();

/// @nodoc
mixin _$FileTransferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object users = freezed,
  }) {
    return _then(_ConfirmOutgoingFiles(
      users: users == freezed ? _value.users : users as List<User>,
    ));
  }
}

/// @nodoc
class _$_ConfirmOutgoingFiles implements _ConfirmOutgoingFiles {
  const _$_ConfirmOutgoingFiles({@required this.users}) : assert(users != null);

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

  @override
  _$ConfirmOutgoingFilesCopyWith<_ConfirmOutgoingFiles> get copyWith =>
      __$ConfirmOutgoingFilesCopyWithImpl<_ConfirmOutgoingFiles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return confirmOutgoingFiles(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmOutgoingFiles != null) {
      return confirmOutgoingFiles(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return confirmOutgoingFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmOutgoingFiles != null) {
      return confirmOutgoingFiles(this);
    }
    return orElse();
  }
}

abstract class _ConfirmOutgoingFiles implements FileTransferEvent {
  const factory _ConfirmOutgoingFiles({@required List<User> users}) =
      _$_ConfirmOutgoingFiles;

  List<User> get users;
  _$ConfirmOutgoingFilesCopyWith<_ConfirmOutgoingFiles> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return cancelSend();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelSend != null) {
      return cancelSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return cancelSend(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return sendFilesInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendFilesInfo != null) {
      return sendFilesInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return sendFilesInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object endPointId = freezed,
  }) {
    return _then(_SendFiles(
      endPointId:
          endPointId == freezed ? _value.endPointId : endPointId as String,
    ));
  }
}

/// @nodoc
class _$_SendFiles implements _SendFiles {
  const _$_SendFiles({@required this.endPointId}) : assert(endPointId != null);

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

  @override
  _$SendFilesCopyWith<_SendFiles> get copyWith =>
      __$SendFilesCopyWithImpl<_SendFiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return sendFiles(endPointId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendFiles != null) {
      return sendFiles(endPointId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return sendFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendFiles != null) {
      return sendFiles(this);
    }
    return orElse();
  }
}

abstract class _SendFiles implements FileTransferEvent {
  const factory _SendFiles({@required String endPointId}) = _$_SendFiles;

  String get endPointId;
  _$SendFilesCopyWith<_SendFiles> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return filesSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filesSent != null) {
      return filesSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return filesSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object fileInfo = freezed,
  }) {
    return _then(_FileInfoReceived(
      fileInfo: fileInfo == freezed ? _value.fileInfo : fileInfo as FileInfo,
    ));
  }

  @override
  $FileInfoCopyWith<$Res> get fileInfo {
    if (_value.fileInfo == null) {
      return null;
    }
    return $FileInfoCopyWith<$Res>(_value.fileInfo, (value) {
      return _then(_value.copyWith(fileInfo: value));
    });
  }
}

/// @nodoc
class _$_FileInfoReceived implements _FileInfoReceived {
  const _$_FileInfoReceived({this.fileInfo});

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

  @override
  _$FileInfoReceivedCopyWith<_FileInfoReceived> get copyWith =>
      __$FileInfoReceivedCopyWithImpl<_FileInfoReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return fileInfoReceived(fileInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileInfoReceived != null) {
      return fileInfoReceived(fileInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return fileInfoReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileInfoReceived != null) {
      return fileInfoReceived(this);
    }
    return orElse();
  }
}

abstract class _FileInfoReceived implements FileTransferEvent {
  const factory _FileInfoReceived({FileInfo fileInfo}) = _$_FileInfoReceived;

  FileInfo get fileInfo;
  _$FileInfoReceivedCopyWith<_FileInfoReceived> get copyWith;
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
    Object endId = freezed,
  }) {
    return _then(_EndIdReceived(
      endId: endId == freezed ? _value.endId : endId as String,
    ));
  }
}

/// @nodoc
class _$_EndIdReceived implements _EndIdReceived {
  const _$_EndIdReceived({this.endId});

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

  @override
  _$EndIdReceivedCopyWith<_EndIdReceived> get copyWith =>
      __$EndIdReceivedCopyWithImpl<_EndIdReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return endIdReceived(endId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endIdReceived != null) {
      return endIdReceived(endId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return endIdReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endIdReceived != null) {
      return endIdReceived(this);
    }
    return orElse();
  }
}

abstract class _EndIdReceived implements FileTransferEvent {
  const factory _EndIdReceived({String endId}) = _$_EndIdReceived;

  String get endId;
  _$EndIdReceivedCopyWith<_EndIdReceived> get copyWith;
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
    Object acceptOrReject = freezed,
  }) {
    return _then(_ConfirmIncomingFiles(
      acceptOrReject: acceptOrReject == freezed
          ? _value.acceptOrReject
          : acceptOrReject as bool,
    ));
  }
}

/// @nodoc
class _$_ConfirmIncomingFiles implements _ConfirmIncomingFiles {
  const _$_ConfirmIncomingFiles({@required this.acceptOrReject})
      : assert(acceptOrReject != null);

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

  @override
  _$ConfirmIncomingFilesCopyWith<_ConfirmIncomingFiles> get copyWith =>
      __$ConfirmIncomingFilesCopyWithImpl<_ConfirmIncomingFiles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return confirmIncomingFiles(acceptOrReject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmIncomingFiles != null) {
      return confirmIncomingFiles(acceptOrReject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return confirmIncomingFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmIncomingFiles != null) {
      return confirmIncomingFiles(this);
    }
    return orElse();
  }
}

abstract class _ConfirmIncomingFiles implements FileTransferEvent {
  const factory _ConfirmIncomingFiles({@required bool acceptOrReject}) =
      _$_ConfirmIncomingFiles;

  bool get acceptOrReject;
  _$ConfirmIncomingFilesCopyWith<_ConfirmIncomingFiles> get copyWith;
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
    Object payloadInfo = freezed,
  }) {
    return _then(_UpdateProgress(
      payloadInfo: payloadInfo == freezed
          ? _value.payloadInfo
          : payloadInfo as PayloadInfo,
    ));
  }

  @override
  $PayloadInfoCopyWith<$Res> get payloadInfo {
    if (_value.payloadInfo == null) {
      return null;
    }
    return $PayloadInfoCopyWith<$Res>(_value.payloadInfo, (value) {
      return _then(_value.copyWith(payloadInfo: value));
    });
  }
}

/// @nodoc
class _$_UpdateProgress implements _UpdateProgress {
  const _$_UpdateProgress({@required this.payloadInfo})
      : assert(payloadInfo != null);

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

  @override
  _$UpdateProgressCopyWith<_UpdateProgress> get copyWith =>
      __$UpdateProgressCopyWithImpl<_UpdateProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return updateProgress(payloadInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateProgress != null) {
      return updateProgress(payloadInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return updateProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateProgress != null) {
      return updateProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateProgress implements FileTransferEvent {
  const factory _UpdateProgress({@required PayloadInfo payloadInfo}) =
      _$_UpdateProgress;

  PayloadInfo get payloadInfo;
  _$UpdateProgressCopyWith<_UpdateProgress> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult initialize(),
    @required TResult confirmOutgoingFiles(List<User> users),
    @required TResult cancelSend(),
    @required TResult sendFilesInfo(),
    @required TResult sendFiles(String endPointId),
    @required TResult filesSent(),
    @required TResult fileInfoReceived(FileInfo fileInfo),
    @required TResult endIdReceived(String endId),
    @required TResult confirmIncomingFiles(bool acceptOrReject),
    @required TResult updateProgress(PayloadInfo payloadInfo),
    @required TResult filesReceived(),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return filesReceived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialize(),
    TResult confirmOutgoingFiles(List<User> users),
    TResult cancelSend(),
    TResult sendFilesInfo(),
    TResult sendFiles(String endPointId),
    TResult filesSent(),
    TResult fileInfoReceived(FileInfo fileInfo),
    TResult endIdReceived(String endId),
    TResult confirmIncomingFiles(bool acceptOrReject),
    TResult updateProgress(PayloadInfo payloadInfo),
    TResult filesReceived(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filesReceived != null) {
      return filesReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialize(_Initialize value),
    @required TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    @required TResult cancelSend(_CancelSend value),
    @required TResult sendFilesInfo(_SendFilesInfo value),
    @required TResult sendFiles(_SendFiles value),
    @required TResult filesSent(_FilesSent value),
    @required TResult fileInfoReceived(_FileInfoReceived value),
    @required TResult endIdReceived(_EndIdReceived value),
    @required TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    @required TResult updateProgress(_UpdateProgress value),
    @required TResult filesReceived(_FilesReceived value),
  }) {
    assert(initialize != null);
    assert(confirmOutgoingFiles != null);
    assert(cancelSend != null);
    assert(sendFilesInfo != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(fileInfoReceived != null);
    assert(endIdReceived != null);
    assert(confirmIncomingFiles != null);
    assert(updateProgress != null);
    assert(filesReceived != null);
    return filesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialize(_Initialize value),
    TResult confirmOutgoingFiles(_ConfirmOutgoingFiles value),
    TResult cancelSend(_CancelSend value),
    TResult sendFilesInfo(_SendFilesInfo value),
    TResult sendFiles(_SendFiles value),
    TResult filesSent(_FilesSent value),
    TResult fileInfoReceived(_FileInfoReceived value),
    TResult endIdReceived(_EndIdReceived value),
    TResult confirmIncomingFiles(_ConfirmIncomingFiles value),
    TResult updateProgress(_UpdateProgress value),
    TResult filesReceived(_FilesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
class _$FileTransferStateTearOff {
  const _$FileTransferStateTearOff();

// ignore: unused_element
  _Initial initial({@required Set<FileInfo> incomingFileInfo}) {
    return _Initial(
      incomingFileInfo: incomingFileInfo,
    );
  }

// ignore: unused_element
  _OutgoingFilesConfirmation outgoingFilesConfirmation(
      {@required Option<Set<FileInfo>> filesOption,
      @required List<User> users}) {
    return _OutgoingFilesConfirmation(
      filesOption: filesOption,
      users: users,
    );
  }

// ignore: unused_element
  _AwaitingSendApproval awaitingSendApproval({@required Set<FileInfo> files}) {
    return _AwaitingSendApproval(
      files: files,
    );
  }

// ignore: unused_element
  _IncomingFilesConfirmation incomingFilesConfirmation(
      {@required Set<FileInfo> files, @required String endId}) {
    return _IncomingFilesConfirmation(
      files: files,
      endId: endId,
    );
  }

// ignore: unused_element
  _TransferringFiles transferringFiles(
      {@required FileTransferType type,
      @required Map<FileInfo, double> filesMap}) {
    return _TransferringFiles(
      type: type,
      filesMap: filesMap,
    );
  }

// ignore: unused_element
  _TransferComplete transferComplete() {
    return const _TransferComplete();
  }

// ignore: unused_element
  _HasFailed hasFailed({@required FileTransferFailure failure}) {
    return _HasFailed(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FileTransferState = _$FileTransferStateTearOff();

/// @nodoc
mixin _$FileTransferState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  });
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
    Object incomingFileInfo = freezed,
  }) {
    return _then(_Initial(
      incomingFileInfo: incomingFileInfo == freezed
          ? _value.incomingFileInfo
          : incomingFileInfo as Set<FileInfo>,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial({@required this.incomingFileInfo})
      : assert(incomingFileInfo != null);

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

  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return initial(incomingFileInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(incomingFileInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FileTransferState {
  const factory _Initial({@required Set<FileInfo> incomingFileInfo}) =
      _$_Initial;

  Set<FileInfo> get incomingFileInfo;
  _$InitialCopyWith<_Initial> get copyWith;
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
    Object filesOption = freezed,
    Object users = freezed,
  }) {
    return _then(_OutgoingFilesConfirmation(
      filesOption: filesOption == freezed
          ? _value.filesOption
          : filesOption as Option<Set<FileInfo>>,
      users: users == freezed ? _value.users : users as List<User>,
    ));
  }
}

/// @nodoc
class _$_OutgoingFilesConfirmation implements _OutgoingFilesConfirmation {
  const _$_OutgoingFilesConfirmation(
      {@required this.filesOption, @required this.users})
      : assert(filesOption != null),
        assert(users != null);

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

  @override
  _$OutgoingFilesConfirmationCopyWith<_OutgoingFilesConfirmation>
      get copyWith =>
          __$OutgoingFilesConfirmationCopyWithImpl<_OutgoingFilesConfirmation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return outgoingFilesConfirmation(filesOption, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (outgoingFilesConfirmation != null) {
      return outgoingFilesConfirmation(filesOption, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return outgoingFilesConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (outgoingFilesConfirmation != null) {
      return outgoingFilesConfirmation(this);
    }
    return orElse();
  }
}

abstract class _OutgoingFilesConfirmation implements FileTransferState {
  const factory _OutgoingFilesConfirmation(
      {@required Option<Set<FileInfo>> filesOption,
      @required List<User> users}) = _$_OutgoingFilesConfirmation;

  Option<Set<FileInfo>> get filesOption;
  List<User> get users;
  _$OutgoingFilesConfirmationCopyWith<_OutgoingFilesConfirmation> get copyWith;
}

/// @nodoc
abstract class _$AwaitingSendApprovalCopyWith<$Res> {
  factory _$AwaitingSendApprovalCopyWith(_AwaitingSendApproval value,
          $Res Function(_AwaitingSendApproval) then) =
      __$AwaitingSendApprovalCopyWithImpl<$Res>;
  $Res call({Set<FileInfo> files});
}

/// @nodoc
class __$AwaitingSendApprovalCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$AwaitingSendApprovalCopyWith<$Res> {
  __$AwaitingSendApprovalCopyWithImpl(
      _AwaitingSendApproval _value, $Res Function(_AwaitingSendApproval) _then)
      : super(_value, (v) => _then(v as _AwaitingSendApproval));

  @override
  _AwaitingSendApproval get _value => super._value as _AwaitingSendApproval;

  @override
  $Res call({
    Object files = freezed,
  }) {
    return _then(_AwaitingSendApproval(
      files: files == freezed ? _value.files : files as Set<FileInfo>,
    ));
  }
}

/// @nodoc
class _$_AwaitingSendApproval implements _AwaitingSendApproval {
  const _$_AwaitingSendApproval({@required this.files}) : assert(files != null);

  @override
  final Set<FileInfo> files;

  @override
  String toString() {
    return 'FileTransferState.awaitingSendApproval(files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AwaitingSendApproval &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(files);

  @override
  _$AwaitingSendApprovalCopyWith<_AwaitingSendApproval> get copyWith =>
      __$AwaitingSendApprovalCopyWithImpl<_AwaitingSendApproval>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return awaitingSendApproval(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (awaitingSendApproval != null) {
      return awaitingSendApproval(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return awaitingSendApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (awaitingSendApproval != null) {
      return awaitingSendApproval(this);
    }
    return orElse();
  }
}

abstract class _AwaitingSendApproval implements FileTransferState {
  const factory _AwaitingSendApproval({@required Set<FileInfo> files}) =
      _$_AwaitingSendApproval;

  Set<FileInfo> get files;
  _$AwaitingSendApprovalCopyWith<_AwaitingSendApproval> get copyWith;
}

/// @nodoc
abstract class _$IncomingFilesConfirmationCopyWith<$Res> {
  factory _$IncomingFilesConfirmationCopyWith(_IncomingFilesConfirmation value,
          $Res Function(_IncomingFilesConfirmation) then) =
      __$IncomingFilesConfirmationCopyWithImpl<$Res>;
  $Res call({Set<FileInfo> files, String endId});
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
    Object files = freezed,
    Object endId = freezed,
  }) {
    return _then(_IncomingFilesConfirmation(
      files: files == freezed ? _value.files : files as Set<FileInfo>,
      endId: endId == freezed ? _value.endId : endId as String,
    ));
  }
}

/// @nodoc
class _$_IncomingFilesConfirmation implements _IncomingFilesConfirmation {
  const _$_IncomingFilesConfirmation(
      {@required this.files, @required this.endId})
      : assert(files != null),
        assert(endId != null);

  @override
  final Set<FileInfo> files;
  @override
  final String endId;

  @override
  String toString() {
    return 'FileTransferState.incomingFilesConfirmation(files: $files, endId: $endId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncomingFilesConfirmation &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.endId, endId) ||
                const DeepCollectionEquality().equals(other.endId, endId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(endId);

  @override
  _$IncomingFilesConfirmationCopyWith<_IncomingFilesConfirmation>
      get copyWith =>
          __$IncomingFilesConfirmationCopyWithImpl<_IncomingFilesConfirmation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return incomingFilesConfirmation(files, endId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (incomingFilesConfirmation != null) {
      return incomingFilesConfirmation(files, endId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return incomingFilesConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (incomingFilesConfirmation != null) {
      return incomingFilesConfirmation(this);
    }
    return orElse();
  }
}

abstract class _IncomingFilesConfirmation implements FileTransferState {
  const factory _IncomingFilesConfirmation(
      {@required Set<FileInfo> files,
      @required String endId}) = _$_IncomingFilesConfirmation;

  Set<FileInfo> get files;
  String get endId;
  _$IncomingFilesConfirmationCopyWith<_IncomingFilesConfirmation> get copyWith;
}

/// @nodoc
abstract class _$TransferringFilesCopyWith<$Res> {
  factory _$TransferringFilesCopyWith(
          _TransferringFiles value, $Res Function(_TransferringFiles) then) =
      __$TransferringFilesCopyWithImpl<$Res>;
  $Res call({FileTransferType type, Map<FileInfo, double> filesMap});

  $FileTransferTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$TransferringFilesCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res>
    implements _$TransferringFilesCopyWith<$Res> {
  __$TransferringFilesCopyWithImpl(
      _TransferringFiles _value, $Res Function(_TransferringFiles) _then)
      : super(_value, (v) => _then(v as _TransferringFiles));

  @override
  _TransferringFiles get _value => super._value as _TransferringFiles;

  @override
  $Res call({
    Object type = freezed,
    Object filesMap = freezed,
  }) {
    return _then(_TransferringFiles(
      type: type == freezed ? _value.type : type as FileTransferType,
      filesMap: filesMap == freezed
          ? _value.filesMap
          : filesMap as Map<FileInfo, double>,
    ));
  }

  @override
  $FileTransferTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $FileTransferTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
class _$_TransferringFiles implements _TransferringFiles {
  const _$_TransferringFiles({@required this.type, @required this.filesMap})
      : assert(type != null),
        assert(filesMap != null);

  @override
  final FileTransferType type;
  @override
  final Map<FileInfo, double> filesMap;

  @override
  String toString() {
    return 'FileTransferState.transferringFiles(type: $type, filesMap: $filesMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransferringFiles &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.filesMap, filesMap) ||
                const DeepCollectionEquality()
                    .equals(other.filesMap, filesMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(filesMap);

  @override
  _$TransferringFilesCopyWith<_TransferringFiles> get copyWith =>
      __$TransferringFilesCopyWithImpl<_TransferringFiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return transferringFiles(type, filesMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (transferringFiles != null) {
      return transferringFiles(type, filesMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return transferringFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (transferringFiles != null) {
      return transferringFiles(this);
    }
    return orElse();
  }
}

abstract class _TransferringFiles implements FileTransferState {
  const factory _TransferringFiles(
      {@required FileTransferType type,
      @required Map<FileInfo, double> filesMap}) = _$_TransferringFiles;

  FileTransferType get type;
  Map<FileInfo, double> get filesMap;
  _$TransferringFilesCopyWith<_TransferringFiles> get copyWith;
}

/// @nodoc
abstract class _$TransferCompleteCopyWith<$Res> {
  factory _$TransferCompleteCopyWith(
          _TransferComplete value, $Res Function(_TransferComplete) then) =
      __$TransferCompleteCopyWithImpl<$Res>;
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
}

/// @nodoc
class _$_TransferComplete implements _TransferComplete {
  const _$_TransferComplete();

  @override
  String toString() {
    return 'FileTransferState.transferComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TransferComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return transferComplete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (transferComplete != null) {
      return transferComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return transferComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (transferComplete != null) {
      return transferComplete(this);
    }
    return orElse();
  }
}

abstract class _TransferComplete implements FileTransferState {
  const factory _TransferComplete() = _$_TransferComplete;
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
    Object failure = freezed,
  }) {
    return _then(_HasFailed(
      failure:
          failure == freezed ? _value.failure : failure as FileTransferFailure,
    ));
  }

  @override
  $FileTransferFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FileTransferFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_HasFailed implements _HasFailed {
  const _$_HasFailed({@required this.failure}) : assert(failure != null);

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

  @override
  _$HasFailedCopyWith<_HasFailed> get copyWith =>
      __$HasFailedCopyWithImpl<_HasFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Set<FileInfo> incomingFileInfo),
    @required
        TResult outgoingFilesConfirmation(
            Option<Set<FileInfo>> filesOption, List<User> users),
    @required TResult awaitingSendApproval(Set<FileInfo> files),
    @required
        TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    @required
        TResult transferringFiles(
            FileTransferType type, Map<FileInfo, double> filesMap),
    @required TResult transferComplete(),
    @required TResult hasFailed(FileTransferFailure failure),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return hasFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Set<FileInfo> incomingFileInfo),
    TResult outgoingFilesConfirmation(
        Option<Set<FileInfo>> filesOption, List<User> users),
    TResult awaitingSendApproval(Set<FileInfo> files),
    TResult incomingFilesConfirmation(Set<FileInfo> files, String endId),
    TResult transferringFiles(
        FileTransferType type, Map<FileInfo, double> filesMap),
    TResult transferComplete(),
    TResult hasFailed(FileTransferFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasFailed != null) {
      return hasFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    @required TResult awaitingSendApproval(_AwaitingSendApproval value),
    @required
        TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    @required TResult transferringFiles(_TransferringFiles value),
    @required TResult transferComplete(_TransferComplete value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(outgoingFilesConfirmation != null);
    assert(awaitingSendApproval != null);
    assert(incomingFilesConfirmation != null);
    assert(transferringFiles != null);
    assert(transferComplete != null);
    assert(hasFailed != null);
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult outgoingFilesConfirmation(_OutgoingFilesConfirmation value),
    TResult awaitingSendApproval(_AwaitingSendApproval value),
    TResult incomingFilesConfirmation(_IncomingFilesConfirmation value),
    TResult transferringFiles(_TransferringFiles value),
    TResult transferComplete(_TransferComplete value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasFailed != null) {
      return hasFailed(this);
    }
    return orElse();
  }
}

abstract class _HasFailed implements FileTransferState {
  const factory _HasFailed({@required FileTransferFailure failure}) =
      _$_HasFailed;

  FileTransferFailure get failure;
  _$HasFailedCopyWith<_HasFailed> get copyWith;
}
