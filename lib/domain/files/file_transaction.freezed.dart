// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'file_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FileTransactionTearOff {
  const _$FileTransactionTearOff();

// ignore: unused_element
  _FileTransaction call(
      {@required String fileName,
      @required DateTime dateTime,
      @required User sender,
      @required List<User> recievers}) {
    return _FileTransaction(
      fileName: fileName,
      dateTime: dateTime,
      sender: sender,
      recievers: recievers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FileTransaction = _$FileTransactionTearOff();

/// @nodoc
mixin _$FileTransaction {
  String get fileName;
  DateTime get dateTime;
  User get sender;
  List<User> get recievers;

  $FileTransactionCopyWith<FileTransaction> get copyWith;
}

/// @nodoc
abstract class $FileTransactionCopyWith<$Res> {
  factory $FileTransactionCopyWith(
          FileTransaction value, $Res Function(FileTransaction) then) =
      _$FileTransactionCopyWithImpl<$Res>;
  $Res call(
      {String fileName, DateTime dateTime, User sender, List<User> recievers});

  $UserCopyWith<$Res> get sender;
}

/// @nodoc
class _$FileTransactionCopyWithImpl<$Res>
    implements $FileTransactionCopyWith<$Res> {
  _$FileTransactionCopyWithImpl(this._value, this._then);

  final FileTransaction _value;
  // ignore: unused_field
  final $Res Function(FileTransaction) _then;

  @override
  $Res call({
    Object fileName = freezed,
    Object dateTime = freezed,
    Object sender = freezed,
    Object recievers = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      sender: sender == freezed ? _value.sender : sender as User,
      recievers:
          recievers == freezed ? _value.recievers : recievers as List<User>,
    ));
  }

  @override
  $UserCopyWith<$Res> get sender {
    if (_value.sender == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$FileTransactionCopyWith<$Res>
    implements $FileTransactionCopyWith<$Res> {
  factory _$FileTransactionCopyWith(
          _FileTransaction value, $Res Function(_FileTransaction) then) =
      __$FileTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fileName, DateTime dateTime, User sender, List<User> recievers});

  @override
  $UserCopyWith<$Res> get sender;
}

/// @nodoc
class __$FileTransactionCopyWithImpl<$Res>
    extends _$FileTransactionCopyWithImpl<$Res>
    implements _$FileTransactionCopyWith<$Res> {
  __$FileTransactionCopyWithImpl(
      _FileTransaction _value, $Res Function(_FileTransaction) _then)
      : super(_value, (v) => _then(v as _FileTransaction));

  @override
  _FileTransaction get _value => super._value as _FileTransaction;

  @override
  $Res call({
    Object fileName = freezed,
    Object dateTime = freezed,
    Object sender = freezed,
    Object recievers = freezed,
  }) {
    return _then(_FileTransaction(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      sender: sender == freezed ? _value.sender : sender as User,
      recievers:
          recievers == freezed ? _value.recievers : recievers as List<User>,
    ));
  }
}

/// @nodoc
class _$_FileTransaction extends _FileTransaction with DiagnosticableTreeMixin {
  const _$_FileTransaction(
      {@required this.fileName,
      @required this.dateTime,
      @required this.sender,
      @required this.recievers})
      : assert(fileName != null),
        assert(dateTime != null),
        assert(sender != null),
        assert(recievers != null),
        super._();

  @override
  final String fileName;
  @override
  final DateTime dateTime;
  @override
  final User sender;
  @override
  final List<User> recievers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileTransaction(fileName: $fileName, dateTime: $dateTime, sender: $sender, recievers: $recievers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileTransaction'))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('sender', sender))
      ..add(DiagnosticsProperty('recievers', recievers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileTransaction &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.recievers, recievers) ||
                const DeepCollectionEquality()
                    .equals(other.recievers, recievers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(recievers);

  @override
  _$FileTransactionCopyWith<_FileTransaction> get copyWith =>
      __$FileTransactionCopyWithImpl<_FileTransaction>(this, _$identity);
}

abstract class _FileTransaction extends FileTransaction {
  const _FileTransaction._() : super._();
  const factory _FileTransaction(
      {@required String fileName,
      @required DateTime dateTime,
      @required User sender,
      @required List<User> recievers}) = _$_FileTransaction;

  @override
  String get fileName;
  @override
  DateTime get dateTime;
  @override
  User get sender;
  @override
  List<User> get recievers;
  @override
  _$FileTransactionCopyWith<_FileTransaction> get copyWith;
}
