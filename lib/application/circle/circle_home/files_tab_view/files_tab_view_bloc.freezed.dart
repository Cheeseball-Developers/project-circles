// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'files_tab_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FilesTabViewEventTearOff {
  const _$FilesTabViewEventTearOff();

// ignore: unused_element
  LoadDirectory openDirectory({@required String relativePath}) {
    return LoadDirectory(
      relativePath: relativePath,
    );
  }

// ignore: unused_element
  ToggleSelection toggleSelection(
      {@required FileSystemEntity fileSystemEntity}) {
    return ToggleSelection(
      fileSystemEntity: fileSystemEntity,
    );
  }

// ignore: unused_element
  DeselectAll deselectAll() {
    return const DeselectAll();
  }
}

// ignore: unused_element
const $FilesTabViewEvent = _$FilesTabViewEventTearOff();

mixin _$FilesTabViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openDirectory(String relativePath),
    @required Result toggleSelection(FileSystemEntity fileSystemEntity),
    @required Result deselectAll(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openDirectory(String relativePath),
    Result toggleSelection(FileSystemEntity fileSystemEntity),
    Result deselectAll(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openDirectory(LoadDirectory value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openDirectory(LoadDirectory value),
    Result toggleSelection(ToggleSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  });
}

abstract class $FilesTabViewEventCopyWith<$Res> {
  factory $FilesTabViewEventCopyWith(
          FilesTabViewEvent value, $Res Function(FilesTabViewEvent) then) =
      _$FilesTabViewEventCopyWithImpl<$Res>;
}

class _$FilesTabViewEventCopyWithImpl<$Res>
    implements $FilesTabViewEventCopyWith<$Res> {
  _$FilesTabViewEventCopyWithImpl(this._value, this._then);

  final FilesTabViewEvent _value;
  // ignore: unused_field
  final $Res Function(FilesTabViewEvent) _then;
}

abstract class $LoadDirectoryCopyWith<$Res> {
  factory $LoadDirectoryCopyWith(
          LoadDirectory value, $Res Function(LoadDirectory) then) =
      _$LoadDirectoryCopyWithImpl<$Res>;
  $Res call({String relativePath});
}

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
    Object relativePath = freezed,
  }) {
    return _then(LoadDirectory(
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath as String,
    ));
  }
}

class _$LoadDirectory implements LoadDirectory {
  const _$LoadDirectory({@required this.relativePath})
      : assert(relativePath != null);

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

  @override
  $LoadDirectoryCopyWith<LoadDirectory> get copyWith =>
      _$LoadDirectoryCopyWithImpl<LoadDirectory>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openDirectory(String relativePath),
    @required Result toggleSelection(FileSystemEntity fileSystemEntity),
    @required Result deselectAll(),
  }) {
    assert(openDirectory != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return openDirectory(relativePath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openDirectory(String relativePath),
    Result toggleSelection(FileSystemEntity fileSystemEntity),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openDirectory != null) {
      return openDirectory(relativePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openDirectory(LoadDirectory value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(openDirectory != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return openDirectory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openDirectory(LoadDirectory value),
    Result toggleSelection(ToggleSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openDirectory != null) {
      return openDirectory(this);
    }
    return orElse();
  }
}

abstract class LoadDirectory implements FilesTabViewEvent {
  const factory LoadDirectory({@required String relativePath}) =
      _$LoadDirectory;

  String get relativePath;
  $LoadDirectoryCopyWith<LoadDirectory> get copyWith;
}

abstract class $ToggleSelectionCopyWith<$Res> {
  factory $ToggleSelectionCopyWith(
          ToggleSelection value, $Res Function(ToggleSelection) then) =
      _$ToggleSelectionCopyWithImpl<$Res>;
  $Res call({FileSystemEntity fileSystemEntity});
}

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
    Object fileSystemEntity = freezed,
  }) {
    return _then(ToggleSelection(
      fileSystemEntity: fileSystemEntity == freezed
          ? _value.fileSystemEntity
          : fileSystemEntity as FileSystemEntity,
    ));
  }
}

class _$ToggleSelection implements ToggleSelection {
  const _$ToggleSelection({@required this.fileSystemEntity})
      : assert(fileSystemEntity != null);

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

  @override
  $ToggleSelectionCopyWith<ToggleSelection> get copyWith =>
      _$ToggleSelectionCopyWithImpl<ToggleSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result openDirectory(String relativePath),
    @required Result toggleSelection(FileSystemEntity fileSystemEntity),
    @required Result deselectAll(),
  }) {
    assert(openDirectory != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return toggleSelection(fileSystemEntity);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openDirectory(String relativePath),
    Result toggleSelection(FileSystemEntity fileSystemEntity),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleSelection != null) {
      return toggleSelection(fileSystemEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openDirectory(LoadDirectory value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(openDirectory != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openDirectory(LoadDirectory value),
    Result toggleSelection(ToggleSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleSelection != null) {
      return toggleSelection(this);
    }
    return orElse();
  }
}

abstract class ToggleSelection implements FilesTabViewEvent {
  const factory ToggleSelection({@required FileSystemEntity fileSystemEntity}) =
      _$ToggleSelection;

  FileSystemEntity get fileSystemEntity;
  $ToggleSelectionCopyWith<ToggleSelection> get copyWith;
}

abstract class $DeselectAllCopyWith<$Res> {
  factory $DeselectAllCopyWith(
          DeselectAll value, $Res Function(DeselectAll) then) =
      _$DeselectAllCopyWithImpl<$Res>;
}

class _$DeselectAllCopyWithImpl<$Res>
    extends _$FilesTabViewEventCopyWithImpl<$Res>
    implements $DeselectAllCopyWith<$Res> {
  _$DeselectAllCopyWithImpl(
      DeselectAll _value, $Res Function(DeselectAll) _then)
      : super(_value, (v) => _then(v as DeselectAll));

  @override
  DeselectAll get _value => super._value as DeselectAll;
}

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
  Result when<Result extends Object>({
    @required Result openDirectory(String relativePath),
    @required Result toggleSelection(FileSystemEntity fileSystemEntity),
    @required Result deselectAll(),
  }) {
    assert(openDirectory != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result openDirectory(String relativePath),
    Result toggleSelection(FileSystemEntity fileSystemEntity),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deselectAll != null) {
      return deselectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result openDirectory(LoadDirectory value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(openDirectory != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result openDirectory(LoadDirectory value),
    Result toggleSelection(ToggleSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deselectAll != null) {
      return deselectAll(this);
    }
    return orElse();
  }
}

abstract class DeselectAll implements FilesTabViewEvent {
  const factory DeselectAll() = _$DeselectAll;
}

class _$FilesTabViewStateTearOff {
  const _$FilesTabViewStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsLoading isLoading({@required String relativePath}) {
    return _IsLoading(
      relativePath: relativePath,
    );
  }

// ignore: unused_element
  _HasLoaded hasLoaded(
      {@required String relativePath,
      @required List<FileSystemEntity> folders,
      @required Map<FileSystemEntity, bool> files}) {
    return _HasLoaded(
      relativePath: relativePath,
      folders: folders,
      files: files,
    );
  }
}

// ignore: unused_element
const $FilesTabViewState = _$FilesTabViewStateTearOff();

mixin _$FilesTabViewState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String relativePath),
    @required
        Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String relativePath),
    Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
        Map<FileSystemEntity, bool> files),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoaded(_HasLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
    @required Result orElse(),
  });
}

abstract class $FilesTabViewStateCopyWith<$Res> {
  factory $FilesTabViewStateCopyWith(
          FilesTabViewState value, $Res Function(FilesTabViewState) then) =
      _$FilesTabViewStateCopyWithImpl<$Res>;
}

class _$FilesTabViewStateCopyWithImpl<$Res>
    implements $FilesTabViewStateCopyWith<$Res> {
  _$FilesTabViewStateCopyWithImpl(this._value, this._then);

  final FilesTabViewState _value;
  // ignore: unused_field
  final $Res Function(FilesTabViewState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$FilesTabViewStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String relativePath),
    @required
        Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String relativePath),
    Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
        Map<FileSystemEntity, bool> files),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoaded(_HasLoaded value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilesTabViewState {
  const factory _Initial() = _$_Initial;
}

abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
  $Res call({String relativePath});
}

class __$IsLoadingCopyWithImpl<$Res>
    extends _$FilesTabViewStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;

  @override
  $Res call({
    Object relativePath = freezed,
  }) {
    return _then(_IsLoading(
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath as String,
    ));
  }
}

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading({@required this.relativePath})
      : assert(relativePath != null);

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

  @override
  _$IsLoadingCopyWith<_IsLoading> get copyWith =>
      __$IsLoadingCopyWithImpl<_IsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String relativePath),
    @required
        Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return isLoading(relativePath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String relativePath),
    Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
        Map<FileSystemEntity, bool> files),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(relativePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoaded(_HasLoaded value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements FilesTabViewState {
  const factory _IsLoading({@required String relativePath}) = _$_IsLoading;

  String get relativePath;
  _$IsLoadingCopyWith<_IsLoading> get copyWith;
}

abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call(
      {String relativePath,
      List<FileSystemEntity> folders,
      Map<FileSystemEntity, bool> files});
}

class __$HasLoadedCopyWithImpl<$Res>
    extends _$FilesTabViewStateCopyWithImpl<$Res>
    implements _$HasLoadedCopyWith<$Res> {
  __$HasLoadedCopyWithImpl(_HasLoaded _value, $Res Function(_HasLoaded) _then)
      : super(_value, (v) => _then(v as _HasLoaded));

  @override
  _HasLoaded get _value => super._value as _HasLoaded;

  @override
  $Res call({
    Object relativePath = freezed,
    Object folders = freezed,
    Object files = freezed,
  }) {
    return _then(_HasLoaded(
      relativePath: relativePath == freezed
          ? _value.relativePath
          : relativePath as String,
      folders: folders == freezed
          ? _value.folders
          : folders as List<FileSystemEntity>,
      files: files == freezed
          ? _value.files
          : files as Map<FileSystemEntity, bool>,
    ));
  }
}

class _$_HasLoaded implements _HasLoaded {
  const _$_HasLoaded(
      {@required this.relativePath,
      @required this.folders,
      @required this.files})
      : assert(relativePath != null),
        assert(folders != null),
        assert(files != null);

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

  @override
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      __$HasLoadedCopyWithImpl<_HasLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(String relativePath),
    @required
        Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
            Map<FileSystemEntity, bool> files),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return hasLoaded(relativePath, folders, files);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(String relativePath),
    Result hasLoaded(String relativePath, List<FileSystemEntity> folders,
        Map<FileSystemEntity, bool> files),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(relativePath, folders, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoaded(_HasLoaded value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return hasLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(this);
    }
    return orElse();
  }
}

abstract class _HasLoaded implements FilesTabViewState {
  const factory _HasLoaded(
      {@required String relativePath,
      @required List<FileSystemEntity> folders,
      @required Map<FileSystemEntity, bool> files}) = _$_HasLoaded;

  String get relativePath;
  List<FileSystemEntity> get folders;
  Map<FileSystemEntity, bool> get files;
  _$HasLoadedCopyWith<_HasLoaded> get copyWith;
}
