// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'folder_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FolderPickerEventTearOff {
  const _$FolderPickerEventTearOff();

// ignore: unused_element
  _OpenDirectory openDirectory({@required Directory directory}) {
    return _OpenDirectory(
      directory: directory,
    );
  }

// ignore: unused_element
  _Up up() {
    return const _Up();
  }

// ignore: unused_element
  _Select select() {
    return const _Select();
  }
}

/// @nodoc
// ignore: unused_element
const $FolderPickerEvent = _$FolderPickerEventTearOff();

/// @nodoc
mixin _$FolderPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openDirectory(Directory directory),
    @required TResult up(),
    @required TResult select(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openDirectory(Directory directory),
    TResult up(),
    TResult select(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openDirectory(_OpenDirectory value),
    @required TResult up(_Up value),
    @required TResult select(_Select value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openDirectory(_OpenDirectory value),
    TResult up(_Up value),
    TResult select(_Select value),
    @required TResult orElse(),
  });
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
    Object directory = freezed,
  }) {
    return _then(_OpenDirectory(
      directory:
          directory == freezed ? _value.directory : directory as Directory,
    ));
  }
}

/// @nodoc
class _$_OpenDirectory implements _OpenDirectory {
  const _$_OpenDirectory({@required this.directory})
      : assert(directory != null);

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

  @override
  _$OpenDirectoryCopyWith<_OpenDirectory> get copyWith =>
      __$OpenDirectoryCopyWithImpl<_OpenDirectory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openDirectory(Directory directory),
    @required TResult up(),
    @required TResult select(),
  }) {
    assert(openDirectory != null);
    assert(up != null);
    assert(select != null);
    return openDirectory(directory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openDirectory(Directory directory),
    TResult up(),
    TResult select(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openDirectory != null) {
      return openDirectory(directory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openDirectory(_OpenDirectory value),
    @required TResult up(_Up value),
    @required TResult select(_Select value),
  }) {
    assert(openDirectory != null);
    assert(up != null);
    assert(select != null);
    return openDirectory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openDirectory(_OpenDirectory value),
    TResult up(_Up value),
    TResult select(_Select value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openDirectory != null) {
      return openDirectory(this);
    }
    return orElse();
  }
}

abstract class _OpenDirectory implements FolderPickerEvent {
  const factory _OpenDirectory({@required Directory directory}) =
      _$_OpenDirectory;

  Directory get directory;
  _$OpenDirectoryCopyWith<_OpenDirectory> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult openDirectory(Directory directory),
    @required TResult up(),
    @required TResult select(),
  }) {
    assert(openDirectory != null);
    assert(up != null);
    assert(select != null);
    return up();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openDirectory(Directory directory),
    TResult up(),
    TResult select(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (up != null) {
      return up();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openDirectory(_OpenDirectory value),
    @required TResult up(_Up value),
    @required TResult select(_Select value),
  }) {
    assert(openDirectory != null);
    assert(up != null);
    assert(select != null);
    return up(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openDirectory(_OpenDirectory value),
    TResult up(_Up value),
    TResult select(_Select value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult openDirectory(Directory directory),
    @required TResult up(),
    @required TResult select(),
  }) {
    assert(openDirectory != null);
    assert(up != null);
    assert(select != null);
    return select();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openDirectory(Directory directory),
    TResult up(),
    TResult select(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openDirectory(_OpenDirectory value),
    @required TResult up(_Up value),
    @required TResult select(_Select value),
  }) {
    assert(openDirectory != null);
    assert(up != null);
    assert(select != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openDirectory(_OpenDirectory value),
    TResult up(_Up value),
    TResult select(_Select value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

// ignore: unused_element
  _FolderPickerState call(
      {@required Directory directory,
      @required Option<List<FileSystemEntity>> folders,
      @required bool isSelected}) {
    return _FolderPickerState(
      directory: directory,
      folders: folders,
      isSelected: isSelected,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FolderPickerState = _$FolderPickerStateTearOff();

/// @nodoc
mixin _$FolderPickerState {
  Directory get directory;
  Option<List<FileSystemEntity>> get folders;
  bool get isSelected;

  $FolderPickerStateCopyWith<FolderPickerState> get copyWith;
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
    Object directory = freezed,
    Object folders = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      directory:
          directory == freezed ? _value.directory : directory as Directory,
      folders: folders == freezed
          ? _value.folders
          : folders as Option<List<FileSystemEntity>>,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
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
    Object directory = freezed,
    Object folders = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_FolderPickerState(
      directory:
          directory == freezed ? _value.directory : directory as Directory,
      folders: folders == freezed
          ? _value.folders
          : folders as Option<List<FileSystemEntity>>,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

/// @nodoc
class _$_FolderPickerState implements _FolderPickerState {
  const _$_FolderPickerState(
      {@required this.directory,
      @required this.folders,
      @required this.isSelected})
      : assert(directory != null),
        assert(folders != null),
        assert(isSelected != null);

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

  @override
  _$FolderPickerStateCopyWith<_FolderPickerState> get copyWith =>
      __$FolderPickerStateCopyWithImpl<_FolderPickerState>(this, _$identity);
}

abstract class _FolderPickerState implements FolderPickerState {
  const factory _FolderPickerState(
      {@required Directory directory,
      @required Option<List<FileSystemEntity>> folders,
      @required bool isSelected}) = _$_FolderPickerState;

  @override
  Directory get directory;
  @override
  Option<List<FileSystemEntity>> get folders;
  @override
  bool get isSelected;
  @override
  _$FolderPickerStateCopyWith<_FolderPickerState> get copyWith;
}
