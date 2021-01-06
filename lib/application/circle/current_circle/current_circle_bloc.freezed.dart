// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'current_circle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CurrentCircleEventTearOff {
  const _$CurrentCircleEventTearOff();

// ignore: unused_element
  StartCircle startCircle({@required User host}) {
    return StartCircle(
      host: host,
    );
  }

// ignore: unused_element
  DeviceRequestedConnection deviceRequestedConnection({@required User user}) {
    return DeviceRequestedConnection(
      user: user,
    );
  }

// ignore: unused_element
  AcceptOrReject acceptOrReject(
      {@required User requestingUser, @required bool acceptConnection}) {
    return AcceptOrReject(
      requestingUser: requestingUser,
      acceptConnection: acceptConnection,
    );
  }

// ignore: unused_element
  JoinCircle joinCircle({@required User host}) {
    return JoinCircle(
      host: host,
    );
  }

// ignore: unused_element
  ShowFilesDialog showFilesDialog() {
    return const ShowFilesDialog();
  }

// ignore: unused_element
  ShowMembersDialog showMembersDialog() {
    return const ShowMembersDialog();
  }

// ignore: unused_element
  ShowFileTransferDialog showFileTransferDialog() {
    return const ShowFileTransferDialog();
  }

// ignore: unused_element
  FilesDialogClosed filesDialogClosed() {
    return const FilesDialogClosed();
  }

// ignore: unused_element
  MembersDialogClosed membersDialogClosed() {
    return const MembersDialogClosed();
  }

// ignore: unused_element
  FileTransferDialogClosed fileTransferDialogClosed() {
    return const FileTransferDialogClosed();
  }

// ignore: unused_element
  MemberLeft memberLeft({@required String id}) {
    return MemberLeft(
      id: id,
    );
  }

// ignore: unused_element
  RemoveMember removeMember({@required User member}) {
    return RemoveMember(
      member: member,
    );
  }

// ignore: unused_element
  LeaveCircle leaveCircle() {
    return const LeaveCircle();
  }

// ignore: unused_element
  CloseCircle closeCircle() {
    return const CloseCircle();
  }

// ignore: unused_element
  Disconnected disconnected() {
    return const Disconnected();
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentCircleEvent = _$CurrentCircleEventTearOff();

/// @nodoc
mixin _$CurrentCircleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CurrentCircleEventCopyWith<$Res> {
  factory $CurrentCircleEventCopyWith(
          CurrentCircleEvent value, $Res Function(CurrentCircleEvent) then) =
      _$CurrentCircleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentCircleEventCopyWithImpl<$Res>
    implements $CurrentCircleEventCopyWith<$Res> {
  _$CurrentCircleEventCopyWithImpl(this._value, this._then);

  final CurrentCircleEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentCircleEvent) _then;
}

/// @nodoc
abstract class $StartCircleCopyWith<$Res> {
  factory $StartCircleCopyWith(
          StartCircle value, $Res Function(StartCircle) then) =
      _$StartCircleCopyWithImpl<$Res>;
  $Res call({User host});

  $UserCopyWith<$Res> get host;
}

/// @nodoc
class _$StartCircleCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $StartCircleCopyWith<$Res> {
  _$StartCircleCopyWithImpl(
      StartCircle _value, $Res Function(StartCircle) _then)
      : super(_value, (v) => _then(v as StartCircle));

  @override
  StartCircle get _value => super._value as StartCircle;

  @override
  $Res call({
    Object host = freezed,
  }) {
    return _then(StartCircle(
      host: host == freezed ? _value.host : host as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get host {
    if (_value.host == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }
}

/// @nodoc
class _$StartCircle implements StartCircle {
  const _$StartCircle({@required this.host}) : assert(host != null);

  @override
  final User host;

  @override
  String toString() {
    return 'CurrentCircleEvent.startCircle(host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartCircle &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(host);

  @override
  $StartCircleCopyWith<StartCircle> get copyWith =>
      _$StartCircleCopyWithImpl<StartCircle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return startCircle(host);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startCircle != null) {
      return startCircle(host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return startCircle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startCircle != null) {
      return startCircle(this);
    }
    return orElse();
  }
}

abstract class StartCircle implements CurrentCircleEvent {
  const factory StartCircle({@required User host}) = _$StartCircle;

  User get host;
  $StartCircleCopyWith<StartCircle> get copyWith;
}

/// @nodoc
abstract class $DeviceRequestedConnectionCopyWith<$Res> {
  factory $DeviceRequestedConnectionCopyWith(DeviceRequestedConnection value,
          $Res Function(DeviceRequestedConnection) then) =
      _$DeviceRequestedConnectionCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DeviceRequestedConnectionCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $DeviceRequestedConnectionCopyWith<$Res> {
  _$DeviceRequestedConnectionCopyWithImpl(DeviceRequestedConnection _value,
      $Res Function(DeviceRequestedConnection) _then)
      : super(_value, (v) => _then(v as DeviceRequestedConnection));

  @override
  DeviceRequestedConnection get _value =>
      super._value as DeviceRequestedConnection;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(DeviceRequestedConnection(
      user: user == freezed ? _value.user : user as User,
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
class _$DeviceRequestedConnection implements DeviceRequestedConnection {
  const _$DeviceRequestedConnection({@required this.user})
      : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'CurrentCircleEvent.deviceRequestedConnection(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceRequestedConnection &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $DeviceRequestedConnectionCopyWith<DeviceRequestedConnection> get copyWith =>
      _$DeviceRequestedConnectionCopyWithImpl<DeviceRequestedConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return deviceRequestedConnection(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceRequestedConnection != null) {
      return deviceRequestedConnection(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return deviceRequestedConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceRequestedConnection != null) {
      return deviceRequestedConnection(this);
    }
    return orElse();
  }
}

abstract class DeviceRequestedConnection implements CurrentCircleEvent {
  const factory DeviceRequestedConnection({@required User user}) =
      _$DeviceRequestedConnection;

  User get user;
  $DeviceRequestedConnectionCopyWith<DeviceRequestedConnection> get copyWith;
}

/// @nodoc
abstract class $AcceptOrRejectCopyWith<$Res> {
  factory $AcceptOrRejectCopyWith(
          AcceptOrReject value, $Res Function(AcceptOrReject) then) =
      _$AcceptOrRejectCopyWithImpl<$Res>;
  $Res call({User requestingUser, bool acceptConnection});

  $UserCopyWith<$Res> get requestingUser;
}

/// @nodoc
class _$AcceptOrRejectCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $AcceptOrRejectCopyWith<$Res> {
  _$AcceptOrRejectCopyWithImpl(
      AcceptOrReject _value, $Res Function(AcceptOrReject) _then)
      : super(_value, (v) => _then(v as AcceptOrReject));

  @override
  AcceptOrReject get _value => super._value as AcceptOrReject;

  @override
  $Res call({
    Object requestingUser = freezed,
    Object acceptConnection = freezed,
  }) {
    return _then(AcceptOrReject(
      requestingUser: requestingUser == freezed
          ? _value.requestingUser
          : requestingUser as User,
      acceptConnection: acceptConnection == freezed
          ? _value.acceptConnection
          : acceptConnection as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get requestingUser {
    if (_value.requestingUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.requestingUser, (value) {
      return _then(_value.copyWith(requestingUser: value));
    });
  }
}

/// @nodoc
class _$AcceptOrReject implements AcceptOrReject {
  const _$AcceptOrReject(
      {@required this.requestingUser, @required this.acceptConnection})
      : assert(requestingUser != null),
        assert(acceptConnection != null);

  @override
  final User requestingUser;
  @override
  final bool acceptConnection;

  @override
  String toString() {
    return 'CurrentCircleEvent.acceptOrReject(requestingUser: $requestingUser, acceptConnection: $acceptConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcceptOrReject &&
            (identical(other.requestingUser, requestingUser) ||
                const DeepCollectionEquality()
                    .equals(other.requestingUser, requestingUser)) &&
            (identical(other.acceptConnection, acceptConnection) ||
                const DeepCollectionEquality()
                    .equals(other.acceptConnection, acceptConnection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestingUser) ^
      const DeepCollectionEquality().hash(acceptConnection);

  @override
  $AcceptOrRejectCopyWith<AcceptOrReject> get copyWith =>
      _$AcceptOrRejectCopyWithImpl<AcceptOrReject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return acceptOrReject(requestingUser, acceptConnection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (acceptOrReject != null) {
      return acceptOrReject(requestingUser, acceptConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return acceptOrReject(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (acceptOrReject != null) {
      return acceptOrReject(this);
    }
    return orElse();
  }
}

abstract class AcceptOrReject implements CurrentCircleEvent {
  const factory AcceptOrReject(
      {@required User requestingUser,
      @required bool acceptConnection}) = _$AcceptOrReject;

  User get requestingUser;
  bool get acceptConnection;
  $AcceptOrRejectCopyWith<AcceptOrReject> get copyWith;
}

/// @nodoc
abstract class $JoinCircleCopyWith<$Res> {
  factory $JoinCircleCopyWith(
          JoinCircle value, $Res Function(JoinCircle) then) =
      _$JoinCircleCopyWithImpl<$Res>;
  $Res call({User host});

  $UserCopyWith<$Res> get host;
}

/// @nodoc
class _$JoinCircleCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $JoinCircleCopyWith<$Res> {
  _$JoinCircleCopyWithImpl(JoinCircle _value, $Res Function(JoinCircle) _then)
      : super(_value, (v) => _then(v as JoinCircle));

  @override
  JoinCircle get _value => super._value as JoinCircle;

  @override
  $Res call({
    Object host = freezed,
  }) {
    return _then(JoinCircle(
      host: host == freezed ? _value.host : host as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get host {
    if (_value.host == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }
}

/// @nodoc
class _$JoinCircle implements JoinCircle {
  const _$JoinCircle({@required this.host}) : assert(host != null);

  @override
  final User host;

  @override
  String toString() {
    return 'CurrentCircleEvent.joinCircle(host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JoinCircle &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(host);

  @override
  $JoinCircleCopyWith<JoinCircle> get copyWith =>
      _$JoinCircleCopyWithImpl<JoinCircle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return joinCircle(host);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinCircle != null) {
      return joinCircle(host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return joinCircle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinCircle != null) {
      return joinCircle(this);
    }
    return orElse();
  }
}

abstract class JoinCircle implements CurrentCircleEvent {
  const factory JoinCircle({@required User host}) = _$JoinCircle;

  User get host;
  $JoinCircleCopyWith<JoinCircle> get copyWith;
}

/// @nodoc
abstract class $ShowFilesDialogCopyWith<$Res> {
  factory $ShowFilesDialogCopyWith(
          ShowFilesDialog value, $Res Function(ShowFilesDialog) then) =
      _$ShowFilesDialogCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowFilesDialogCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $ShowFilesDialogCopyWith<$Res> {
  _$ShowFilesDialogCopyWithImpl(
      ShowFilesDialog _value, $Res Function(ShowFilesDialog) _then)
      : super(_value, (v) => _then(v as ShowFilesDialog));

  @override
  ShowFilesDialog get _value => super._value as ShowFilesDialog;
}

/// @nodoc
class _$ShowFilesDialog implements ShowFilesDialog {
  const _$ShowFilesDialog();

  @override
  String toString() {
    return 'CurrentCircleEvent.showFilesDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowFilesDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFilesDialog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFilesDialog != null) {
      return showFilesDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFilesDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFilesDialog != null) {
      return showFilesDialog(this);
    }
    return orElse();
  }
}

abstract class ShowFilesDialog implements CurrentCircleEvent {
  const factory ShowFilesDialog() = _$ShowFilesDialog;
}

/// @nodoc
abstract class $ShowMembersDialogCopyWith<$Res> {
  factory $ShowMembersDialogCopyWith(
          ShowMembersDialog value, $Res Function(ShowMembersDialog) then) =
      _$ShowMembersDialogCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowMembersDialogCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $ShowMembersDialogCopyWith<$Res> {
  _$ShowMembersDialogCopyWithImpl(
      ShowMembersDialog _value, $Res Function(ShowMembersDialog) _then)
      : super(_value, (v) => _then(v as ShowMembersDialog));

  @override
  ShowMembersDialog get _value => super._value as ShowMembersDialog;
}

/// @nodoc
class _$ShowMembersDialog implements ShowMembersDialog {
  const _$ShowMembersDialog();

  @override
  String toString() {
    return 'CurrentCircleEvent.showMembersDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowMembersDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showMembersDialog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showMembersDialog != null) {
      return showMembersDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showMembersDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showMembersDialog != null) {
      return showMembersDialog(this);
    }
    return orElse();
  }
}

abstract class ShowMembersDialog implements CurrentCircleEvent {
  const factory ShowMembersDialog() = _$ShowMembersDialog;
}

/// @nodoc
abstract class $ShowFileTransferDialogCopyWith<$Res> {
  factory $ShowFileTransferDialogCopyWith(ShowFileTransferDialog value,
          $Res Function(ShowFileTransferDialog) then) =
      _$ShowFileTransferDialogCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowFileTransferDialogCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $ShowFileTransferDialogCopyWith<$Res> {
  _$ShowFileTransferDialogCopyWithImpl(ShowFileTransferDialog _value,
      $Res Function(ShowFileTransferDialog) _then)
      : super(_value, (v) => _then(v as ShowFileTransferDialog));

  @override
  ShowFileTransferDialog get _value => super._value as ShowFileTransferDialog;
}

/// @nodoc
class _$ShowFileTransferDialog implements ShowFileTransferDialog {
  const _$ShowFileTransferDialog();

  @override
  String toString() {
    return 'CurrentCircleEvent.showFileTransferDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowFileTransferDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFileTransferDialog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFileTransferDialog != null) {
      return showFileTransferDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFileTransferDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFileTransferDialog != null) {
      return showFileTransferDialog(this);
    }
    return orElse();
  }
}

abstract class ShowFileTransferDialog implements CurrentCircleEvent {
  const factory ShowFileTransferDialog() = _$ShowFileTransferDialog;
}

/// @nodoc
abstract class $FilesDialogClosedCopyWith<$Res> {
  factory $FilesDialogClosedCopyWith(
          FilesDialogClosed value, $Res Function(FilesDialogClosed) then) =
      _$FilesDialogClosedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilesDialogClosedCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $FilesDialogClosedCopyWith<$Res> {
  _$FilesDialogClosedCopyWithImpl(
      FilesDialogClosed _value, $Res Function(FilesDialogClosed) _then)
      : super(_value, (v) => _then(v as FilesDialogClosed));

  @override
  FilesDialogClosed get _value => super._value as FilesDialogClosed;
}

/// @nodoc
class _$FilesDialogClosed implements FilesDialogClosed {
  const _$FilesDialogClosed();

  @override
  String toString() {
    return 'CurrentCircleEvent.filesDialogClosed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FilesDialogClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return filesDialogClosed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filesDialogClosed != null) {
      return filesDialogClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return filesDialogClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filesDialogClosed != null) {
      return filesDialogClosed(this);
    }
    return orElse();
  }
}

abstract class FilesDialogClosed implements CurrentCircleEvent {
  const factory FilesDialogClosed() = _$FilesDialogClosed;
}

/// @nodoc
abstract class $MembersDialogClosedCopyWith<$Res> {
  factory $MembersDialogClosedCopyWith(
          MembersDialogClosed value, $Res Function(MembersDialogClosed) then) =
      _$MembersDialogClosedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MembersDialogClosedCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $MembersDialogClosedCopyWith<$Res> {
  _$MembersDialogClosedCopyWithImpl(
      MembersDialogClosed _value, $Res Function(MembersDialogClosed) _then)
      : super(_value, (v) => _then(v as MembersDialogClosed));

  @override
  MembersDialogClosed get _value => super._value as MembersDialogClosed;
}

/// @nodoc
class _$MembersDialogClosed implements MembersDialogClosed {
  const _$MembersDialogClosed();

  @override
  String toString() {
    return 'CurrentCircleEvent.membersDialogClosed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MembersDialogClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return membersDialogClosed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (membersDialogClosed != null) {
      return membersDialogClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return membersDialogClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (membersDialogClosed != null) {
      return membersDialogClosed(this);
    }
    return orElse();
  }
}

abstract class MembersDialogClosed implements CurrentCircleEvent {
  const factory MembersDialogClosed() = _$MembersDialogClosed;
}

/// @nodoc
abstract class $FileTransferDialogClosedCopyWith<$Res> {
  factory $FileTransferDialogClosedCopyWith(FileTransferDialogClosed value,
          $Res Function(FileTransferDialogClosed) then) =
      _$FileTransferDialogClosedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileTransferDialogClosedCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $FileTransferDialogClosedCopyWith<$Res> {
  _$FileTransferDialogClosedCopyWithImpl(FileTransferDialogClosed _value,
      $Res Function(FileTransferDialogClosed) _then)
      : super(_value, (v) => _then(v as FileTransferDialogClosed));

  @override
  FileTransferDialogClosed get _value =>
      super._value as FileTransferDialogClosed;
}

/// @nodoc
class _$FileTransferDialogClosed implements FileTransferDialogClosed {
  const _$FileTransferDialogClosed();

  @override
  String toString() {
    return 'CurrentCircleEvent.fileTransferDialogClosed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FileTransferDialogClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return fileTransferDialogClosed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileTransferDialogClosed != null) {
      return fileTransferDialogClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return fileTransferDialogClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileTransferDialogClosed != null) {
      return fileTransferDialogClosed(this);
    }
    return orElse();
  }
}

abstract class FileTransferDialogClosed implements CurrentCircleEvent {
  const factory FileTransferDialogClosed() = _$FileTransferDialogClosed;
}

/// @nodoc
abstract class $MemberLeftCopyWith<$Res> {
  factory $MemberLeftCopyWith(
          MemberLeft value, $Res Function(MemberLeft) then) =
      _$MemberLeftCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$MemberLeftCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $MemberLeftCopyWith<$Res> {
  _$MemberLeftCopyWithImpl(MemberLeft _value, $Res Function(MemberLeft) _then)
      : super(_value, (v) => _then(v as MemberLeft));

  @override
  MemberLeft get _value => super._value as MemberLeft;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(MemberLeft(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$MemberLeft implements MemberLeft {
  const _$MemberLeft({@required this.id}) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'CurrentCircleEvent.memberLeft(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MemberLeft &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $MemberLeftCopyWith<MemberLeft> get copyWith =>
      _$MemberLeftCopyWithImpl<MemberLeft>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return memberLeft(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (memberLeft != null) {
      return memberLeft(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return memberLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (memberLeft != null) {
      return memberLeft(this);
    }
    return orElse();
  }
}

abstract class MemberLeft implements CurrentCircleEvent {
  const factory MemberLeft({@required String id}) = _$MemberLeft;

  String get id;
  $MemberLeftCopyWith<MemberLeft> get copyWith;
}

/// @nodoc
abstract class $RemoveMemberCopyWith<$Res> {
  factory $RemoveMemberCopyWith(
          RemoveMember value, $Res Function(RemoveMember) then) =
      _$RemoveMemberCopyWithImpl<$Res>;
  $Res call({User member});

  $UserCopyWith<$Res> get member;
}

/// @nodoc
class _$RemoveMemberCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $RemoveMemberCopyWith<$Res> {
  _$RemoveMemberCopyWithImpl(
      RemoveMember _value, $Res Function(RemoveMember) _then)
      : super(_value, (v) => _then(v as RemoveMember));

  @override
  RemoveMember get _value => super._value as RemoveMember;

  @override
  $Res call({
    Object member = freezed,
  }) {
    return _then(RemoveMember(
      member: member == freezed ? _value.member : member as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get member {
    if (_value.member == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value));
    });
  }
}

/// @nodoc
class _$RemoveMember implements RemoveMember {
  const _$RemoveMember({@required this.member}) : assert(member != null);

  @override
  final User member;

  @override
  String toString() {
    return 'CurrentCircleEvent.removeMember(member: $member)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveMember &&
            (identical(other.member, member) ||
                const DeepCollectionEquality().equals(other.member, member)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(member);

  @override
  $RemoveMemberCopyWith<RemoveMember> get copyWith =>
      _$RemoveMemberCopyWithImpl<RemoveMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return removeMember(member);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMember != null) {
      return removeMember(member);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return removeMember(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMember != null) {
      return removeMember(this);
    }
    return orElse();
  }
}

abstract class RemoveMember implements CurrentCircleEvent {
  const factory RemoveMember({@required User member}) = _$RemoveMember;

  User get member;
  $RemoveMemberCopyWith<RemoveMember> get copyWith;
}

/// @nodoc
abstract class $LeaveCircleCopyWith<$Res> {
  factory $LeaveCircleCopyWith(
          LeaveCircle value, $Res Function(LeaveCircle) then) =
      _$LeaveCircleCopyWithImpl<$Res>;
}

/// @nodoc
class _$LeaveCircleCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $LeaveCircleCopyWith<$Res> {
  _$LeaveCircleCopyWithImpl(
      LeaveCircle _value, $Res Function(LeaveCircle) _then)
      : super(_value, (v) => _then(v as LeaveCircle));

  @override
  LeaveCircle get _value => super._value as LeaveCircle;
}

/// @nodoc
class _$LeaveCircle implements LeaveCircle {
  const _$LeaveCircle();

  @override
  String toString() {
    return 'CurrentCircleEvent.leaveCircle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LeaveCircle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return leaveCircle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (leaveCircle != null) {
      return leaveCircle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return leaveCircle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (leaveCircle != null) {
      return leaveCircle(this);
    }
    return orElse();
  }
}

abstract class LeaveCircle implements CurrentCircleEvent {
  const factory LeaveCircle() = _$LeaveCircle;
}

/// @nodoc
abstract class $CloseCircleCopyWith<$Res> {
  factory $CloseCircleCopyWith(
          CloseCircle value, $Res Function(CloseCircle) then) =
      _$CloseCircleCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseCircleCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $CloseCircleCopyWith<$Res> {
  _$CloseCircleCopyWithImpl(
      CloseCircle _value, $Res Function(CloseCircle) _then)
      : super(_value, (v) => _then(v as CloseCircle));

  @override
  CloseCircle get _value => super._value as CloseCircle;
}

/// @nodoc
class _$CloseCircle implements CloseCircle {
  const _$CloseCircle();

  @override
  String toString() {
    return 'CurrentCircleEvent.closeCircle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CloseCircle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return closeCircle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (closeCircle != null) {
      return closeCircle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return closeCircle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (closeCircle != null) {
      return closeCircle(this);
    }
    return orElse();
  }
}

abstract class CloseCircle implements CurrentCircleEvent {
  const factory CloseCircle() = _$CloseCircle;
}

/// @nodoc
abstract class $DisconnectedCopyWith<$Res> {
  factory $DisconnectedCopyWith(
          Disconnected value, $Res Function(Disconnected) then) =
      _$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectedCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $DisconnectedCopyWith<$Res> {
  _$DisconnectedCopyWithImpl(
      Disconnected _value, $Res Function(Disconnected) _then)
      : super(_value, (v) => _then(v as Disconnected));

  @override
  Disconnected get _value => super._value as Disconnected;
}

/// @nodoc
class _$Disconnected implements Disconnected {
  const _$Disconnected();

  @override
  String toString() {
    return 'CurrentCircleEvent.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startCircle(User host),
    @required TResult deviceRequestedConnection(User user),
    @required
        TResult acceptOrReject(User requestingUser, bool acceptConnection),
    @required TResult joinCircle(User host),
    @required TResult showFilesDialog(),
    @required TResult showMembersDialog(),
    @required TResult showFileTransferDialog(),
    @required TResult filesDialogClosed(),
    @required TResult membersDialogClosed(),
    @required TResult fileTransferDialogClosed(),
    @required TResult memberLeft(String id),
    @required TResult removeMember(User member),
    @required TResult leaveCircle(),
    @required TResult closeCircle(),
    @required TResult disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startCircle(User host),
    TResult deviceRequestedConnection(User user),
    TResult acceptOrReject(User requestingUser, bool acceptConnection),
    TResult joinCircle(User host),
    TResult showFilesDialog(),
    TResult showMembersDialog(),
    TResult showFileTransferDialog(),
    TResult filesDialogClosed(),
    TResult membersDialogClosed(),
    TResult fileTransferDialogClosed(),
    TResult memberLeft(String id),
    TResult removeMember(User member),
    TResult leaveCircle(),
    TResult closeCircle(),
    TResult disconnected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startCircle(StartCircle value),
    @required
        TResult deviceRequestedConnection(DeviceRequestedConnection value),
    @required TResult acceptOrReject(AcceptOrReject value),
    @required TResult joinCircle(JoinCircle value),
    @required TResult showFilesDialog(ShowFilesDialog value),
    @required TResult showMembersDialog(ShowMembersDialog value),
    @required TResult showFileTransferDialog(ShowFileTransferDialog value),
    @required TResult filesDialogClosed(FilesDialogClosed value),
    @required TResult membersDialogClosed(MembersDialogClosed value),
    @required TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    @required TResult memberLeft(MemberLeft value),
    @required TResult removeMember(RemoveMember value),
    @required TResult leaveCircle(LeaveCircle value),
    @required TResult closeCircle(CloseCircle value),
    @required TResult disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(filesDialogClosed != null);
    assert(membersDialogClosed != null);
    assert(fileTransferDialogClosed != null);
    assert(memberLeft != null);
    assert(removeMember != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startCircle(StartCircle value),
    TResult deviceRequestedConnection(DeviceRequestedConnection value),
    TResult acceptOrReject(AcceptOrReject value),
    TResult joinCircle(JoinCircle value),
    TResult showFilesDialog(ShowFilesDialog value),
    TResult showMembersDialog(ShowMembersDialog value),
    TResult showFileTransferDialog(ShowFileTransferDialog value),
    TResult filesDialogClosed(FilesDialogClosed value),
    TResult membersDialogClosed(MembersDialogClosed value),
    TResult fileTransferDialogClosed(FileTransferDialogClosed value),
    TResult memberLeft(MemberLeft value),
    TResult removeMember(RemoveMember value),
    TResult leaveCircle(LeaveCircle value),
    TResult closeCircle(CloseCircle value),
    TResult disconnected(Disconnected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements CurrentCircleEvent {
  const factory Disconnected() = _$Disconnected;
}

/// @nodoc
class _$CurrentCircleStateTearOff {
  const _$CurrentCircleStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsLoading isLoading({@required String loadingText}) {
    return _IsLoading(
      loadingText: loadingText,
    );
  }

// ignore: unused_element
  _HasStarted hasStarted(
      {@required Map<User, bool> members,
      @required Map<FileInfo, double> outgoingFiles,
      @required Map<FileInfo, double> incomingFiles,
      @required Option<bool> showMembersDialog,
      @required Option<bool> showFilesDialog,
      @required Option<bool> showFileTransferDialog,
      @required Option<FileTransferType> transferType,
      @required bool isAcceptingRequest,
      @required bool isClosing}) {
    return _HasStarted(
      members: members,
      outgoingFiles: outgoingFiles,
      incomingFiles: incomingFiles,
      showMembersDialog: showMembersDialog,
      showFilesDialog: showFilesDialog,
      showFileTransferDialog: showFileTransferDialog,
      transferType: transferType,
      isAcceptingRequest: isAcceptingRequest,
      isClosing: isClosing,
    );
  }

// ignore: unused_element
  _HasJoined hasJoined(
      {@required User host,
      @required Map<FileInfo, double> outgoingFiles,
      @required Map<FileInfo, double> incomingFiles,
      @required Option<bool> showMembersDialog,
      @required Option<bool> showFilesDialog,
      @required Option<bool> showFileTransferDialog,
      @required Option<FileTransferType> transferType,
      @required bool isLeaving}) {
    return _HasJoined(
      host: host,
      outgoingFiles: outgoingFiles,
      incomingFiles: incomingFiles,
      showMembersDialog: showMembersDialog,
      showFilesDialog: showFilesDialog,
      showFileTransferDialog: showFileTransferDialog,
      transferType: transferType,
      isLeaving: isLeaving,
    );
  }

// ignore: unused_element
  _HasFailed hasFailed({@required ConnectionFailure failure}) {
    return _HasFailed(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentCircleState = _$CurrentCircleStateTearOff();

/// @nodoc
mixin _$CurrentCircleState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(String loadingText),
    @required
        TResult hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        TResult hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required TResult hasFailed(ConnectionFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(String loadingText),
    TResult hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    TResult hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    TResult hasFailed(ConnectionFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasStarted(_HasStarted value),
    @required TResult hasJoined(_HasJoined value),
    @required TResult hasFailed(_HasFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasStarted(_HasStarted value),
    TResult hasJoined(_HasJoined value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CurrentCircleStateCopyWith<$Res> {
  factory $CurrentCircleStateCopyWith(
          CurrentCircleState value, $Res Function(CurrentCircleState) then) =
      _$CurrentCircleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentCircleStateCopyWithImpl<$Res>
    implements $CurrentCircleStateCopyWith<$Res> {
  _$CurrentCircleStateCopyWithImpl(this._value, this._then);

  final CurrentCircleState _value;
  // ignore: unused_field
  final $Res Function(CurrentCircleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CurrentCircleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(String loadingText),
    @required
        TResult hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        TResult hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required TResult hasFailed(ConnectionFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(String loadingText),
    TResult hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    TResult hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    TResult hasFailed(ConnectionFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasStarted(_HasStarted value),
    @required TResult hasJoined(_HasJoined value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasStarted(_HasStarted value),
    TResult hasJoined(_HasJoined value),
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

abstract class _Initial implements CurrentCircleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
  $Res call({String loadingText});
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;

  @override
  $Res call({
    Object loadingText = freezed,
  }) {
    return _then(_IsLoading(
      loadingText:
          loadingText == freezed ? _value.loadingText : loadingText as String,
    ));
  }
}

/// @nodoc
class _$_IsLoading implements _IsLoading {
  const _$_IsLoading({@required this.loadingText})
      : assert(loadingText != null);

  @override
  final String loadingText;

  @override
  String toString() {
    return 'CurrentCircleState.isLoading(loadingText: $loadingText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsLoading &&
            (identical(other.loadingText, loadingText) ||
                const DeepCollectionEquality()
                    .equals(other.loadingText, loadingText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loadingText);

  @override
  _$IsLoadingCopyWith<_IsLoading> get copyWith =>
      __$IsLoadingCopyWithImpl<_IsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(String loadingText),
    @required
        TResult hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        TResult hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required TResult hasFailed(ConnectionFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return isLoading(loadingText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(String loadingText),
    TResult hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    TResult hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    TResult hasFailed(ConnectionFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(loadingText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasStarted(_HasStarted value),
    @required TResult hasJoined(_HasJoined value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasStarted(_HasStarted value),
    TResult hasJoined(_HasJoined value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements CurrentCircleState {
  const factory _IsLoading({@required String loadingText}) = _$_IsLoading;

  String get loadingText;
  _$IsLoadingCopyWith<_IsLoading> get copyWith;
}

/// @nodoc
abstract class _$HasStartedCopyWith<$Res> {
  factory _$HasStartedCopyWith(
          _HasStarted value, $Res Function(_HasStarted) then) =
      __$HasStartedCopyWithImpl<$Res>;
  $Res call(
      {Map<User, bool> members,
      Map<FileInfo, double> outgoingFiles,
      Map<FileInfo, double> incomingFiles,
      Option<bool> showMembersDialog,
      Option<bool> showFilesDialog,
      Option<bool> showFileTransferDialog,
      Option<FileTransferType> transferType,
      bool isAcceptingRequest,
      bool isClosing});
}

/// @nodoc
class __$HasStartedCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
    implements _$HasStartedCopyWith<$Res> {
  __$HasStartedCopyWithImpl(
      _HasStarted _value, $Res Function(_HasStarted) _then)
      : super(_value, (v) => _then(v as _HasStarted));

  @override
  _HasStarted get _value => super._value as _HasStarted;

  @override
  $Res call({
    Object members = freezed,
    Object outgoingFiles = freezed,
    Object incomingFiles = freezed,
    Object showMembersDialog = freezed,
    Object showFilesDialog = freezed,
    Object showFileTransferDialog = freezed,
    Object transferType = freezed,
    Object isAcceptingRequest = freezed,
    Object isClosing = freezed,
  }) {
    return _then(_HasStarted(
      members: members == freezed ? _value.members : members as Map<User, bool>,
      outgoingFiles: outgoingFiles == freezed
          ? _value.outgoingFiles
          : outgoingFiles as Map<FileInfo, double>,
      incomingFiles: incomingFiles == freezed
          ? _value.incomingFiles
          : incomingFiles as Map<FileInfo, double>,
      showMembersDialog: showMembersDialog == freezed
          ? _value.showMembersDialog
          : showMembersDialog as Option<bool>,
      showFilesDialog: showFilesDialog == freezed
          ? _value.showFilesDialog
          : showFilesDialog as Option<bool>,
      showFileTransferDialog: showFileTransferDialog == freezed
          ? _value.showFileTransferDialog
          : showFileTransferDialog as Option<bool>,
      transferType: transferType == freezed
          ? _value.transferType
          : transferType as Option<FileTransferType>,
      isAcceptingRequest: isAcceptingRequest == freezed
          ? _value.isAcceptingRequest
          : isAcceptingRequest as bool,
      isClosing: isClosing == freezed ? _value.isClosing : isClosing as bool,
    ));
  }
}

/// @nodoc
class _$_HasStarted implements _HasStarted {
  const _$_HasStarted(
      {@required this.members,
      @required this.outgoingFiles,
      @required this.incomingFiles,
      @required this.showMembersDialog,
      @required this.showFilesDialog,
      @required this.showFileTransferDialog,
      @required this.transferType,
      @required this.isAcceptingRequest,
      @required this.isClosing})
      : assert(members != null),
        assert(outgoingFiles != null),
        assert(incomingFiles != null),
        assert(showMembersDialog != null),
        assert(showFilesDialog != null),
        assert(showFileTransferDialog != null),
        assert(transferType != null),
        assert(isAcceptingRequest != null),
        assert(isClosing != null);

  @override
  final Map<User, bool> members;
  @override
  final Map<FileInfo, double> outgoingFiles;
  @override
  final Map<FileInfo, double> incomingFiles;
  @override
  final Option<bool> showMembersDialog;
  @override
  final Option<bool> showFilesDialog;
  @override
  final Option<bool> showFileTransferDialog;
  @override
  final Option<FileTransferType> transferType;
  @override
  final bool isAcceptingRequest;
  @override
  final bool isClosing;

  @override
  String toString() {
    return 'CurrentCircleState.hasStarted(members: $members, outgoingFiles: $outgoingFiles, incomingFiles: $incomingFiles, showMembersDialog: $showMembersDialog, showFilesDialog: $showFilesDialog, showFileTransferDialog: $showFileTransferDialog, transferType: $transferType, isAcceptingRequest: $isAcceptingRequest, isClosing: $isClosing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasStarted &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.outgoingFiles, outgoingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.outgoingFiles, outgoingFiles)) &&
            (identical(other.incomingFiles, incomingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.incomingFiles, incomingFiles)) &&
            (identical(other.showMembersDialog, showMembersDialog) ||
                const DeepCollectionEquality()
                    .equals(other.showMembersDialog, showMembersDialog)) &&
            (identical(other.showFilesDialog, showFilesDialog) ||
                const DeepCollectionEquality()
                    .equals(other.showFilesDialog, showFilesDialog)) &&
            (identical(other.showFileTransferDialog, showFileTransferDialog) ||
                const DeepCollectionEquality().equals(
                    other.showFileTransferDialog, showFileTransferDialog)) &&
            (identical(other.transferType, transferType) ||
                const DeepCollectionEquality()
                    .equals(other.transferType, transferType)) &&
            (identical(other.isAcceptingRequest, isAcceptingRequest) ||
                const DeepCollectionEquality()
                    .equals(other.isAcceptingRequest, isAcceptingRequest)) &&
            (identical(other.isClosing, isClosing) ||
                const DeepCollectionEquality()
                    .equals(other.isClosing, isClosing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(outgoingFiles) ^
      const DeepCollectionEquality().hash(incomingFiles) ^
      const DeepCollectionEquality().hash(showMembersDialog) ^
      const DeepCollectionEquality().hash(showFilesDialog) ^
      const DeepCollectionEquality().hash(showFileTransferDialog) ^
      const DeepCollectionEquality().hash(transferType) ^
      const DeepCollectionEquality().hash(isAcceptingRequest) ^
      const DeepCollectionEquality().hash(isClosing);

  @override
  _$HasStartedCopyWith<_HasStarted> get copyWith =>
      __$HasStartedCopyWithImpl<_HasStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(String loadingText),
    @required
        TResult hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        TResult hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required TResult hasFailed(ConnectionFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasStarted(
        members,
        outgoingFiles,
        incomingFiles,
        showMembersDialog,
        showFilesDialog,
        showFileTransferDialog,
        transferType,
        isAcceptingRequest,
        isClosing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(String loadingText),
    TResult hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    TResult hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    TResult hasFailed(ConnectionFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasStarted != null) {
      return hasStarted(
          members,
          outgoingFiles,
          incomingFiles,
          showMembersDialog,
          showFilesDialog,
          showFileTransferDialog,
          transferType,
          isAcceptingRequest,
          isClosing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasStarted(_HasStarted value),
    @required TResult hasJoined(_HasJoined value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasStarted(_HasStarted value),
    TResult hasJoined(_HasJoined value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasStarted != null) {
      return hasStarted(this);
    }
    return orElse();
  }
}

abstract class _HasStarted implements CurrentCircleState {
  const factory _HasStarted(
      {@required Map<User, bool> members,
      @required Map<FileInfo, double> outgoingFiles,
      @required Map<FileInfo, double> incomingFiles,
      @required Option<bool> showMembersDialog,
      @required Option<bool> showFilesDialog,
      @required Option<bool> showFileTransferDialog,
      @required Option<FileTransferType> transferType,
      @required bool isAcceptingRequest,
      @required bool isClosing}) = _$_HasStarted;

  Map<User, bool> get members;
  Map<FileInfo, double> get outgoingFiles;
  Map<FileInfo, double> get incomingFiles;
  Option<bool> get showMembersDialog;
  Option<bool> get showFilesDialog;
  Option<bool> get showFileTransferDialog;
  Option<FileTransferType> get transferType;
  bool get isAcceptingRequest;
  bool get isClosing;
  _$HasStartedCopyWith<_HasStarted> get copyWith;
}

/// @nodoc
abstract class _$HasJoinedCopyWith<$Res> {
  factory _$HasJoinedCopyWith(
          _HasJoined value, $Res Function(_HasJoined) then) =
      __$HasJoinedCopyWithImpl<$Res>;
  $Res call(
      {User host,
      Map<FileInfo, double> outgoingFiles,
      Map<FileInfo, double> incomingFiles,
      Option<bool> showMembersDialog,
      Option<bool> showFilesDialog,
      Option<bool> showFileTransferDialog,
      Option<FileTransferType> transferType,
      bool isLeaving});

  $UserCopyWith<$Res> get host;
}

/// @nodoc
class __$HasJoinedCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
    implements _$HasJoinedCopyWith<$Res> {
  __$HasJoinedCopyWithImpl(_HasJoined _value, $Res Function(_HasJoined) _then)
      : super(_value, (v) => _then(v as _HasJoined));

  @override
  _HasJoined get _value => super._value as _HasJoined;

  @override
  $Res call({
    Object host = freezed,
    Object outgoingFiles = freezed,
    Object incomingFiles = freezed,
    Object showMembersDialog = freezed,
    Object showFilesDialog = freezed,
    Object showFileTransferDialog = freezed,
    Object transferType = freezed,
    Object isLeaving = freezed,
  }) {
    return _then(_HasJoined(
      host: host == freezed ? _value.host : host as User,
      outgoingFiles: outgoingFiles == freezed
          ? _value.outgoingFiles
          : outgoingFiles as Map<FileInfo, double>,
      incomingFiles: incomingFiles == freezed
          ? _value.incomingFiles
          : incomingFiles as Map<FileInfo, double>,
      showMembersDialog: showMembersDialog == freezed
          ? _value.showMembersDialog
          : showMembersDialog as Option<bool>,
      showFilesDialog: showFilesDialog == freezed
          ? _value.showFilesDialog
          : showFilesDialog as Option<bool>,
      showFileTransferDialog: showFileTransferDialog == freezed
          ? _value.showFileTransferDialog
          : showFileTransferDialog as Option<bool>,
      transferType: transferType == freezed
          ? _value.transferType
          : transferType as Option<FileTransferType>,
      isLeaving: isLeaving == freezed ? _value.isLeaving : isLeaving as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get host {
    if (_value.host == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }
}

/// @nodoc
class _$_HasJoined implements _HasJoined {
  const _$_HasJoined(
      {@required this.host,
      @required this.outgoingFiles,
      @required this.incomingFiles,
      @required this.showMembersDialog,
      @required this.showFilesDialog,
      @required this.showFileTransferDialog,
      @required this.transferType,
      @required this.isLeaving})
      : assert(host != null),
        assert(outgoingFiles != null),
        assert(incomingFiles != null),
        assert(showMembersDialog != null),
        assert(showFilesDialog != null),
        assert(showFileTransferDialog != null),
        assert(transferType != null),
        assert(isLeaving != null);

  @override
  final User host;
  @override
  final Map<FileInfo, double> outgoingFiles;
  @override
  final Map<FileInfo, double> incomingFiles;
  @override
  final Option<bool> showMembersDialog;
  @override
  final Option<bool> showFilesDialog;
  @override
  final Option<bool> showFileTransferDialog;
  @override
  final Option<FileTransferType> transferType;
  @override
  final bool isLeaving;

  @override
  String toString() {
    return 'CurrentCircleState.hasJoined(host: $host, outgoingFiles: $outgoingFiles, incomingFiles: $incomingFiles, showMembersDialog: $showMembersDialog, showFilesDialog: $showFilesDialog, showFileTransferDialog: $showFileTransferDialog, transferType: $transferType, isLeaving: $isLeaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasJoined &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.outgoingFiles, outgoingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.outgoingFiles, outgoingFiles)) &&
            (identical(other.incomingFiles, incomingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.incomingFiles, incomingFiles)) &&
            (identical(other.showMembersDialog, showMembersDialog) ||
                const DeepCollectionEquality()
                    .equals(other.showMembersDialog, showMembersDialog)) &&
            (identical(other.showFilesDialog, showFilesDialog) ||
                const DeepCollectionEquality()
                    .equals(other.showFilesDialog, showFilesDialog)) &&
            (identical(other.showFileTransferDialog, showFileTransferDialog) ||
                const DeepCollectionEquality().equals(
                    other.showFileTransferDialog, showFileTransferDialog)) &&
            (identical(other.transferType, transferType) ||
                const DeepCollectionEquality()
                    .equals(other.transferType, transferType)) &&
            (identical(other.isLeaving, isLeaving) ||
                const DeepCollectionEquality()
                    .equals(other.isLeaving, isLeaving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(outgoingFiles) ^
      const DeepCollectionEquality().hash(incomingFiles) ^
      const DeepCollectionEquality().hash(showMembersDialog) ^
      const DeepCollectionEquality().hash(showFilesDialog) ^
      const DeepCollectionEquality().hash(showFileTransferDialog) ^
      const DeepCollectionEquality().hash(transferType) ^
      const DeepCollectionEquality().hash(isLeaving);

  @override
  _$HasJoinedCopyWith<_HasJoined> get copyWith =>
      __$HasJoinedCopyWithImpl<_HasJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(String loadingText),
    @required
        TResult hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        TResult hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required TResult hasFailed(ConnectionFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasJoined(host, outgoingFiles, incomingFiles, showMembersDialog,
        showFilesDialog, showFileTransferDialog, transferType, isLeaving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(String loadingText),
    TResult hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    TResult hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    TResult hasFailed(ConnectionFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasJoined != null) {
      return hasJoined(host, outgoingFiles, incomingFiles, showMembersDialog,
          showFilesDialog, showFileTransferDialog, transferType, isLeaving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasStarted(_HasStarted value),
    @required TResult hasJoined(_HasJoined value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasStarted(_HasStarted value),
    TResult hasJoined(_HasJoined value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasJoined != null) {
      return hasJoined(this);
    }
    return orElse();
  }
}

abstract class _HasJoined implements CurrentCircleState {
  const factory _HasJoined(
      {@required User host,
      @required Map<FileInfo, double> outgoingFiles,
      @required Map<FileInfo, double> incomingFiles,
      @required Option<bool> showMembersDialog,
      @required Option<bool> showFilesDialog,
      @required Option<bool> showFileTransferDialog,
      @required Option<FileTransferType> transferType,
      @required bool isLeaving}) = _$_HasJoined;

  User get host;
  Map<FileInfo, double> get outgoingFiles;
  Map<FileInfo, double> get incomingFiles;
  Option<bool> get showMembersDialog;
  Option<bool> get showFilesDialog;
  Option<bool> get showFileTransferDialog;
  Option<FileTransferType> get transferType;
  bool get isLeaving;
  _$HasJoinedCopyWith<_HasJoined> get copyWith;
}

/// @nodoc
abstract class _$HasFailedCopyWith<$Res> {
  factory _$HasFailedCopyWith(
          _HasFailed value, $Res Function(_HasFailed) then) =
      __$HasFailedCopyWithImpl<$Res>;
  $Res call({ConnectionFailure failure});

  $ConnectionFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$HasFailedCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
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
          failure == freezed ? _value.failure : failure as ConnectionFailure,
    ));
  }

  @override
  $ConnectionFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ConnectionFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_HasFailed implements _HasFailed {
  const _$_HasFailed({@required this.failure}) : assert(failure != null);

  @override
  final ConnectionFailure failure;

  @override
  String toString() {
    return 'CurrentCircleState.hasFailed(failure: $failure)';
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
    @required TResult initial(),
    @required TResult isLoading(String loadingText),
    @required
        TResult hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        TResult hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required TResult hasFailed(ConnectionFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(String loadingText),
    TResult hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    TResult hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    TResult hasFailed(ConnectionFailure failure),
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
    @required TResult isLoading(_IsLoading value),
    @required TResult hasStarted(_HasStarted value),
    @required TResult hasJoined(_HasJoined value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasStarted(_HasStarted value),
    TResult hasJoined(_HasJoined value),
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

abstract class _HasFailed implements CurrentCircleState {
  const factory _HasFailed({@required ConnectionFailure failure}) =
      _$_HasFailed;

  ConnectionFailure get failure;
  _$HasFailedCopyWith<_HasFailed> get copyWith;
}
