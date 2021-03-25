// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'file_transfer_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileTransferTypeTearOff {
  const _$FileTransferTypeTearOff();

  Incoming incoming() {
    return const Incoming();
  }

  Outgoing outgoing() {
    return const Outgoing();
  }
}

/// @nodoc
const $FileTransferType = _$FileTransferTypeTearOff();

/// @nodoc
mixin _$FileTransferType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incoming,
    required TResult Function() outgoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incoming,
    TResult Function()? outgoing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Incoming value) incoming,
    required TResult Function(Outgoing value) outgoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Incoming value)? incoming,
    TResult Function(Outgoing value)? outgoing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileTransferTypeCopyWith<$Res> {
  factory $FileTransferTypeCopyWith(
          FileTransferType value, $Res Function(FileTransferType) then) =
      _$FileTransferTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileTransferTypeCopyWithImpl<$Res>
    implements $FileTransferTypeCopyWith<$Res> {
  _$FileTransferTypeCopyWithImpl(this._value, this._then);

  final FileTransferType _value;
  // ignore: unused_field
  final $Res Function(FileTransferType) _then;
}

/// @nodoc
abstract class $IncomingCopyWith<$Res> {
  factory $IncomingCopyWith(Incoming value, $Res Function(Incoming) then) =
      _$IncomingCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncomingCopyWithImpl<$Res> extends _$FileTransferTypeCopyWithImpl<$Res>
    implements $IncomingCopyWith<$Res> {
  _$IncomingCopyWithImpl(Incoming _value, $Res Function(Incoming) _then)
      : super(_value, (v) => _then(v as Incoming));

  @override
  Incoming get _value => super._value as Incoming;
}

/// @nodoc
class _$Incoming implements Incoming {
  const _$Incoming();

  @override
  String toString() {
    return 'FileTransferType.incoming()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Incoming);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incoming,
    required TResult Function() outgoing,
  }) {
    return incoming();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incoming,
    TResult Function()? outgoing,
    required TResult orElse(),
  }) {
    if (incoming != null) {
      return incoming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Incoming value) incoming,
    required TResult Function(Outgoing value) outgoing,
  }) {
    return incoming(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Incoming value)? incoming,
    TResult Function(Outgoing value)? outgoing,
    required TResult orElse(),
  }) {
    if (incoming != null) {
      return incoming(this);
    }
    return orElse();
  }
}

abstract class Incoming implements FileTransferType {
  const factory Incoming() = _$Incoming;
}

/// @nodoc
abstract class $OutgoingCopyWith<$Res> {
  factory $OutgoingCopyWith(Outgoing value, $Res Function(Outgoing) then) =
      _$OutgoingCopyWithImpl<$Res>;
}

/// @nodoc
class _$OutgoingCopyWithImpl<$Res> extends _$FileTransferTypeCopyWithImpl<$Res>
    implements $OutgoingCopyWith<$Res> {
  _$OutgoingCopyWithImpl(Outgoing _value, $Res Function(Outgoing) _then)
      : super(_value, (v) => _then(v as Outgoing));

  @override
  Outgoing get _value => super._value as Outgoing;
}

/// @nodoc
class _$Outgoing implements Outgoing {
  const _$Outgoing();

  @override
  String toString() {
    return 'FileTransferType.outgoing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Outgoing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incoming,
    required TResult Function() outgoing,
  }) {
    return outgoing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incoming,
    TResult Function()? outgoing,
    required TResult orElse(),
  }) {
    if (outgoing != null) {
      return outgoing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Incoming value) incoming,
    required TResult Function(Outgoing value) outgoing,
  }) {
    return outgoing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Incoming value)? incoming,
    TResult Function(Outgoing value)? outgoing,
    required TResult orElse(),
  }) {
    if (outgoing != null) {
      return outgoing(this);
    }
    return orElse();
  }
}

abstract class Outgoing implements FileTransferType {
  const factory Outgoing() = _$Outgoing;
}
