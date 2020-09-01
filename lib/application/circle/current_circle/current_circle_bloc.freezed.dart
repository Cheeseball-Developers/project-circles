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
  FileSent fileSent() {
    return const FileSent();
  }

// ignore: unused_element
  FileReceived fileReceived() {
    return const FileReceived();
  }

// ignore: unused_element
  MemberLeft memberLeft() {
    return const MemberLeft();
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
    @required Result fileSent(),
    @required Result fileReceived(),
    @required Result memberLeft(),
    @required Result closeCircle(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result fileSent(),
    Result fileReceived(),
    Result memberLeft(),
    Result closeCircle(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result fileSent(FileSent value),
    @required Result fileReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result closeCircle(CloseCircle value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result fileSent(FileSent value),
    Result fileReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
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
    @required Result fileSent(),
    @required Result fileReceived(),
    @required Result memberLeft(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return startCircle(host);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result fileSent(),
    Result fileReceived(),
    Result memberLeft(),
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
    @required Result fileSent(FileSent value),
    @required Result fileReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return startCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result fileSent(FileSent value),
    Result fileReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
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

abstract class $FileSentCopyWith<$Res> {
  factory $FileSentCopyWith(FileSent value, $Res Function(FileSent) then) =
      _$FileSentCopyWithImpl<$Res>;
}

class _$FileSentCopyWithImpl<$Res>
    extends _$CurrentCircleEventCopyWithImpl<$Res>
    implements $FileSentCopyWith<$Res> {
  _$FileSentCopyWithImpl(FileSent _value, $Res Function(FileSent) _then)
      : super(_value, (v) => _then(v as FileSent));

  @override
  FileSent get _value => super._value as FileSent;
}

class _$FileSent implements FileSent {
  const _$FileSent();

  @override
  String toString() {
    return 'CurrentCircleEvent.fileSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FileSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startCircle(User host),
    @required Result fileSent(),
    @required Result fileReceived(),
    @required Result memberLeft(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return fileSent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result fileSent(),
    Result fileReceived(),
    Result memberLeft(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fileSent != null) {
      return fileSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result fileSent(FileSent value),
    @required Result fileReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return fileSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result fileSent(FileSent value),
    Result fileReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fileSent != null) {
      return fileSent(this);
    }
    return orElse();
  }
}

abstract class FileSent implements CurrentCircleEvent {
  const factory FileSent() = _$FileSent;
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
    return 'CurrentCircleEvent.fileReceived()';
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
    @required Result fileSent(),
    @required Result fileReceived(),
    @required Result memberLeft(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return fileReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result fileSent(),
    Result fileReceived(),
    Result memberLeft(),
    Result closeCircle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fileReceived != null) {
      return fileReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startCircle(StartCircle value),
    @required Result fileSent(FileSent value),
    @required Result fileReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return fileReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result fileSent(FileSent value),
    Result fileReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
    Result closeCircle(CloseCircle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fileReceived != null) {
      return fileReceived(this);
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
    @required Result fileSent(),
    @required Result fileReceived(),
    @required Result memberLeft(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return memberLeft();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result fileSent(),
    Result fileReceived(),
    Result memberLeft(),
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
    @required Result fileSent(FileSent value),
    @required Result fileReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return memberLeft(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result fileSent(FileSent value),
    Result fileReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
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
    @required Result fileSent(),
    @required Result fileReceived(),
    @required Result memberLeft(),
    @required Result closeCircle(),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return closeCircle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startCircle(User host),
    Result fileSent(),
    Result fileReceived(),
    Result memberLeft(),
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
    @required Result fileSent(FileSent value),
    @required Result fileReceived(FileReceived value),
    @required Result memberLeft(MemberLeft value),
    @required Result closeCircle(CloseCircle value),
  }) {
    assert(startCircle != null);
    assert(fileSent != null);
    assert(fileReceived != null);
    assert(memberLeft != null);
    assert(closeCircle != null);
    return closeCircle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startCircle(StartCircle value),
    Result fileSent(FileSent value),
    Result fileReceived(FileReceived value),
    Result memberLeft(MemberLeft value),
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
  _IsStarting isStarting() {
    return const _IsStarting();
  }

// ignore: unused_element
  _IsJoining isJoining() {
    return const _IsJoining();
  }

// ignore: unused_element
  _HasJoined hasJoined({@required User host, @required List<User> members}) {
    return _HasJoined(
      host: host,
      members: members,
    );
  }
}

// ignore: unused_element
const $CurrentCircleState = _$CurrentCircleStateTearOff();

mixin _$CurrentCircleState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isStarting(),
    @required Result isJoining(),
    @required Result hasJoined(User host, List<User> members),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isStarting(),
    Result isJoining(),
    Result hasJoined(User host, List<User> members),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isStarting(_IsStarting value),
    @required Result isJoining(_IsJoining value),
    @required Result hasJoined(_HasJoined value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isStarting(_IsStarting value),
    Result isJoining(_IsJoining value),
    Result hasJoined(_HasJoined value),
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
    @required Result isStarting(),
    @required Result isJoining(),
    @required Result hasJoined(User host, List<User> members),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isStarting(),
    Result isJoining(),
    Result hasJoined(User host, List<User> members),
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
    @required Result isStarting(_IsStarting value),
    @required Result isJoining(_IsJoining value),
    @required Result hasJoined(_HasJoined value),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isStarting(_IsStarting value),
    Result isJoining(_IsJoining value),
    Result hasJoined(_HasJoined value),
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

abstract class _$IsStartingCopyWith<$Res> {
  factory _$IsStartingCopyWith(
          _IsStarting value, $Res Function(_IsStarting) then) =
      __$IsStartingCopyWithImpl<$Res>;
}

class __$IsStartingCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
    implements _$IsStartingCopyWith<$Res> {
  __$IsStartingCopyWithImpl(
      _IsStarting _value, $Res Function(_IsStarting) _then)
      : super(_value, (v) => _then(v as _IsStarting));

  @override
  _IsStarting get _value => super._value as _IsStarting;
}

class _$_IsStarting implements _IsStarting {
  const _$_IsStarting();

  @override
  String toString() {
    return 'CurrentCircleState.isStarting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsStarting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isStarting(),
    @required Result isJoining(),
    @required Result hasJoined(User host, List<User> members),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return isStarting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isStarting(),
    Result isJoining(),
    Result hasJoined(User host, List<User> members),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isStarting != null) {
      return isStarting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isStarting(_IsStarting value),
    @required Result isJoining(_IsJoining value),
    @required Result hasJoined(_HasJoined value),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return isStarting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isStarting(_IsStarting value),
    Result isJoining(_IsJoining value),
    Result hasJoined(_HasJoined value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isStarting != null) {
      return isStarting(this);
    }
    return orElse();
  }
}

abstract class _IsStarting implements CurrentCircleState {
  const factory _IsStarting() = _$_IsStarting;
}

abstract class _$IsJoiningCopyWith<$Res> {
  factory _$IsJoiningCopyWith(
          _IsJoining value, $Res Function(_IsJoining) then) =
      __$IsJoiningCopyWithImpl<$Res>;
}

class __$IsJoiningCopyWithImpl<$Res>
    extends _$CurrentCircleStateCopyWithImpl<$Res>
    implements _$IsJoiningCopyWith<$Res> {
  __$IsJoiningCopyWithImpl(_IsJoining _value, $Res Function(_IsJoining) _then)
      : super(_value, (v) => _then(v as _IsJoining));

  @override
  _IsJoining get _value => super._value as _IsJoining;
}

class _$_IsJoining implements _IsJoining {
  const _$_IsJoining();

  @override
  String toString() {
    return 'CurrentCircleState.isJoining()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsJoining);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isStarting(),
    @required Result isJoining(),
    @required Result hasJoined(User host, List<User> members),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return isJoining();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isStarting(),
    Result isJoining(),
    Result hasJoined(User host, List<User> members),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isJoining != null) {
      return isJoining();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isStarting(_IsStarting value),
    @required Result isJoining(_IsJoining value),
    @required Result hasJoined(_HasJoined value),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return isJoining(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isStarting(_IsStarting value),
    Result isJoining(_IsJoining value),
    Result hasJoined(_HasJoined value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isJoining != null) {
      return isJoining(this);
    }
    return orElse();
  }
}

abstract class _IsJoining implements CurrentCircleState {
  const factory _IsJoining() = _$_IsJoining;
}

abstract class _$HasJoinedCopyWith<$Res> {
  factory _$HasJoinedCopyWith(
          _HasJoined value, $Res Function(_HasJoined) then) =
      __$HasJoinedCopyWithImpl<$Res>;
  $Res call({User host, List<User> members});

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
    Object members = freezed,
  }) {
    return _then(_HasJoined(
      host: host == freezed ? _value.host : host as User,
      members: members == freezed ? _value.members : members as List<User>,
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
  const _$_HasJoined({@required this.host, @required this.members})
      : assert(host != null),
        assert(members != null);

  @override
  final User host;
  @override
  final List<User> members;

  @override
  String toString() {
    return 'CurrentCircleState.hasJoined(host: $host, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasJoined &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(members);

  @override
  _$HasJoinedCopyWith<_HasJoined> get copyWith =>
      __$HasJoinedCopyWithImpl<_HasJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isStarting(),
    @required Result isJoining(),
    @required Result hasJoined(User host, List<User> members),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return hasJoined(host, members);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isStarting(),
    Result isJoining(),
    Result hasJoined(User host, List<User> members),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasJoined != null) {
      return hasJoined(host, members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isStarting(_IsStarting value),
    @required Result isJoining(_IsJoining value),
    @required Result hasJoined(_HasJoined value),
  }) {
    assert(initial != null);
    assert(isStarting != null);
    assert(isJoining != null);
    assert(hasJoined != null);
    return hasJoined(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isStarting(_IsStarting value),
    Result isJoining(_IsJoining value),
    Result hasJoined(_HasJoined value),
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
      {@required User host, @required List<User> members}) = _$_HasJoined;

  User get host;
  List<User> get members;
  _$HasJoinedCopyWith<_HasJoined> get copyWith;
}
