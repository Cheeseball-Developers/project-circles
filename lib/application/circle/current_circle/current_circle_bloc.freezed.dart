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
  MemberLeft memberLeft({@required String id}) {
    return MemberLeft(
      id: id,
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return startCircle(host);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startCircle != null) {
      return startCircle(host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return startCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return deviceRequestedConnection(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deviceRequestedConnection != null) {
      return deviceRequestedConnection(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return deviceRequestedConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return acceptOrReject(requestingUser, acceptConnection);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (acceptOrReject != null) {
      return acceptOrReject(requestingUser, acceptConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return acceptOrReject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return joinCircle(host);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (joinCircle != null) {
      return joinCircle(host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return joinCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFilesDialog();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showFilesDialog != null) {
      return showFilesDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFilesDialog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showMembersDialog();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showMembersDialog != null) {
      return showMembersDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showMembersDialog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFileTransferDialog();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showFileTransferDialog != null) {
      return showFileTransferDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return showFileTransferDialog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return memberLeft(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (memberLeft != null) {
      return memberLeft(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return memberLeft(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return leaveCircle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (leaveCircle != null) {
      return leaveCircle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return leaveCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return closeCircle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeCircle != null) {
      return closeCircle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return closeCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result showFilesDialog(),
    @required Result showMembersDialog(),
    @required Result showFileTransferDialog(),
    @required Result memberLeft(String id),
    @required Result leaveCircle(),
    @required Result closeCircle(),
    @required Result disconnected(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return disconnected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result showFilesDialog(),
    Result showMembersDialog(),
    Result showFileTransferDialog(),
    Result memberLeft(String id),
    Result leaveCircle(),
    Result closeCircle(),
    Result disconnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result showFilesDialog(ShowFilesDialog value),
    @required Result showMembersDialog(ShowMembersDialog value),
    @required Result showFileTransferDialog(ShowFileTransferDialog value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
    @required Result disconnected(Disconnected value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(showFilesDialog != null);
    assert(showMembersDialog != null);
    assert(showFileTransferDialog != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    assert(disconnected != null);
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result showFilesDialog(ShowFilesDialog value),
    Result showMembersDialog(ShowMembersDialog value),
    Result showFileTransferDialog(ShowFileTransferDialog value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    Result disconnected(Disconnected value),
    @required Result orElse(),
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
      @required List<FileTransaction> transactions,
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
      transactions: transactions,
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
      @required List<FileTransaction> transactions,
      @required Option<bool> showMembersDialog,
      @required Option<bool> showFilesDialog,
      @required Option<bool> showFileTransferDialog,
      @required Option<FileTransferType> transferType,
      @required bool isLeaving}) {
    return _HasJoined(
      host: host,
      outgoingFiles: outgoingFiles,
      incomingFiles: incomingFiles,
      transactions: transactions,
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String loadingText),
    @required
        Result hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasStarted(_HasStarted value),
    @required Result hasJoined(_HasJoined value),
    @required Result hasFailed(_HasFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasStarted(_HasStarted value),
    Result hasJoined(_HasJoined value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String loadingText),
    @required
        Result hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasStarted(_HasStarted value),
    @required Result hasJoined(_HasJoined value),
    @required Result hasFailed(_HasFailed value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasStarted(_HasStarted value),
    Result hasJoined(_HasJoined value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String loadingText),
    @required
        Result hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(loadingText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasStarted(_HasStarted value),
    @required Result hasJoined(_HasJoined value),
    @required Result hasFailed(_HasFailed value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasStarted(_HasStarted value),
    Result hasJoined(_HasJoined value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
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
      List<FileTransaction> transactions,
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
    Object transactions = freezed,
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
      transactions: transactions == freezed
          ? _value.transactions
          : transactions as List<FileTransaction>,
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
      @required this.transactions,
      @required this.showMembersDialog,
      @required this.showFilesDialog,
      @required this.showFileTransferDialog,
      @required this.transferType,
      @required this.isAcceptingRequest,
      @required this.isClosing})
      : assert(members != null),
        assert(outgoingFiles != null),
        assert(incomingFiles != null),
        assert(transactions != null),
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
  final List<FileTransaction> transactions;
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
    return 'CurrentCircleState.hasStarted(members: $members, outgoingFiles: $outgoingFiles, incomingFiles: $incomingFiles, transactions: $transactions, showMembersDialog: $showMembersDialog, showFilesDialog: $showFilesDialog, showFileTransferDialog: $showFileTransferDialog, transferType: $transferType, isAcceptingRequest: $isAcceptingRequest, isClosing: $isClosing)';
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
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
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
      const DeepCollectionEquality().hash(transactions) ^
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String loadingText),
    @required
        Result hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
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
        transactions,
        showMembersDialog,
        showFilesDialog,
        showFileTransferDialog,
        transferType,
        isAcceptingRequest,
        isClosing);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasStarted != null) {
      return hasStarted(
          members,
          outgoingFiles,
          incomingFiles,
          transactions,
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
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasStarted(_HasStarted value),
    @required Result hasJoined(_HasJoined value),
    @required Result hasFailed(_HasFailed value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasStarted(_HasStarted value),
    Result hasJoined(_HasJoined value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
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
      @required List<FileTransaction> transactions,
      @required Option<bool> showMembersDialog,
      @required Option<bool> showFilesDialog,
      @required Option<bool> showFileTransferDialog,
      @required Option<FileTransferType> transferType,
      @required bool isAcceptingRequest,
      @required bool isClosing}) = _$_HasStarted;

  Map<User, bool> get members;
  Map<FileInfo, double> get outgoingFiles;
  Map<FileInfo, double> get incomingFiles;
  List<FileTransaction> get transactions;
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
      List<FileTransaction> transactions,
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
    Object transactions = freezed,
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
      transactions: transactions == freezed
          ? _value.transactions
          : transactions as List<FileTransaction>,
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
      @required this.transactions,
      @required this.showMembersDialog,
      @required this.showFilesDialog,
      @required this.showFileTransferDialog,
      @required this.transferType,
      @required this.isLeaving})
      : assert(host != null),
        assert(outgoingFiles != null),
        assert(incomingFiles != null),
        assert(transactions != null),
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
  final List<FileTransaction> transactions;
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
    return 'CurrentCircleState.hasJoined(host: $host, outgoingFiles: $outgoingFiles, incomingFiles: $incomingFiles, transactions: $transactions, showMembersDialog: $showMembersDialog, showFilesDialog: $showFilesDialog, showFileTransferDialog: $showFileTransferDialog, transferType: $transferType, isLeaving: $isLeaving)';
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
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
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
      const DeepCollectionEquality().hash(transactions) ^
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String loadingText),
    @required
        Result hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasJoined(
        host,
        outgoingFiles,
        incomingFiles,
        transactions,
        showMembersDialog,
        showFilesDialog,
        showFileTransferDialog,
        transferType,
        isLeaving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasJoined != null) {
      return hasJoined(
          host,
          outgoingFiles,
          incomingFiles,
          transactions,
          showMembersDialog,
          showFilesDialog,
          showFileTransferDialog,
          transferType,
          isLeaving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasStarted(_HasStarted value),
    @required Result hasJoined(_HasJoined value),
    @required Result hasFailed(_HasFailed value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasStarted(_HasStarted value),
    Result hasJoined(_HasJoined value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
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
      @required List<FileTransaction> transactions,
      @required Option<bool> showMembersDialog,
      @required Option<bool> showFilesDialog,
      @required Option<bool> showFileTransferDialog,
      @required Option<FileTransferType> transferType,
      @required bool isLeaving}) = _$_HasJoined;

  User get host;
  Map<FileInfo, double> get outgoingFiles;
  Map<FileInfo, double> get incomingFiles;
  List<FileTransaction> get transactions;
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String loadingText),
    @required
        Result hasStarted(
            Map<User, bool> members,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            Map<FileInfo, double> outgoingFiles,
            Map<FileInfo, double> incomingFiles,
            List<FileTransaction> transactions,
            Option<bool> showMembersDialog,
            Option<bool> showFilesDialog,
            Option<bool> showFileTransferDialog,
            Option<FileTransferType> transferType,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        Map<FileInfo, double> outgoingFiles,
        Map<FileInfo, double> incomingFiles,
        List<FileTransaction> transactions,
        Option<bool> showMembersDialog,
        Option<bool> showFilesDialog,
        Option<bool> showFileTransferDialog,
        Option<FileTransferType> transferType,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasFailed != null) {
      return hasFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasStarted(_HasStarted value),
    @required Result hasJoined(_HasJoined value),
    @required Result hasFailed(_HasFailed value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasStarted(_HasStarted value),
    Result hasJoined(_HasJoined value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
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
