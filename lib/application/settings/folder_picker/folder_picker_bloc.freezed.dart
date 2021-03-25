// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'folder_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FolderPickerEventTearOff {
  const _$FolderPickerEventTearOff();

  _OpenDirectory openDirectory({required Directory directory}) {
    return _OpenDirectory(
      directory: directory,
    );
  }

  _Up up() {
    return const _Up();
  }

  _Select select() {
    return const _Select();
  }
}

/// @nodoc
const $FolderPickerEvent = _$FolderPickerEventTearOff();

/// @nodoc
mixin _$FolderPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Directory directory) openDirectory,
    required TResult Function() up,
    required TResult Function() select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Directory directory)? openDirectory,
    TResult Function()? up,
    TResult Function()? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenDirectory value) openDirectory,
    required TResult Function(_Up value) up,
    required TResult Function(_Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenDirectory value)? openDirectory,
    TResult Function(_Up value)? up,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderPickerEventCopyWith<$Res> {
  factory $FolderPickerEventCopyWith(
          FolderPickerEvent value, $Res Function(FolderPickerEvent) then) =
      _$FolderPickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FolderPickerEventCopyWithImpl<$Res>
    implements $FolderPickerEventCopyWith<$Res> {
  _$FolderPickerEventCopyWithImpl(this._value, this._then);

  final FolderPickerEvent _value;
  // ignore: unused_field
  final $Res Function(FolderPickerEvent) _then;
}

/// @nodoc
abstract class _$OpenDirectoryCopyWith<$Res> {
  factory _$OpenDirectoryCopyWith(
          _OpenDirectory value, $Res Function(_OpenDirectory) then) =
      __$OpenDirectoryCopyWithImpl<$Res>;
  $Res call({Directory directory});
}

/// @nodoc
class __$OpenDirectoryCopyWithImpl<$Res>
    extends _$FolderPickerEventCopyWithImpl<$Res>
    implements _$OpenDirectoryCopyWith<$Res> {
  __$OpenDirectoryCopyWithImpl(
      _OpenDirectory _value, $Res Function(_OpenDirectory) _then)
      : super(_value, (v) => _then(v as _OpenDirectory));

  @override
  _OpenDirectory get _value => super._value as _OpenDirectory;

  @override
  $Res call({
    Object? directory = freezed,
  }) {
    return _then(_OpenDirectory(
      directory: directory == freezed
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory,
    ));
  }
}

/// @nodoc
class _$_OpenDirectory implements _OpenDirectory {
  const _$_OpenDirectory({required this.directory});

  @override
  final Directory directory;

  @override
  String toString() {
    return 'FolderPickerEvent.openDirectory(directory: $directory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpenDirectory &&
            (identical(other.directory, directory) ||
                const DeepCollectionEquality()
                    .equals(other.directory, directory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(directory);

  @JsonKey(ignore: true)
  @override
  _$OpenDirectoryCopyWith<_OpenDirectory> get copyWith =>
      __$OpenDirectoryCopyWithImpl<_OpenDirectory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Directory directory) openDirectory,
    required TResult Function() up,
    required TResult Function() select,
  }) {
    return openDirectory(directory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Directory directory)? openDirectory,
    TResult Function()? up,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (openDirectory != null) {
      return openDirectory(directory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenDirectory value) openDirectory,
    required TResult Function(_Up value) up,
    required TResult Function(_Select value) select,
  }) {
    return openDirectory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenDirectory value)? openDirectory,
    TResult Function(_Up value)? up,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (openDirectory != null) {
      return openDirectory(this);
    }
    return orElse();
  }
}

abstract class _OpenDirectory implements FolderPickerEvent {
  const factory _OpenDirectory({required Directory directory}) =
      _$_OpenDirectory;

  Directory get directory => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OpenDirectoryCopyWith<_OpenDirectory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpCopyWith<$Res> {
  factory _$UpCopyWith(_Up value, $Res Function(_Up) then) =
      __$UpCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpCopyWithImpl<$Res> extends _$FolderPickerEventCopyWithImpl<$Res>
    implements _$UpCopyWith<$Res> {
  __$UpCopyWithImpl(_Up _value, $Res Function(_Up) _then)
      : super(_value, (v) => _then(v as _Up));

  @override
  _Up get _value => super._value as _Up;
}

/// @nodoc
class _$_Up implements _Up {
  const _$_Up();

  @override
  String toString() {
    return 'FolderPickerEvent.up()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Up);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Directory directory) openDirectory,
    required TResult Function() up,
    required TResult Function() select,
  }) {
    return up();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Directory directory)? openDirectory,
    TResult Function()? up,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (up != null) {
      return up();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenDirectory value) openDirectory,
    required TResult Function(_Up value) up,
    required TResult Function(_Select value) select,
  }) {
    return up(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenDirectory value)? openDirectory,
    TResult Function(_Up value)? up,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (up != null) {
      return up(this);
    }
    return orElse();
  }
}

abstract class _Up implements FolderPickerEvent {
  const factory _Up() = _$_Up;
}

/// @nodoc
abstract class _$SelectCopyWith<$Res> {
  factory _$SelectCopyWith(_Select value, $Res Function(_Select) then) =
      __$SelectCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectCopyWithImpl<$Res> extends _$FolderPickerEventCopyWithImpl<$Res>
    implements _$SelectCopyWith<$Res> {
  __$SelectCopyWithImpl(_Select _value, $Res Function(_Select) _then)
      : super(_value, (v) => _then(v as _Select));

  @override
  _Select get _value => super._value as _Select;
}

/// @nodoc
class _$_Select implements _Select {
  const _$_Select();

  @override
  String toString() {
    return 'FolderPickerEvent.select()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Select);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Directory directory) openDirectory,
    required TResult Function() up,
    required TResult Function() select,
  }) {
    return select();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Directory directory)? openDirectory,
    TResult Function()? up,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenDirectory value) openDirectory,
    required TResult Function(_Up value) up,
    required TResult Function(_Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenDirectory value)? openDirectory,
    TResult Function(_Up value)? up,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements FolderPickerEvent {
  const factory _Select() = _$_Select;
}

/// @nodoc
class _$FolderPickerStateTearOff {
  const _$FolderPickerStateTearOff();

  _FolderPickerState call(
      {required Directory directory,
      required Option<List<FileSystemEntity>> folders,
      required bool isSelected}) {
    return _FolderPickerState(
      directory: directory,
      folders: folders,
      isSelected: isSelected,
    );
  }
}

/// @nodoc
const $FolderPickerState = _$FolderPickerStateTearOff();

/// @nodoc
mixin _$FolderPickerState {
  Directory get directory => throw _privateConstructorUsedError;
  Option<List<FileSystemEntity>> get folders =>
      throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FolderPickerStateCopyWith<FolderPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderPickerStateCopyWith<$Res> {
  factory $FolderPickerStateCopyWith(
          FolderPickerState value, $Res Function(FolderPickerState) then) =
      _$FolderPickerStateCopyWithImpl<$Res>;
  $Res call(
      {Directory directory,
      Option<List<FileSystemEntity>> folders,
      bool isSelected});
}

/// @nodoc
class _$FolderPickerStateCopyWithImpl<$Res>
    implements $FolderPickerStateCopyWith<$Res> {
  _$FolderPickerStateCopyWithImpl(this._value, this._then);

  final FolderPickerState _value;
  // ignore: unused_field
  final $Res Function(FolderPickerState) _then;

  @override
  $Res call({
    Object? directory = freezed,
    Object? folders = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      directory: directory == freezed
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory,
      folders: folders == freezed
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as Option<List<FileSystemEntity>>,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FolderPickerStateCopyWith<$Res>
    implements $FolderPickerStateCopyWith<$Res> {
  factory _$FolderPickerStateCopyWith(
          _FolderPickerState value, $Res Function(_FolderPickerState) then) =
      __$FolderPickerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Directory directory,
      Option<List<FileSystemEntity>> folders,
      bool isSelected});
}

/// @nodoc
class __$FolderPickerStateCopyWithImpl<$Res>
    extends _$FolderPickerStateCopyWithImpl<$Res>
    implements _$FolderPickerStateCopyWith<$Res> {
  __$FolderPickerStateCopyWithImpl(
      _FolderPickerState _value, $Res Function(_FolderPickerState) _then)
      : super(_value, (v) => _then(v as _FolderPickerState));

  @override
  _FolderPickerState get _value => super._value as _FolderPickerState;

  @override
  $Res call({
    Object? directory = freezed,
    Object? folders = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_FolderPickerState(
      directory: directory == freezed
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory,
      folders: folders == freezed
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as Option<List<FileSystemEntity>>,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_FolderPickerState implements _FolderPickerState {
  const _$_FolderPickerState(
      {required this.directory,
      required this.folders,
      required this.isSelected});

  @override
  final Directory directory;
  @override
  final Option<List<FileSystemEntity>> folders;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'FolderPickerState(directory: $directory, folders: $folders, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FolderPickerState &&
            (identical(other.directory, directory) ||
                const DeepCollectionEquality()
                    .equals(other.directory, directory)) &&
            (identical(other.folders, folders) ||
                const DeepCollectionEquality()
                    .equals(other.folders, folders)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(directory) ^
      const DeepCollectionEquality().hash(folders) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$FolderPickerStateCopyWith<_FolderPickerState> get copyWith =>
      __$FolderPickerStateCopyWithImpl<_FolderPickerState>(this, _$identity);
}

abstract class _FolderPickerState implements FolderPickerState {
  const factory _FolderPickerState(
      {required Directory directory,
      required Option<List<FileSystemEntity>> folders,
      required bool isSelected}) = _$_FolderPickerState;

  @override
  Directory get directory => throw _privateConstructorUsedError;
  @override
  Option<List<FileSystemEntity>> get folders =>
      throw _privateConstructorUsedError;
  @override
  bool get isSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FolderPickerStateCopyWith<_FolderPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
