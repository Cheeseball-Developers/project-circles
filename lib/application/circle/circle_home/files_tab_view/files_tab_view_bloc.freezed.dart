// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'files_tab_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilesTabViewEventTearOff {
  const _$FilesTabViewEventTearOff();

  LoadDirectory openDirectory({required String relativePath}) {
    return LoadDirectory(
      relativePath: relativePath,
    );
  }

  ToggleSelection toggleSelection(
      {required FileSystemEntity fileSystemEntity}) {
    return ToggleSelection(
      fileSystemEntity: fileSystemEntity,
    );
  }

  DeselectAll deselectAll() {
    return const DeselectAll();
  }
}

/// @nodoc
const $FilesTabViewEvent = _$FilesTabViewEventTearOff();

/// @nodoc
mixin _$FilesTabViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String relativePath) openDirectory,
    required TResult Function(FileSystemEntity fileSystemEntity)
        toggleSelection,
    required TResult Function() deselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String relativePath)? openDirectory,
    TResult Function(FileSystemEntity fileSystemEntity)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDirectory value) openDirectory,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDirectory value)? openDirectory,
    TResult Function(ToggleSelection value)? toggleSelection,
    TResult Function(DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesTabViewEventCopyWith<$Res> {
  factory $FilesTabViewEventCopyWith(
          FilesTabViewEvent value, $Res Function(FilesTabViewEvent) then) =
      _$FilesTabViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilesTabViewEventCopyWithImpl<$Res>
    implements $FilesTabViewEventCopyWith<$Res> {
  _$FilesTabViewEventCopyWithImpl(this._value, this._then);

  final FilesTabViewEvent _value;
  // ignore: unused_field
  final $Res Function(FilesTabViewEvent) _then;
}

/// @nodoc
abstract class $LoadDirectoryCopyWith<$Res> {
  factory $LoadDirectoryCopyWith(
          LoadDirectory value, $Res Function(LoadDirectory) then) =
      _$LoadDirectoryCopyWithImpl<$Res>;
  $Res call({String relativePath});
}

/// @nodoc
class _$LoadDirectoryCopyWithImpl<$Res>
    extends _$FilesTabViewEventCopyWithImpl<$Res>
    implements $LoadDirectoryCopyWith<$Res> {
  _$LoadDirectoryCopyWithImpl(
      LoadDirectory _value, $Res Function(LoadDirectory) _then)
      : super(_value, (v) => _then(v as LoadDirectory));

  @override
  LoadDirectory get _value => super._value as LoadDirectory;

  @override
  $Res call({
    Object? relativePath = freezed,
  }) {
    return _then(LoadDirectory(
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$LoadDirectory implements LoadDirectory {
  const _$LoadDirectory({required this.relativePath});

  @override
  final String relativePath;

  @override
  String toString() {
    return 'FilesTabViewEvent.openDirectory(relativePath: $relativePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadDirectory &&
            (identical(other.relativePath, relativePath) ||
                const DeepCollectionEquality()
                    .equals(other.relativePath, relativePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(relativePath);

  @JsonKey(ignore: true)
  @override
  $LoadDirectoryCopyWith<LoadDirectory> get copyWith =>
      _$LoadDirectoryCopyWithImpl<LoadDirectory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String relativePath) openDirectory,
    required TResult Function(FileSystemEntity fileSystemEntity)
        toggleSelection,
    required TResult Function() deselectAll,
  }) {
    return openDirectory(relativePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String relativePath)? openDirectory,
    TResult Function(FileSystemEntity fileSystemEntity)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (openDirectory != null) {
      return openDirectory(relativePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDirectory value) openDirectory,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) {
    return openDirectory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDirectory value)? openDirectory,
    TResult Function(ToggleSelection value)? toggleSelection,
    TResult Function(DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (openDirectory != null) {
      return openDirectory(this);
    }
    return orElse();
  }
}

abstract class LoadDirectory implements FilesTabViewEvent {
  const factory LoadDirectory({required String relativePath}) = _$LoadDirectory;

  String get relativePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadDirectoryCopyWith<LoadDirectory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleSelectionCopyWith<$Res> {
  factory $ToggleSelectionCopyWith(
          ToggleSelection value, $Res Function(ToggleSelection) then) =
      _$ToggleSelectionCopyWithImpl<$Res>;
  $Res call({FileSystemEntity fileSystemEntity});
}

/// @nodoc
class _$ToggleSelectionCopyWithImpl<$Res>
    extends _$FilesTabViewEventCopyWithImpl<$Res>
    implements $ToggleSelectionCopyWith<$Res> {
  _$ToggleSelectionCopyWithImpl(
      ToggleSelection _value, $Res Function(ToggleSelection) _then)
      : super(_value, (v) => _then(v as ToggleSelection));

  @override
  ToggleSelection get _value => super._value as ToggleSelection;

  @override
  $Res call({
    Object? fileSystemEntity = freezed,
  }) {
    return _then(ToggleSelection(
      fileSystemEntity: fileSystemEntity == freezed
          ? _value.fileSystemEntity
          : fileSystemEntity // ignore: cast_nullable_to_non_nullable
              as FileSystemEntity,
    ));
  }
}

/// @nodoc
class _$ToggleSelection implements ToggleSelection {
  const _$ToggleSelection({required this.fileSystemEntity});

  @override
  final FileSystemEntity fileSystemEntity;

  @override
  String toString() {
    return 'FilesTabViewEvent.toggleSelection(fileSystemEntity: $fileSystemEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleSelection &&
            (identical(other.fileSystemEntity, fileSystemEntity) ||
                const DeepCollectionEquality()
                    .equals(other.fileSystemEntity, fileSystemEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileSystemEntity);

  @JsonKey(ignore: true)
  @override
  $ToggleSelectionCopyWith<ToggleSelection> get copyWith =>
      _$ToggleSelectionCopyWithImpl<ToggleSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String relativePath) openDirectory,
    required TResult Function(FileSystemEntity fileSystemEntity)
        toggleSelection,
    required TResult Function() deselectAll,
  }) {
    return toggleSelection(fileSystemEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String relativePath)? openDirectory,
    TResult Function(FileSystemEntity fileSystemEntity)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(fileSystemEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDirectory value) openDirectory,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) {
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDirectory value)? openDirectory,
    TResult Function(ToggleSelection value)? toggleSelection,
    TResult Function(DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(this);
    }
    return orElse();
  }
}

abstract class ToggleSelection implements FilesTabViewEvent {
  const factory ToggleSelection({required FileSystemEntity fileSystemEntity}) =
      _$ToggleSelection;

  FileSystemEntity get fileSystemEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToggleSelectionCopyWith<ToggleSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeselectAllCopyWith<$Res> {
  factory $DeselectAllCopyWith(
          DeselectAll value, $Res Function(DeselectAll) then) =
      _$DeselectAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeselectAllCopyWithImpl<$Res>
    extends _$FilesTabViewEventCopyWithImpl<$Res>
    implements $DeselectAllCopyWith<$Res> {
  _$DeselectAllCopyWithImpl(
      DeselectAll _value, $Res Function(DeselectAll) _then)
      : super(_value, (v) => _then(v as DeselectAll));

  @override
  DeselectAll get _value => super._value as DeselectAll;
}

/// @nodoc
class _$DeselectAll implements DeselectAll {
  const _$DeselectAll();

  @override
  String toString() {
    return 'FilesTabViewEvent.deselectAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeselectAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String relativePath) openDirectory,
    required TResult Function(FileSystemEntity fileSystemEntity)
        toggleSelection,
    required TResult Function() deselectAll,
  }) {
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String relativePath)? openDirectory,
    TResult Function(FileSystemEntity fileSystemEntity)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (deselectAll != null) {
      return deselectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDirectory value) openDirectory,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) {
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDirectory value)? openDirectory,
    TResult Function(ToggleSelection value)? toggleSelection,
    TResult Function(DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (deselectAll != null) {
      return deselectAll(this);
    }
    return orElse();
  }
}

abstract class DeselectAll implements FilesTabViewEvent {
  const factory DeselectAll() = _$DeselectAll;
}

/// @nodoc
class _$FilesTabViewStateTearOff {
  const _$FilesTabViewStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsLoading isLoading({required String relativePath}) {
    return _IsLoading(
      relativePath: relativePath,
    );
  }

  _HasLoaded hasLoaded(
      {required String relativePath,
      required List<FileSystemEntity> folders,
      required Map<FileSystemEntity, bool> files}) {
    return _HasLoaded(
      relativePath: relativePath,
      folders: folders,
      files: files,
    );
  }
}

/// @nodoc
const $FilesTabViewState = _$FilesTabViewStateTearOff();

/// @nodoc
mixin _$FilesTabViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String relativePath) isLoading,
    required TResult Function(String relativePath,
            List<FileSystemEntity> folders, Map<FileSystemEntity, bool> files)
        hasLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String relativePath)? isLoading,
    TResult Function(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files)?
        hasLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoaded value) hasLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoaded value)? hasLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesTabViewStateCopyWith<$Res> {
  factory $FilesTabViewStateCopyWith(
          FilesTabViewState value, $Res Function(FilesTabViewState) then) =
      _$FilesTabViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilesTabViewStateCopyWithImpl<$Res>
    implements $FilesTabViewStateCopyWith<$Res> {
  _$FilesTabViewStateCopyWithImpl(this._value, this._then);

  final FilesTabViewState _value;
  // ignore: unused_field
  final $Res Function(FilesTabViewState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FilesTabViewStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FilesTabViewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String relativePath) isLoading,
    required TResult Function(String relativePath,
            List<FileSystemEntity> folders, Map<FileSystemEntity, bool> files)
        hasLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String relativePath)? isLoading,
    TResult Function(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files)?
        hasLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoaded value) hasLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoaded value)? hasLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilesTabViewState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
  $Res call({String relativePath});
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res>
    extends _$FilesTabViewStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;

  @override
  $Res call({
    Object? relativePath = freezed,
  }) {
    return _then(_IsLoading(
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_IsLoading implements _IsLoading {
  const _$_IsLoading({required this.relativePath});

  @override
  final String relativePath;

  @override
  String toString() {
    return 'FilesTabViewState.isLoading(relativePath: $relativePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsLoading &&
            (identical(other.relativePath, relativePath) ||
                const DeepCollectionEquality()
                    .equals(other.relativePath, relativePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(relativePath);

  @JsonKey(ignore: true)
  @override
  _$IsLoadingCopyWith<_IsLoading> get copyWith =>
      __$IsLoadingCopyWithImpl<_IsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String relativePath) isLoading,
    required TResult Function(String relativePath,
            List<FileSystemEntity> folders, Map<FileSystemEntity, bool> files)
        hasLoaded,
  }) {
    return isLoading(relativePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String relativePath)? isLoading,
    TResult Function(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files)?
        hasLoaded,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(relativePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoaded value) hasLoaded,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoaded value)? hasLoaded,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements FilesTabViewState {
  const factory _IsLoading({required String relativePath}) = _$_IsLoading;

  String get relativePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsLoadingCopyWith<_IsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call(
      {String relativePath,
      List<FileSystemEntity> folders,
      Map<FileSystemEntity, bool> files});
}

/// @nodoc
class __$HasLoadedCopyWithImpl<$Res>
    extends _$FilesTabViewStateCopyWithImpl<$Res>
    implements _$HasLoadedCopyWith<$Res> {
  __$HasLoadedCopyWithImpl(_HasLoaded _value, $Res Function(_HasLoaded) _then)
      : super(_value, (v) => _then(v as _HasLoaded));

  @override
  _HasLoaded get _value => super._value as _HasLoaded;

  @override
  $Res call({
    Object? relativePath = freezed,
    Object? folders = freezed,
    Object? files = freezed,
  }) {
    return _then(_HasLoaded(
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
      folders: folders == freezed
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FileSystemEntity>,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<FileSystemEntity, bool>,
    ));
  }
}

/// @nodoc
class _$_HasLoaded implements _HasLoaded {
  const _$_HasLoaded(
      {required this.relativePath, required this.folders, required this.files});

  @override
  final String relativePath;
  @override
  final List<FileSystemEntity> folders;
  @override
  final Map<FileSystemEntity, bool> files;

  @override
  String toString() {
    return 'FilesTabViewState.hasLoaded(relativePath: $relativePath, folders: $folders, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLoaded &&
            (identical(other.relativePath, relativePath) ||
                const DeepCollectionEquality()
                    .equals(other.relativePath, relativePath)) &&
            (identical(other.folders, folders) ||
                const DeepCollectionEquality()
                    .equals(other.folders, folders)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(relativePath) ^
      const DeepCollectionEquality().hash(folders) ^
      const DeepCollectionEquality().hash(files);

  @JsonKey(ignore: true)
  @override
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      __$HasLoadedCopyWithImpl<_HasLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String relativePath) isLoading,
    required TResult Function(String relativePath,
            List<FileSystemEntity> folders, Map<FileSystemEntity, bool> files)
        hasLoaded,
  }) {
    return hasLoaded(relativePath, folders, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String relativePath)? isLoading,
    TResult Function(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files)?
        hasLoaded,
    required TResult orElse(),
  }) {
    if (hasLoaded != null) {
      return hasLoaded(relativePath, folders, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoaded value) hasLoaded,
  }) {
    return hasLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoaded value)? hasLoaded,
    required TResult orElse(),
  }) {
    if (hasLoaded != null) {
      return hasLoaded(this);
    }
    return orElse();
  }
}

abstract class _HasLoaded implements FilesTabViewState {
  const factory _HasLoaded(
      {required String relativePath,
      required List<FileSystemEntity> folders,
      required Map<FileSystemEntity, bool> files}) = _$_HasLoaded;

  String get relativePath => throw _privateConstructorUsedError;
  List<FileSystemEntity> get folders => throw _privateConstructorUsedError;
  Map<FileSystemEntity, bool> get files => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
