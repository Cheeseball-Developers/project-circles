// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'current_circle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
  AddFile addFile({@required File file}) {
    return AddFile(
      file: file,
    );
  }

// ignore: unused_element
  ShowFilesPage showFilesPage() {
    return const ShowFilesPage();
  }

// ignore: unused_element
  ShowMembersPage showMembersPage() {
    return const ShowMembersPage();
  }

// ignore: unused_element
  PageOpened pageOpened() {
    return const PageOpened();
  }

// ignore: unused_element
  SendFiles sendFiles() {
    return const SendFiles();
  }

// ignore: unused_element
  FilesSent filesSent() {
    return const FilesSent();
  }

// ignore: unused_element
  FileReceived filesReceived() {
    return const FileReceived();
  }

// ignore: unused_element
  MemberLeft memberLeft() {
    return const MemberLeft();
  }

// ignore: unused_element
  LeaveCircle leaveCircle() {
    return const LeaveCircle();
  }

// ignore: unused_element
  CloseCircle closeCircle() {
    return const CloseCircle();
  }
}

// ignore: unused_element
const $CurrentCircleEvent = _$CurrentCircleEventTearOff();

mixin _$CurrentCircleEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result deviceRequestedConnection(DeviceRequestedConnection value),
    @required Result acceptOrReject(AcceptOrReject value),
    @required Result joinCircle(JoinCircle value),
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  });
}

abstract class $CurrentCircleEventCopyWith<$Res> {
  factory $CurrentCircleEventCopyWith(
          CurrentCircleEvent value, $Res Function(CurrentCircleEvent) then) =
      _$CurrentCircleEventCopyWithImpl<$Res>;
}

class _$CurrentCircleEventCopyWithImpl<$Res>
    implements $CurrentCircleEventCopyWith<$Res> {
  _$CurrentCircleEventCopyWithImpl(this._value, this._then);

  final CurrentCircleEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentCircleEvent) _then;
}

abstract class $StartCircleCopyWith<$Res> {
  factory $StartCircleCopyWith(
          StartCircle value, $Res Function(StartCircle) then) =
      _$StartCircleCopyWithImpl<$Res>;
  $Res call({User host});

  $UserCopyWith<$Res> get host;
}

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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return startCircle(host);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return startCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
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

abstract class $DeviceRequestedConnectionCopyWith<$Res> {
  factory $DeviceRequestedConnectionCopyWith(DeviceRequestedConnection value,
          $Res Function(DeviceRequestedConnection) then) =
      _$DeviceRequestedConnectionCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return deviceRequestedConnection(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return deviceRequestedConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
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

abstract class $AcceptOrRejectCopyWith<$Res> {
  factory $AcceptOrRejectCopyWith(
          AcceptOrReject value, $Res Function(AcceptOrReject) then) =
      _$AcceptOrRejectCopyWithImpl<$Res>;
  $Res call({User requestingUser, bool acceptConnection});

  $UserCopyWith<$Res> get requestingUser;
}

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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return acceptOrReject(requestingUser, acceptConnection);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return acceptOrReject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
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

abstract class $JoinCircleCopyWith<$Res> {
  factory $JoinCircleCopyWith(
          JoinCircle value, $Res Function(JoinCircle) then) =
      _$JoinCircleCopyWithImpl<$Res>;
  $Res call({User host});

  $UserCopyWith<$Res> get host;
}

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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return joinCircle(host);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return joinCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
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

abstract class $AddFileCopyWith<$Res> {
  factory $AddFileCopyWith(AddFile value, $Res Function(AddFile) then) =
      _$AddFileCopyWithImpl<$Res>;
  $Res call({File file});
}

class _$AddFileCopyWithImpl<$Res> extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $AddFileCopyWith<$Res> {
  _$AddFileCopyWithImpl(AddFile _value, $Res Function(AddFile) _then)
      : super(_value, (v) => _then(v as AddFile));

  @override
  AddFile get _value => super._value as AddFile;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(AddFile(
      file: file == freezed ? _value.file : file as File,
    ));
  }
}

class _$AddFile implements AddFile {
  const _$AddFile({@required this.file}) : assert(file != null);

  @override
  final File file;

  @override
  String toString() {
    return 'CurrentCircleEvent.addFile(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFile &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @override
  $AddFileCopyWith<AddFile> get copyWith =>
      _$AddFileCopyWithImpl<AddFile>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result deviceRequestedConnection(User user),
    @required Result acceptOrReject(User requestingUser, bool acceptConnection),
    @required Result joinCircle(User host),
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return addFile(file);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFile != null) {
      return addFile(file);
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return addFile(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFile != null) {
      return addFile(this);
    }
    return orElse();
  }
}

abstract class AddFile implements CurrentCircleEvent {
  const factory AddFile({@required File file}) = _$AddFile;

  File get file;
  $AddFileCopyWith<AddFile> get copyWith;
}

abstract class $ShowFilesPageCopyWith<$Res> {
  factory $ShowFilesPageCopyWith(
          ShowFilesPage value, $Res Function(ShowFilesPage) then) =
      _$ShowFilesPageCopyWithImpl<$Res>;
}

class _$ShowFilesPageCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $ShowFilesPageCopyWith<$Res> {
  _$ShowFilesPageCopyWithImpl(
      ShowFilesPage _value, $Res Function(ShowFilesPage) _then)
      : super(_value, (v) => _then(v as ShowFilesPage));

  @override
  ShowFilesPage get _value => super._value as ShowFilesPage;
}

class _$ShowFilesPage implements ShowFilesPage {
  const _$ShowFilesPage();

  @override
  String toString() {
    return 'CurrentCircleEvent.showFilesPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowFilesPage);
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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return showFilesPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showFilesPage != null) {
      return showFilesPage();
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return showFilesPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showFilesPage != null) {
      return showFilesPage(this);
    }
    return orElse();
  }
}

abstract class ShowFilesPage implements CurrentCircleEvent {
  const factory ShowFilesPage() = _$ShowFilesPage;
}

abstract class $ShowMembersPageCopyWith<$Res> {
  factory $ShowMembersPageCopyWith(
          ShowMembersPage value, $Res Function(ShowMembersPage) then) =
      _$ShowMembersPageCopyWithImpl<$Res>;
}

class _$ShowMembersPageCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $ShowMembersPageCopyWith<$Res> {
  _$ShowMembersPageCopyWithImpl(
      ShowMembersPage _value, $Res Function(ShowMembersPage) _then)
      : super(_value, (v) => _then(v as ShowMembersPage));

  @override
  ShowMembersPage get _value => super._value as ShowMembersPage;
}

class _$ShowMembersPage implements ShowMembersPage {
  const _$ShowMembersPage();

  @override
  String toString() {
    return 'CurrentCircleEvent.showMembersPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowMembersPage);
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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return showMembersPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showMembersPage != null) {
      return showMembersPage();
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return showMembersPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showMembersPage != null) {
      return showMembersPage(this);
    }
    return orElse();
  }
}

abstract class ShowMembersPage implements CurrentCircleEvent {
  const factory ShowMembersPage() = _$ShowMembersPage;
}

abstract class $PageOpenedCopyWith<$Res> {
  factory $PageOpenedCopyWith(
          PageOpened value, $Res Function(PageOpened) then) =
      _$PageOpenedCopyWithImpl<$Res>;
}

class _$PageOpenedCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $PageOpenedCopyWith<$Res> {
  _$PageOpenedCopyWithImpl(PageOpened _value, $Res Function(PageOpened) _then)
      : super(_value, (v) => _then(v as PageOpened));

  @override
  PageOpened get _value => super._value as PageOpened;
}

class _$PageOpened implements PageOpened {
  const _$PageOpened();

  @override
  String toString() {
    return 'CurrentCircleEvent.pageOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageOpened);
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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return pageOpened();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageOpened != null) {
      return pageOpened();
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return pageOpened(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageOpened != null) {
      return pageOpened(this);
    }
    return orElse();
  }
}

abstract class PageOpened implements CurrentCircleEvent {
  const factory PageOpened() = _$PageOpened;
}

abstract class $SendFilesCopyWith<$Res> {
  factory $SendFilesCopyWith(SendFiles value, $Res Function(SendFiles) then) =
      _$SendFilesCopyWithImpl<$Res>;
}

class _$SendFilesCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $SendFilesCopyWith<$Res> {
  _$SendFilesCopyWithImpl(SendFiles _value, $Res Function(SendFiles) _then)
      : super(_value, (v) => _then(v as SendFiles));

  @override
  SendFiles get _value => super._value as SendFiles;
}

class _$SendFiles implements SendFiles {
  const _$SendFiles();

  @override
  String toString() {
    return 'CurrentCircleEvent.sendFiles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendFiles);
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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return sendFiles();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendFiles != null) {
      return sendFiles();
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return sendFiles(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendFiles != null) {
      return sendFiles(this);
    }
    return orElse();
  }
}

abstract class SendFiles implements CurrentCircleEvent {
  const factory SendFiles() = _$SendFiles;
}

abstract class $FilesSentCopyWith<$Res> {
  factory $FilesSentCopyWith(FilesSent value, $Res Function(FilesSent) then) =
      _$FilesSentCopyWithImpl<$Res>;
}

class _$FilesSentCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $FilesSentCopyWith<$Res> {
  _$FilesSentCopyWithImpl(FilesSent _value, $Res Function(FilesSent) _then)
      : super(_value, (v) => _then(v as FilesSent));

  @override
  FilesSent get _value => super._value as FilesSent;
}

class _$FilesSent implements FilesSent {
  const _$FilesSent();

  @override
  String toString() {
    return 'CurrentCircleEvent.filesSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FilesSent);
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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return filesSent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filesSent != null) {
      return filesSent();
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return filesSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filesSent != null) {
      return filesSent(this);
    }
    return orElse();
  }
}

abstract class FilesSent implements CurrentCircleEvent {
  const factory FilesSent() = _$FilesSent;
}

abstract class $FileReceivedCopyWith<$Res> {
  factory $FileReceivedCopyWith(
          FileReceived value, $Res Function(FileReceived) then) =
      _$FileReceivedCopyWithImpl<$Res>;
}

class _$FileReceivedCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $FileReceivedCopyWith<$Res> {
  _$FileReceivedCopyWithImpl(
      FileReceived _value, $Res Function(FileReceived) _then)
      : super(_value, (v) => _then(v as FileReceived));

  @override
  FileReceived get _value => super._value as FileReceived;
}

class _$FileReceived implements FileReceived {
  const _$FileReceived();

  @override
  String toString() {
    return 'CurrentCircleEvent.filesReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FileReceived);
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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return filesReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filesReceived != null) {
      return filesReceived();
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return filesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filesReceived != null) {
      return filesReceived(this);
    }
    return orElse();
  }
}

abstract class FileReceived implements CurrentCircleEvent {
  const factory FileReceived() = _$FileReceived;
}

abstract class $MemberLeftCopyWith<$Res> {
  factory $MemberLeftCopyWith(
          MemberLeft value, $Res Function(MemberLeft) then) =
      _$MemberLeftCopyWithImpl<$Res>;
}

class _$MemberLeftCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $MemberLeftCopyWith<$Res> {
  _$MemberLeftCopyWithImpl(MemberLeft _value, $Res Function(MemberLeft) _then)
      : super(_value, (v) => _then(v as MemberLeft));

  @override
  MemberLeft get _value => super._value as MemberLeft;
}

class _$MemberLeft implements MemberLeft {
  const _$MemberLeft();

  @override
  String toString() {
    return 'CurrentCircleEvent.memberLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MemberLeft);
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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return memberLeft();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (memberLeft != null) {
      return memberLeft();
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return memberLeft(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
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
  const factory MemberLeft() = _$MemberLeft;
}

abstract class $LeaveCircleCopyWith<$Res> {
  factory $LeaveCircleCopyWith(
          LeaveCircle value, $Res Function(LeaveCircle) then) =
      _$LeaveCircleCopyWithImpl<$Res>;
}

class _$LeaveCircleCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $LeaveCircleCopyWith<$Res> {
  _$LeaveCircleCopyWithImpl(
      LeaveCircle _value, $Res Function(LeaveCircle) _then)
      : super(_value, (v) => _then(v as LeaveCircle));

  @override
  LeaveCircle get _value => super._value as LeaveCircle;
}

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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return leaveCircle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return leaveCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
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

abstract class $CloseCircleCopyWith<$Res> {
  factory $CloseCircleCopyWith(
          CloseCircle value, $Res Function(CloseCircle) then) =
      _$CloseCircleCopyWithImpl<$Res>;
}

class _$CloseCircleCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $CloseCircleCopyWith<$Res> {
  _$CloseCircleCopyWithImpl(
      CloseCircle _value, $Res Function(CloseCircle) _then)
      : super(_value, (v) => _then(v as CloseCircle));

  @override
  CloseCircle get _value => super._value as CloseCircle;
}

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
    @required Result addFile(File file),
    @required Result showFilesPage(),
    @required Result showMembersPage(),
    @required Result pageOpened(),
    @required Result sendFiles(),
    @required Result filesSent(),
    @required Result filesReceived(),
    @required Result memberLeft(),
    @required Result leaveCircle(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return closeCircle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result deviceRequestedConnection(User user),
    Result acceptOrReject(User requestingUser, bool acceptConnection),
    Result joinCircle(User host),
    Result addFile(File file),
    Result showFilesPage(),
    Result showMembersPage(),
    Result pageOpened(),
    Result sendFiles(),
    Result filesSent(),
    Result filesReceived(),
    Result memberLeft(),
    Result leaveCircle(),
    Result closeCircle(),
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
    @required Result addFile(AddFile value),
    @required Result showFilesPage(ShowFilesPage value),
    @required Result showMembersPage(ShowMembersPage value),
    @required Result pageOpened(PageOpened value),
    @required Result sendFiles(SendFiles value),
    @required Result filesSent(FilesSent value),
    @required Result filesReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result leaveCircle(LeaveCircle value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(deviceRequestedConnection != null);
    assert(acceptOrReject != null);
    assert(joinCircle != null);
    assert(addFile != null);
    assert(showFilesPage != null);
    assert(showMembersPage != null);
    assert(pageOpened != null);
    assert(sendFiles != null);
    assert(filesSent != null);
    assert(filesReceived != null);
    assert(memberLeft != null);
    assert(leaveCircle != null);
    assert(closeCircle != null);
    return closeCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result deviceRequestedConnection(DeviceRequestedConnection value),
    Result acceptOrReject(AcceptOrReject value),
    Result joinCircle(JoinCircle value),
    Result addFile(AddFile value),
    Result showFilesPage(ShowFilesPage value),
    Result showMembersPage(ShowMembersPage value),
    Result pageOpened(PageOpened value),
    Result sendFiles(SendFiles value),
    Result filesSent(FilesSent value),
    Result filesReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result leaveCircle(LeaveCircle value),
    Result closeCircle(CloseCircle value),
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
      @required List<File> selectedFiles,
      @required Map<File, double> outgoingFiles,
      @required Map<File, double> incomingFiles,
      @required List<FileTransaction> transactions,
      @required bool showMembersPage,
      @required bool showFilesPage,
      @required bool isAcceptingRequest,
      @required bool isClosing}) {
    return _HasStarted(
      members: members,
      selectedFiles: selectedFiles,
      outgoingFiles: outgoingFiles,
      incomingFiles: incomingFiles,
      transactions: transactions,
      showMembersPage: showMembersPage,
      showFilesPage: showFilesPage,
      isAcceptingRequest: isAcceptingRequest,
      isClosing: isClosing,
    );
  }

// ignore: unused_element
  _HasJoined hasJoined(
      {@required User host,
      @required List<File> selectedFiles,
      @required Map<File, double> outgoingFiles,
      @required Map<File, double> incomingFiles,
      @required List<FileTransaction> transactions,
      @required bool showMembersPage,
      @required bool showFilesPage,
      @required bool isLeaving}) {
    return _HasJoined(
      host: host,
      selectedFiles: selectedFiles,
      outgoingFiles: outgoingFiles,
      incomingFiles: incomingFiles,
      transactions: transactions,
      showMembersPage: showMembersPage,
      showFilesPage: showFilesPage,
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

// ignore: unused_element
const $CurrentCircleState = _$CurrentCircleStateTearOff();

mixin _$CurrentCircleState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String loadingText),
    @required
        Result hasStarted(
            Map<User, bool> members,
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
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

abstract class $CurrentCircleStateCopyWith<$Res> {
  factory $CurrentCircleStateCopyWith(
          CurrentCircleState value, $Res Function(CurrentCircleState) then) =
      _$CurrentCircleStateCopyWithImpl<$Res>;
}

class _$CurrentCircleStateCopyWithImpl<$Res>
    implements $CurrentCircleStateCopyWith<$Res> {
  _$CurrentCircleStateCopyWithImpl(this._value, this._then);

  final CurrentCircleState _value;
  // ignore: unused_field
  final $Res Function(CurrentCircleState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
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
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
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

abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
  $Res call({String loadingText});
}

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
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
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
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
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

abstract class _$HasStartedCopyWith<$Res> {
  factory _$HasStartedCopyWith(
          _HasStarted value, $Res Function(_HasStarted) then) =
      __$HasStartedCopyWithImpl<$Res>;
  $Res call(
      {Map<User, bool> members,
      List<File> selectedFiles,
      Map<File, double> outgoingFiles,
      Map<File, double> incomingFiles,
      List<FileTransaction> transactions,
      bool showMembersPage,
      bool showFilesPage,
      bool isAcceptingRequest,
      bool isClosing});
}

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
    Object selectedFiles = freezed,
    Object outgoingFiles = freezed,
    Object incomingFiles = freezed,
    Object transactions = freezed,
    Object showMembersPage = freezed,
    Object showFilesPage = freezed,
    Object isAcceptingRequest = freezed,
    Object isClosing = freezed,
  }) {
    return _then(_HasStarted(
      members: members == freezed ? _value.members : members as Map<User, bool>,
      selectedFiles: selectedFiles == freezed
          ? _value.selectedFiles
          : selectedFiles as List<File>,
      outgoingFiles: outgoingFiles == freezed
          ? _value.outgoingFiles
          : outgoingFiles as Map<File, double>,
      incomingFiles: incomingFiles == freezed
          ? _value.incomingFiles
          : incomingFiles as Map<File, double>,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions as List<FileTransaction>,
      showMembersPage: showMembersPage == freezed
          ? _value.showMembersPage
          : showMembersPage as bool,
      showFilesPage: showFilesPage == freezed
          ? _value.showFilesPage
          : showFilesPage as bool,
      isAcceptingRequest: isAcceptingRequest == freezed
          ? _value.isAcceptingRequest
          : isAcceptingRequest as bool,
      isClosing: isClosing == freezed ? _value.isClosing : isClosing as bool,
    ));
  }
}

class _$_HasStarted implements _HasStarted {
  const _$_HasStarted(
      {@required this.members,
      @required this.selectedFiles,
      @required this.outgoingFiles,
      @required this.incomingFiles,
      @required this.transactions,
      @required this.showMembersPage,
      @required this.showFilesPage,
      @required this.isAcceptingRequest,
      @required this.isClosing})
      : assert(members != null),
        assert(selectedFiles != null),
        assert(outgoingFiles != null),
        assert(incomingFiles != null),
        assert(transactions != null),
        assert(showMembersPage != null),
        assert(showFilesPage != null),
        assert(isAcceptingRequest != null),
        assert(isClosing != null);

  @override
  final Map<User, bool> members;
  @override
  final List<File> selectedFiles;
  @override
  final Map<File, double> outgoingFiles;
  @override
  final Map<File, double> incomingFiles;
  @override
  final List<FileTransaction> transactions;
  @override
  final bool showMembersPage;
  @override
  final bool showFilesPage;
  @override
  final bool isAcceptingRequest;
  @override
  final bool isClosing;

  @override
  String toString() {
    return 'CurrentCircleState.hasStarted(members: $members, selectedFiles: $selectedFiles, outgoingFiles: $outgoingFiles, incomingFiles: $incomingFiles, transactions: $transactions, showMembersPage: $showMembersPage, showFilesPage: $showFilesPage, isAcceptingRequest: $isAcceptingRequest, isClosing: $isClosing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasStarted &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.selectedFiles, selectedFiles) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFiles, selectedFiles)) &&
            (identical(other.outgoingFiles, outgoingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.outgoingFiles, outgoingFiles)) &&
            (identical(other.incomingFiles, incomingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.incomingFiles, incomingFiles)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.showMembersPage, showMembersPage) ||
                const DeepCollectionEquality()
                    .equals(other.showMembersPage, showMembersPage)) &&
            (identical(other.showFilesPage, showFilesPage) ||
                const DeepCollectionEquality()
                    .equals(other.showFilesPage, showFilesPage)) &&
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
      const DeepCollectionEquality().hash(selectedFiles) ^
      const DeepCollectionEquality().hash(outgoingFiles) ^
      const DeepCollectionEquality().hash(incomingFiles) ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(showMembersPage) ^
      const DeepCollectionEquality().hash(showFilesPage) ^
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
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
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
        selectedFiles,
        outgoingFiles,
        incomingFiles,
        transactions,
        showMembersPage,
        showFilesPage,
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
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasStarted != null) {
      return hasStarted(
          members,
          selectedFiles,
          outgoingFiles,
          incomingFiles,
          transactions,
          showMembersPage,
          showFilesPage,
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
      @required List<File> selectedFiles,
      @required Map<File, double> outgoingFiles,
      @required Map<File, double> incomingFiles,
      @required List<FileTransaction> transactions,
      @required bool showMembersPage,
      @required bool showFilesPage,
      @required bool isAcceptingRequest,
      @required bool isClosing}) = _$_HasStarted;

  Map<User, bool> get members;
  List<File> get selectedFiles;
  Map<File, double> get outgoingFiles;
  Map<File, double> get incomingFiles;
  List<FileTransaction> get transactions;
  bool get showMembersPage;
  bool get showFilesPage;
  bool get isAcceptingRequest;
  bool get isClosing;
  _$HasStartedCopyWith<_HasStarted> get copyWith;
}

abstract class _$HasJoinedCopyWith<$Res> {
  factory _$HasJoinedCopyWith(
          _HasJoined value, $Res Function(_HasJoined) then) =
      __$HasJoinedCopyWithImpl<$Res>;
  $Res call(
      {User host,
      List<File> selectedFiles,
      Map<File, double> outgoingFiles,
      Map<File, double> incomingFiles,
      List<FileTransaction> transactions,
      bool showMembersPage,
      bool showFilesPage,
      bool isLeaving});

  $UserCopyWith<$Res> get host;
}

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
    Object selectedFiles = freezed,
    Object outgoingFiles = freezed,
    Object incomingFiles = freezed,
    Object transactions = freezed,
    Object showMembersPage = freezed,
    Object showFilesPage = freezed,
    Object isLeaving = freezed,
  }) {
    return _then(_HasJoined(
      host: host == freezed ? _value.host : host as User,
      selectedFiles: selectedFiles == freezed
          ? _value.selectedFiles
          : selectedFiles as List<File>,
      outgoingFiles: outgoingFiles == freezed
          ? _value.outgoingFiles
          : outgoingFiles as Map<File, double>,
      incomingFiles: incomingFiles == freezed
          ? _value.incomingFiles
          : incomingFiles as Map<File, double>,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions as List<FileTransaction>,
      showMembersPage: showMembersPage == freezed
          ? _value.showMembersPage
          : showMembersPage as bool,
      showFilesPage: showFilesPage == freezed
          ? _value.showFilesPage
          : showFilesPage as bool,
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

class _$_HasJoined implements _HasJoined {
  const _$_HasJoined(
      {@required this.host,
      @required this.selectedFiles,
      @required this.outgoingFiles,
      @required this.incomingFiles,
      @required this.transactions,
      @required this.showMembersPage,
      @required this.showFilesPage,
      @required this.isLeaving})
      : assert(host != null),
        assert(selectedFiles != null),
        assert(outgoingFiles != null),
        assert(incomingFiles != null),
        assert(transactions != null),
        assert(showMembersPage != null),
        assert(showFilesPage != null),
        assert(isLeaving != null);

  @override
  final User host;
  @override
  final List<File> selectedFiles;
  @override
  final Map<File, double> outgoingFiles;
  @override
  final Map<File, double> incomingFiles;
  @override
  final List<FileTransaction> transactions;
  @override
  final bool showMembersPage;
  @override
  final bool showFilesPage;
  @override
  final bool isLeaving;

  @override
  String toString() {
    return 'CurrentCircleState.hasJoined(host: $host, selectedFiles: $selectedFiles, outgoingFiles: $outgoingFiles, incomingFiles: $incomingFiles, transactions: $transactions, showMembersPage: $showMembersPage, showFilesPage: $showFilesPage, isLeaving: $isLeaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasJoined &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.selectedFiles, selectedFiles) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFiles, selectedFiles)) &&
            (identical(other.outgoingFiles, outgoingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.outgoingFiles, outgoingFiles)) &&
            (identical(other.incomingFiles, incomingFiles) ||
                const DeepCollectionEquality()
                    .equals(other.incomingFiles, incomingFiles)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.showMembersPage, showMembersPage) ||
                const DeepCollectionEquality()
                    .equals(other.showMembersPage, showMembersPage)) &&
            (identical(other.showFilesPage, showFilesPage) ||
                const DeepCollectionEquality()
                    .equals(other.showFilesPage, showFilesPage)) &&
            (identical(other.isLeaving, isLeaving) ||
                const DeepCollectionEquality()
                    .equals(other.isLeaving, isLeaving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(selectedFiles) ^
      const DeepCollectionEquality().hash(outgoingFiles) ^
      const DeepCollectionEquality().hash(incomingFiles) ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(showMembersPage) ^
      const DeepCollectionEquality().hash(showFilesPage) ^
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
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isLeaving),
    @required Result hasFailed(ConnectionFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasStarted != null);
    assert(hasJoined != null);
    assert(hasFailed != null);
    return hasJoined(host, selectedFiles, outgoingFiles, incomingFiles,
        transactions, showMembersPage, showFilesPage, isLeaving);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String loadingText),
    Result hasStarted(
        Map<User, bool> members,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isLeaving),
    Result hasFailed(ConnectionFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasJoined != null) {
      return hasJoined(host, selectedFiles, outgoingFiles, incomingFiles,
          transactions, showMembersPage, showFilesPage, isLeaving);
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
      @required List<File> selectedFiles,
      @required Map<File, double> outgoingFiles,
      @required Map<File, double> incomingFiles,
      @required List<FileTransaction> transactions,
      @required bool showMembersPage,
      @required bool showFilesPage,
      @required bool isLeaving}) = _$_HasJoined;

  User get host;
  List<File> get selectedFiles;
  Map<File, double> get outgoingFiles;
  Map<File, double> get incomingFiles;
  List<FileTransaction> get transactions;
  bool get showMembersPage;
  bool get showFilesPage;
  bool get isLeaving;
  _$HasJoinedCopyWith<_HasJoined> get copyWith;
}

abstract class _$HasFailedCopyWith<$Res> {
  factory _$HasFailedCopyWith(
          _HasFailed value, $Res Function(_HasFailed) then) =
      __$HasFailedCopyWithImpl<$Res>;
  $Res call({ConnectionFailure failure});

  $ConnectionFailureCopyWith<$Res> get failure;
}

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
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
            bool isAcceptingRequest,
            bool isClosing),
    @required
        Result hasJoined(
            User host,
            List<File> selectedFiles,
            Map<File, double> outgoingFiles,
            Map<File, double> incomingFiles,
            List<FileTransaction> transactions,
            bool showMembersPage,
            bool showFilesPage,
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
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
        bool isAcceptingRequest,
        bool isClosing),
    Result hasJoined(
        User host,
        List<File> selectedFiles,
        Map<File, double> outgoingFiles,
        Map<File, double> incomingFiles,
        List<FileTransaction> transactions,
        bool showMembersPage,
        bool showFilesPage,
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
