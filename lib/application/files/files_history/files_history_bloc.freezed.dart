// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'files_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FilesHistoryEventTearOff {
  const _$FilesHistoryEventTearOff();

// ignore: unused_element
  _AddItems addItems({@required List<FileInfo> items}) {
    return _AddItems(
      items: items,
    );
  }

// ignore: unused_element
  _Exit exit() {
    return const _Exit();
  }
}

/// @nodoc
// ignore: unused_element
const $FilesHistoryEvent = _$FilesHistoryEventTearOff();

/// @nodoc
mixin _$FilesHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addItems(List<FileInfo> items),
    @required TResult exit(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addItems(List<FileInfo> items),
    TResult exit(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addItems(_AddItems value),
    @required TResult exit(_Exit value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addItems(_AddItems value),
    TResult exit(_Exit value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FilesHistoryEventCopyWith<$Res> {
  factory $FilesHistoryEventCopyWith(
          FilesHistoryEvent value, $Res Function(FilesHistoryEvent) then) =
      _$FilesHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilesHistoryEventCopyWithImpl<$Res>
    implements $FilesHistoryEventCopyWith<$Res> {
  _$FilesHistoryEventCopyWithImpl(this._value, this._then);

  final FilesHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(FilesHistoryEvent) _then;
}

/// @nodoc
abstract class _$AddItemsCopyWith<$Res> {
  factory _$AddItemsCopyWith(_AddItems value, $Res Function(_AddItems) then) =
      __$AddItemsCopyWithImpl<$Res>;
  $Res call({List<FileInfo> items});
}

/// @nodoc
class __$AddItemsCopyWithImpl<$Res>
    extends _$FilesHistoryEventCopyWithImpl<$Res>
    implements _$AddItemsCopyWith<$Res> {
  __$AddItemsCopyWithImpl(_AddItems _value, $Res Function(_AddItems) _then)
      : super(_value, (v) => _then(v as _AddItems));

  @override
  _AddItems get _value => super._value as _AddItems;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_AddItems(
      items: items == freezed ? _value.items : items as List<FileInfo>,
    ));
  }
}

/// @nodoc
class _$_AddItems implements _AddItems {
  const _$_AddItems({@required this.items}) : assert(items != null);

  @override
  final List<FileInfo> items;

  @override
  String toString() {
    return 'FilesHistoryEvent.addItems(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddItems &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$AddItemsCopyWith<_AddItems> get copyWith =>
      __$AddItemsCopyWithImpl<_AddItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addItems(List<FileInfo> items),
    @required TResult exit(),
  }) {
    assert(addItems != null);
    assert(exit != null);
    return addItems(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addItems(List<FileInfo> items),
    TResult exit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addItems != null) {
      return addItems(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addItems(_AddItems value),
    @required TResult exit(_Exit value),
  }) {
    assert(addItems != null);
    assert(exit != null);
    return addItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addItems(_AddItems value),
    TResult exit(_Exit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addItems != null) {
      return addItems(this);
    }
    return orElse();
  }
}

abstract class _AddItems implements FilesHistoryEvent {
  const factory _AddItems({@required List<FileInfo> items}) = _$_AddItems;

  List<FileInfo> get items;
  _$AddItemsCopyWith<_AddItems> get copyWith;
}

/// @nodoc
abstract class _$ExitCopyWith<$Res> {
  factory _$ExitCopyWith(_Exit value, $Res Function(_Exit) then) =
      __$ExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExitCopyWithImpl<$Res> extends _$FilesHistoryEventCopyWithImpl<$Res>
    implements _$ExitCopyWith<$Res> {
  __$ExitCopyWithImpl(_Exit _value, $Res Function(_Exit) _then)
      : super(_value, (v) => _then(v as _Exit));

  @override
  _Exit get _value => super._value as _Exit;
}

/// @nodoc
class _$_Exit implements _Exit {
  const _$_Exit();

  @override
  String toString() {
    return 'FilesHistoryEvent.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Exit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addItems(List<FileInfo> items),
    @required TResult exit(),
  }) {
    assert(addItems != null);
    assert(exit != null);
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addItems(List<FileInfo> items),
    TResult exit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exit != null) {
      return exit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addItems(_AddItems value),
    @required TResult exit(_Exit value),
  }) {
    assert(addItems != null);
    assert(exit != null);
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addItems(_AddItems value),
    TResult exit(_Exit value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class _Exit implements FilesHistoryEvent {
  const factory _Exit() = _$_Exit;
}

/// @nodoc
class _$FilesHistoryStateTearOff {
  const _$FilesHistoryStateTearOff();

// ignore: unused_element
  _FilesHistoryState call(
      {@required
          Option<Either<DatabaseFailure, List<FileInfo>>>
              failureOrFilesInfoOption}) {
    return _FilesHistoryState(
      failureOrFilesInfoOption: failureOrFilesInfoOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FilesHistoryState = _$FilesHistoryStateTearOff();

/// @nodoc
mixin _$FilesHistoryState {
  Option<Either<DatabaseFailure, List<FileInfo>>> get failureOrFilesInfoOption;

  $FilesHistoryStateCopyWith<FilesHistoryState> get copyWith;
}

/// @nodoc
abstract class $FilesHistoryStateCopyWith<$Res> {
  factory $FilesHistoryStateCopyWith(
          FilesHistoryState value, $Res Function(FilesHistoryState) then) =
      _$FilesHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<DatabaseFailure, List<FileInfo>>>
          failureOrFilesInfoOption});
}

/// @nodoc
class _$FilesHistoryStateCopyWithImpl<$Res>
    implements $FilesHistoryStateCopyWith<$Res> {
  _$FilesHistoryStateCopyWithImpl(this._value, this._then);

  final FilesHistoryState _value;
  // ignore: unused_field
  final $Res Function(FilesHistoryState) _then;

  @override
  $Res call({
    Object failureOrFilesInfoOption = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrFilesInfoOption: failureOrFilesInfoOption == freezed
          ? _value.failureOrFilesInfoOption
          : failureOrFilesInfoOption
              as Option<Either<DatabaseFailure, List<FileInfo>>>,
    ));
  }
}

/// @nodoc
abstract class _$FilesHistoryStateCopyWith<$Res>
    implements $FilesHistoryStateCopyWith<$Res> {
  factory _$FilesHistoryStateCopyWith(
          _FilesHistoryState value, $Res Function(_FilesHistoryState) then) =
      __$FilesHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<DatabaseFailure, List<FileInfo>>>
          failureOrFilesInfoOption});
}

/// @nodoc
class __$FilesHistoryStateCopyWithImpl<$Res>
    extends _$FilesHistoryStateCopyWithImpl<$Res>
    implements _$FilesHistoryStateCopyWith<$Res> {
  __$FilesHistoryStateCopyWithImpl(
      _FilesHistoryState _value, $Res Function(_FilesHistoryState) _then)
      : super(_value, (v) => _then(v as _FilesHistoryState));

  @override
  _FilesHistoryState get _value => super._value as _FilesHistoryState;

  @override
  $Res call({
    Object failureOrFilesInfoOption = freezed,
  }) {
    return _then(_FilesHistoryState(
      failureOrFilesInfoOption: failureOrFilesInfoOption == freezed
          ? _value.failureOrFilesInfoOption
          : failureOrFilesInfoOption
              as Option<Either<DatabaseFailure, List<FileInfo>>>,
    ));
  }
}

/// @nodoc
class _$_FilesHistoryState implements _FilesHistoryState {
  const _$_FilesHistoryState({@required this.failureOrFilesInfoOption})
      : assert(failureOrFilesInfoOption != null);

  @override
  final Option<Either<DatabaseFailure, List<FileInfo>>>
      failureOrFilesInfoOption;

  @override
  String toString() {
    return 'FilesHistoryState(failureOrFilesInfoOption: $failureOrFilesInfoOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilesHistoryState &&
            (identical(
                    other.failureOrFilesInfoOption, failureOrFilesInfoOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrFilesInfoOption, failureOrFilesInfoOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrFilesInfoOption);

  @override
  _$FilesHistoryStateCopyWith<_FilesHistoryState> get copyWith =>
      __$FilesHistoryStateCopyWithImpl<_FilesHistoryState>(this, _$identity);
}

abstract class _FilesHistoryState implements FilesHistoryState {
  const factory _FilesHistoryState(
      {@required
          Option<Either<DatabaseFailure, List<FileInfo>>>
              failureOrFilesInfoOption}) = _$_FilesHistoryState;

  @override
  Option<Either<DatabaseFailure, List<FileInfo>>> get failureOrFilesInfoOption;
  @override
  _$FilesHistoryStateCopyWith<_FilesHistoryState> get copyWith;
}
