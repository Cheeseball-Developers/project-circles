// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'circle_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CircleHomeEventTearOff {
  const _$CircleHomeEventTearOff();

// ignore: unused_element
  ChangePageIndex changePageIndex(int index) {
    return ChangePageIndex(
      index,
    );
  }
}

// ignore: unused_element
const $CircleHomeEvent = _$CircleHomeEventTearOff();

mixin _$CircleHomeEvent {
  int get index;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changePageIndex(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changePageIndex(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changePageIndex(ChangePageIndex value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changePageIndex(ChangePageIndex value),
    @required Result orElse(),
  });

  $CircleHomeEventCopyWith<CircleHomeEvent> get copyWith;
}

abstract class $CircleHomeEventCopyWith<$Res> {
  factory $CircleHomeEventCopyWith(
          CircleHomeEvent value, $Res Function(CircleHomeEvent) then) =
      _$CircleHomeEventCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$CircleHomeEventCopyWithImpl<$Res>
    implements $CircleHomeEventCopyWith<$Res> {
  _$CircleHomeEventCopyWithImpl(this._value, this._then);

  final CircleHomeEvent _value;
  // ignore: unused_field
  final $Res Function(CircleHomeEvent) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class $ChangePageIndexCopyWith<$Res>
    implements $CircleHomeEventCopyWith<$Res> {
  factory $ChangePageIndexCopyWith(
          ChangePageIndex value, $Res Function(ChangePageIndex) then) =
      _$ChangePageIndexCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$ChangePageIndexCopyWithImpl<$Res>
    extends _$CircleHomeEventCopyWithImpl<$Res>
    implements $ChangePageIndexCopyWith<$Res> {
  _$ChangePageIndexCopyWithImpl(
      ChangePageIndex _value, $Res Function(ChangePageIndex) _then)
      : super(_value, (v) => _then(v as ChangePageIndex));

  @override
  ChangePageIndex get _value => super._value as ChangePageIndex;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(ChangePageIndex(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$ChangePageIndex implements ChangePageIndex {
  const _$ChangePageIndex(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'CircleHomeEvent.changePageIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePageIndex &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $ChangePageIndexCopyWith<ChangePageIndex> get copyWith =>
      _$ChangePageIndexCopyWithImpl<ChangePageIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changePageIndex(int index),
  }) {
    assert(changePageIndex != null);
    return changePageIndex(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changePageIndex(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePageIndex != null) {
      return changePageIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changePageIndex(ChangePageIndex value),
  }) {
    assert(changePageIndex != null);
    return changePageIndex(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changePageIndex(ChangePageIndex value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePageIndex != null) {
      return changePageIndex(this);
    }
    return orElse();
  }
}

abstract class ChangePageIndex implements CircleHomeEvent {
  const factory ChangePageIndex(int index) = _$ChangePageIndex;

  @override
  int get index;
  @override
  $ChangePageIndexCopyWith<ChangePageIndex> get copyWith;
}

class _$CircleHomeStateTearOff {
  const _$CircleHomeStateTearOff();

// ignore: unused_element
  _CircleHomeState call({@required int pageIndex}) {
    return _CircleHomeState(
      pageIndex: pageIndex,
    );
  }
}

// ignore: unused_element
const $CircleHomeState = _$CircleHomeStateTearOff();

mixin _$CircleHomeState {
  int get pageIndex;

  $CircleHomeStateCopyWith<CircleHomeState> get copyWith;
}

abstract class $CircleHomeStateCopyWith<$Res> {
  factory $CircleHomeStateCopyWith(
          CircleHomeState value, $Res Function(CircleHomeState) then) =
      _$CircleHomeStateCopyWithImpl<$Res>;
  $Res call({int pageIndex});
}

class _$CircleHomeStateCopyWithImpl<$Res>
    implements $CircleHomeStateCopyWith<$Res> {
  _$CircleHomeStateCopyWithImpl(this._value, this._then);

  final CircleHomeState _value;
  // ignore: unused_field
  final $Res Function(CircleHomeState) _then;

  @override
  $Res call({
    Object pageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: pageIndex == freezed ? _value.pageIndex : pageIndex as int,
    ));
  }
}

abstract class _$CircleHomeStateCopyWith<$Res>
    implements $CircleHomeStateCopyWith<$Res> {
  factory _$CircleHomeStateCopyWith(
          _CircleHomeState value, $Res Function(_CircleHomeState) then) =
      __$CircleHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int pageIndex});
}

class __$CircleHomeStateCopyWithImpl<$Res>
    extends _$CircleHomeStateCopyWithImpl<$Res>
    implements _$CircleHomeStateCopyWith<$Res> {
  __$CircleHomeStateCopyWithImpl(
      _CircleHomeState _value, $Res Function(_CircleHomeState) _then)
      : super(_value, (v) => _then(v as _CircleHomeState));

  @override
  _CircleHomeState get _value => super._value as _CircleHomeState;

  @override
  $Res call({
    Object pageIndex = freezed,
  }) {
    return _then(_CircleHomeState(
      pageIndex: pageIndex == freezed ? _value.pageIndex : pageIndex as int,
    ));
  }
}

class _$_CircleHomeState implements _CircleHomeState {
  const _$_CircleHomeState({@required this.pageIndex})
      : assert(pageIndex != null);

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'CircleHomeState(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CircleHomeState &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pageIndex);

  @override
  _$CircleHomeStateCopyWith<_CircleHomeState> get copyWith =>
      __$CircleHomeStateCopyWithImpl<_CircleHomeState>(this, _$identity);
}

abstract class _CircleHomeState implements CircleHomeState {
  const factory _CircleHomeState({@required int pageIndex}) =
      _$_CircleHomeState;

  @override
  int get pageIndex;
  @override
  _$CircleHomeStateCopyWith<_CircleHomeState> get copyWith;
}
