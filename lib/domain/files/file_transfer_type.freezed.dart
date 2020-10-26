// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'file_transfer_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FileTransferTypeTearOff {
  const _$FileTransferTypeTearOff();

// ignore: unused_element
  Incoming incoming() {
    return const Incoming();
  }

// ignore: unused_element
  Outgoing outgoing() {
    return const Outgoing();
  }
}

/// @nodoc
// ignore: unused_element
const $FileTransferType = _$FileTransferTypeTearOff();

/// @nodoc
mixin _$FileTransferType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result incoming(),
    @required Result outgoing(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incoming(),
    Result outgoing(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incoming(Incoming value),
    @required Result outgoing(Outgoing value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incoming(Incoming value),
    Result outgoing(Outgoing value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>({
    @required Result incoming(),
    @required Result outgoing(),
  }) {
    assert(incoming != null);
    assert(outgoing != null);
    return incoming();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incoming(),
    Result outgoing(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incoming != null) {
      return incoming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incoming(Incoming value),
    @required Result outgoing(Outgoing value),
  }) {
    assert(incoming != null);
    assert(outgoing != null);
    return incoming(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incoming(Incoming value),
    Result outgoing(Outgoing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  Result when<Result extends Object>({
    @required Result incoming(),
    @required Result outgoing(),
  }) {
    assert(incoming != null);
    assert(outgoing != null);
    return outgoing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incoming(),
    Result outgoing(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (outgoing != null) {
      return outgoing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incoming(Incoming value),
    @required Result outgoing(Outgoing value),
  }) {
    assert(incoming != null);
    assert(outgoing != null);
    return outgoing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incoming(Incoming value),
    Result outgoing(Outgoing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (outgoing != null) {
      return outgoing(this);
    }
    return orElse();
  }
}

abstract class Outgoing implements FileTransferType {
  const factory Outgoing() = _$Outgoing;
}
