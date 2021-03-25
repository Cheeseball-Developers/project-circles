// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'files_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilesHistoryEventTearOff {
  const _$FilesHistoryEventTearOff();

  _AddItems addItems({required List<FileInfo> items}) {
    return _AddItems(
      items: items,
    );
  }

  _Exit exit() {
    return const _Exit();
  }
}

/// @nodoc
const $FilesHistoryEvent = _$FilesHistoryEventTearOff();

/// @nodoc
mixin _$FilesHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FileInfo> items) addItems,
    required TResult Function() exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FileInfo> items)? addItems,
    TResult Function()? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Exit value) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Exit value)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? items = freezed,
  }) {
    return _then(_AddItems(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FileInfo>,
    ));
  }
}

/// @nodoc
class _$_AddItems implements _AddItems {
  const _$_AddItems({required this.items});

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

  @JsonKey(ignore: true)
  @override
  _$AddItemsCopyWith<_AddItems> get copyWith =>
      __$AddItemsCopyWithImpl<_AddItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FileInfo> items) addItems,
    required TResult Function() exit,
  }) {
    return addItems(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FileInfo> items)? addItems,
    TResult Function()? exit,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Exit value) exit,
  }) {
    return addItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Exit value)? exit,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(this);
    }
    return orElse();
  }
}

abstract class _AddItems implements FilesHistoryEvent {
  const factory _AddItems({required List<FileInfo> items}) = _$_AddItems;

  List<FileInfo> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddItemsCopyWith<_AddItems> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(List<FileInfo> items) addItems,
    required TResult Function() exit,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FileInfo> items)? addItems,
    TResult Function()? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Exit value) exit,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Exit value)? exit,
    required TResult orElse(),
  }) {
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

  _FilesHistoryState call(
      {required Option<Either<DatabaseFailure, List<FileInfo>>>
          failureOrFilesInfoOption}) {
    return _FilesHistoryState(
      failureOrFilesInfoOption: failureOrFilesInfoOption,
    );
  }
}

/// @nodoc
const $FilesHistoryState = _$FilesHistoryStateTearOff();

/// @nodoc
mixin _$FilesHistoryState {
  Option<Either<DatabaseFailure, List<FileInfo>>>
      get failureOrFilesInfoOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilesHistoryStateCopyWith<FilesHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? failureOrFilesInfoOption = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrFilesInfoOption: failureOrFilesInfoOption == freezed
          ? _value.failureOrFilesInfoOption
          : failureOrFilesInfoOption // ignore: cast_nullable_to_non_nullable
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
    Object? failureOrFilesInfoOption = freezed,
  }) {
    return _then(_FilesHistoryState(
      failureOrFilesInfoOption: failureOrFilesInfoOption == freezed
          ? _value.failureOrFilesInfoOption
          : failureOrFilesInfoOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DatabaseFailure, List<FileInfo>>>,
    ));
  }
}

/// @nodoc
class _$_FilesHistoryState implements _FilesHistoryState {
  const _$_FilesHistoryState({required this.failureOrFilesInfoOption});

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

  @JsonKey(ignore: true)
  @override
  _$FilesHistoryStateCopyWith<_FilesHistoryState> get copyWith =>
      __$FilesHistoryStateCopyWithImpl<_FilesHistoryState>(this, _$identity);
}

abstract class _FilesHistoryState implements FilesHistoryState {
  const factory _FilesHistoryState(
      {required Option<Either<DatabaseFailure, List<FileInfo>>>
          failureOrFilesInfoOption}) = _$_FilesHistoryState;

  @override
  Option<Either<DatabaseFailure, List<FileInfo>>>
      get failureOrFilesInfoOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilesHistoryStateCopyWith<_FilesHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
