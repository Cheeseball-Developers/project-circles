// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connection_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionFailureTearOff {
  const _$ConnectionFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  TimedOut timedOut() {
    return const TimedOut();
  }

  Unexpected unexpected() {
    return const Unexpected();
  }

  EndPointUnknown endPointUnknown() {
    return const EndPointUnknown();
  }
}

/// @nodoc
const $ConnectionFailure = _$ConnectionFailureTearOff();

/// @nodoc
mixin _$ConnectionFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() timedOut,
    required TResult Function() unexpected,
    required TResult Function() endPointUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? timedOut,
    TResult Function()? unexpected,
    TResult Function()? endPointUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(TimedOut value) timedOut,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(EndPointUnknown value) endPointUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(TimedOut value)? timedOut,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(EndPointUnknown value)? endPointUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<$Res> {
  factory $ConnectionFailureCopyWith(
          ConnectionFailure value, $Res Function(ConnectionFailure) then) =
      _$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<$Res>
    implements $ConnectionFailureCopyWith<$Res> {
  _$ConnectionFailureCopyWithImpl(this._value, this._then);

  final ConnectionFailure _value;
  // ignore: unused_field
  final $Res Function(ConnectionFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc
class _$CancelledByUser
    with DiagnosticableTreeMixin
    implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectionFailure.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectionFailure.cancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() timedOut,
    required TResult Function() unexpected,
    required TResult Function() endPointUnknown,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? timedOut,
    TResult Function()? unexpected,
    TResult Function()? endPointUnknown,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(TimedOut value) timedOut,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(EndPointUnknown value) endPointUnknown,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(TimedOut value)? timedOut,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(EndPointUnknown value)? endPointUnknown,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements ConnectionFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $TimedOutCopyWith<$Res> {
  factory $TimedOutCopyWith(TimedOut value, $Res Function(TimedOut) then) =
      _$TimedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimedOutCopyWithImpl<$Res> extends _$ConnectionFailureCopyWithImpl<$Res>
    implements $TimedOutCopyWith<$Res> {
  _$TimedOutCopyWithImpl(TimedOut _value, $Res Function(TimedOut) _then)
      : super(_value, (v) => _then(v as TimedOut));

  @override
  TimedOut get _value => super._value as TimedOut;
}

/// @nodoc
class _$TimedOut with DiagnosticableTreeMixin implements TimedOut {
  const _$TimedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectionFailure.timedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ConnectionFailure.timedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() timedOut,
    required TResult Function() unexpected,
    required TResult Function() endPointUnknown,
  }) {
    return timedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? timedOut,
    TResult Function()? unexpected,
    TResult Function()? endPointUnknown,
    required TResult orElse(),
  }) {
    if (timedOut != null) {
      return timedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(TimedOut value) timedOut,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(EndPointUnknown value) endPointUnknown,
  }) {
    return timedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(TimedOut value)? timedOut,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(EndPointUnknown value)? endPointUnknown,
    required TResult orElse(),
  }) {
    if (timedOut != null) {
      return timedOut(this);
    }
    return orElse();
  }
}

abstract class TimedOut implements ConnectionFailure {
  const factory TimedOut() = _$TimedOut;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc
class _$Unexpected with DiagnosticableTreeMixin implements Unexpected {
  const _$Unexpected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectionFailure.unexpected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectionFailure.unexpected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() timedOut,
    required TResult Function() unexpected,
    required TResult Function() endPointUnknown,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? timedOut,
    TResult Function()? unexpected,
    TResult Function()? endPointUnknown,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(TimedOut value) timedOut,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(EndPointUnknown value) endPointUnknown,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(TimedOut value)? timedOut,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(EndPointUnknown value)? endPointUnknown,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements ConnectionFailure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $EndPointUnknownCopyWith<$Res> {
  factory $EndPointUnknownCopyWith(
          EndPointUnknown value, $Res Function(EndPointUnknown) then) =
      _$EndPointUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndPointUnknownCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res>
    implements $EndPointUnknownCopyWith<$Res> {
  _$EndPointUnknownCopyWithImpl(
      EndPointUnknown _value, $Res Function(EndPointUnknown) _then)
      : super(_value, (v) => _then(v as EndPointUnknown));

  @override
  EndPointUnknown get _value => super._value as EndPointUnknown;
}

/// @nodoc
class _$EndPointUnknown
    with DiagnosticableTreeMixin
    implements EndPointUnknown {
  const _$EndPointUnknown();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectionFailure.endPointUnknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectionFailure.endPointUnknown'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EndPointUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() timedOut,
    required TResult Function() unexpected,
    required TResult Function() endPointUnknown,
  }) {
    return endPointUnknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? timedOut,
    TResult Function()? unexpected,
    TResult Function()? endPointUnknown,
    required TResult orElse(),
  }) {
    if (endPointUnknown != null) {
      return endPointUnknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(TimedOut value) timedOut,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(EndPointUnknown value) endPointUnknown,
  }) {
    return endPointUnknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(TimedOut value)? timedOut,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(EndPointUnknown value)? endPointUnknown,
    required TResult orElse(),
  }) {
    if (endPointUnknown != null) {
      return endPointUnknown(this);
    }
    return orElse();
  }
}

abstract class EndPointUnknown implements ConnectionFailure {
  const factory EndPointUnknown() = _$EndPointUnknown;
}
