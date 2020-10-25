// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payload_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PayloadInfoTearOff {
  const _$PayloadInfoTearOff();

// ignore: unused_element
  _PayloadInfo call({@required int payloadId, @required double progress}) {
    return _PayloadInfo(
      payloadId: payloadId,
      progress: progress,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PayloadInfo = _$PayloadInfoTearOff();

/// @nodoc
mixin _$PayloadInfo {
  int get payloadId;
  double get progress;

  $PayloadInfoCopyWith<PayloadInfo> get copyWith;
}

/// @nodoc
abstract class $PayloadInfoCopyWith<$Res> {
  factory $PayloadInfoCopyWith(
          PayloadInfo value, $Res Function(PayloadInfo) then) =
      _$PayloadInfoCopyWithImpl<$Res>;
  $Res call({int payloadId, double progress});
}

/// @nodoc
class _$PayloadInfoCopyWithImpl<$Res> implements $PayloadInfoCopyWith<$Res> {
  _$PayloadInfoCopyWithImpl(this._value, this._then);

  final PayloadInfo _value;
  // ignore: unused_field
  final $Res Function(PayloadInfo) _then;

  @override
  $Res call({
    Object payloadId = freezed,
    Object progress = freezed,
  }) {
    return _then(_value.copyWith(
      payloadId: payloadId == freezed ? _value.payloadId : payloadId as int,
      progress: progress == freezed ? _value.progress : progress as double,
    ));
  }
}

/// @nodoc
abstract class _$PayloadInfoCopyWith<$Res>
    implements $PayloadInfoCopyWith<$Res> {
  factory _$PayloadInfoCopyWith(
          _PayloadInfo value, $Res Function(_PayloadInfo) then) =
      __$PayloadInfoCopyWithImpl<$Res>;
  @override
  $Res call({int payloadId, double progress});
}

/// @nodoc
class __$PayloadInfoCopyWithImpl<$Res> extends _$PayloadInfoCopyWithImpl<$Res>
    implements _$PayloadInfoCopyWith<$Res> {
  __$PayloadInfoCopyWithImpl(
      _PayloadInfo _value, $Res Function(_PayloadInfo) _then)
      : super(_value, (v) => _then(v as _PayloadInfo));

  @override
  _PayloadInfo get _value => super._value as _PayloadInfo;

  @override
  $Res call({
    Object payloadId = freezed,
    Object progress = freezed,
  }) {
    return _then(_PayloadInfo(
      payloadId: payloadId == freezed ? _value.payloadId : payloadId as int,
      progress: progress == freezed ? _value.progress : progress as double,
    ));
  }
}

/// @nodoc
class _$_PayloadInfo extends _PayloadInfo {
  const _$_PayloadInfo({@required this.payloadId, @required this.progress})
      : assert(payloadId != null),
        assert(progress != null),
        super._();

  @override
  final int payloadId;
  @override
  final double progress;

  @override
  String toString() {
    return 'PayloadInfo(payloadId: $payloadId, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PayloadInfo &&
            (identical(other.payloadId, payloadId) ||
                const DeepCollectionEquality()
                    .equals(other.payloadId, payloadId)) &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(payloadId) ^
      const DeepCollectionEquality().hash(progress);

  @override
  _$PayloadInfoCopyWith<_PayloadInfo> get copyWith =>
      __$PayloadInfoCopyWithImpl<_PayloadInfo>(this, _$identity);
}

abstract class _PayloadInfo extends PayloadInfo {
  const _PayloadInfo._() : super._();
  const factory _PayloadInfo(
      {@required int payloadId, @required double progress}) = _$_PayloadInfo;

  @override
  int get payloadId;
  @override
  double get progress;
  @override
  _$PayloadInfoCopyWith<_PayloadInfo> get copyWith;
}
