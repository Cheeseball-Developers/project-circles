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
  LoadDirectory loadDirectory(Directory directory) {
    return LoadDirectory(
      directory,
    );
  }
}

// ignore: unused_element
const $FilesTabViewEvent = _$FilesTabViewEventTearOff();

mixin _$FilesTabViewEvent {
  Directory get directory;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDirectory(Directory directory),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDirectory(Directory directory),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDirectory(LoadDirectory value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDirectory(LoadDirectory value),
    @required Result orElse(),
  });

  $FilesTabViewEventCopyWith<FilesTabViewEvent> get copyWith;
}

abstract class $FilesTabViewEventCopyWith<$Res> {
  factory $FilesTabViewEventCopyWith(
          FilesTabViewEvent value, $Res Function(FilesTabViewEvent) then) =
      _$FilesTabViewEventCopyWithImpl<$Res>;
  $Res call({Directory directory});
}

class _$FilesTabViewEventCopyWithImpl<$Res>
    implements $FilesTabViewEventCopyWith<$Res> {
  _$FilesTabViewEventCopyWithImpl(this._value, this._then);

  final FilesTabViewEvent _value;
  // ignore: unused_field
  final $Res Function(FilesTabViewEvent) _then;

  @override
  $Res call({
    Object directory = freezed,
  }) {
    return _then(_value.copyWith(
      directory:
          directory == freezed ? _value.directory : directory as Directory,
    ));
  }
}

abstract class $LoadDirectoryCopyWith<$Res>
    implements $FilesTabViewEventCopyWith<$Res> {
  factory $LoadDirectoryCopyWith(
          LoadDirectory value, $Res Function(LoadDirectory) then) =
      _$LoadDirectoryCopyWithImpl<$Res>;
  @override
  $Res call({Directory directory});
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
    Object directory = freezed,
  }) {
    return _then(LoadDirectory(
      directory == freezed ? _value.directory : directory as Directory,
    ));
  }
}

class _$LoadDirectory implements LoadDirectory {
  const _$LoadDirectory(this.directory) : assert(directory != null);

  @override
  final Directory directory;

  @override
  String toString() {
    return 'FilesTabViewEvent.loadDirectory(directory: $directory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadDirectory &&
            (identical(other.directory, directory) ||
                const DeepCollectionEquality()
                    .equals(other.directory, directory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(directory);

  @override
  $LoadDirectoryCopyWith<LoadDirectory> get copyWith =>
      _$LoadDirectoryCopyWithImpl<LoadDirectory>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDirectory(Directory directory),
  }) {
    assert(loadDirectory != null);
    return loadDirectory(directory);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDirectory(Directory directory),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDirectory != null) {
      return loadDirectory(directory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDirectory(LoadDirectory value),
  }) {
    assert(loadDirectory != null);
    return loadDirectory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDirectory(LoadDirectory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDirectory != null) {
      return loadDirectory(this);
    }
    return orElse();
  }
}

abstract class LoadDirectory implements FilesTabViewEvent {
  const factory LoadDirectory(Directory directory) = _$LoadDirectory;

  @override
  Directory get directory;
  @override
  $LoadDirectoryCopyWith<LoadDirectory> get copyWith;
}

class _$FilesTabViewStateTearOff {
  const _$FilesTabViewStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsLoading isLoading() {
    return const _IsLoading();
  }

// ignore: unused_element
  _HasLoaded hasLoaded(
      {@required List<FileSystemEntity> folders,
      @required List<FileSystemEntity> files}) {
    return _HasLoaded(
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
    @required Result isLoading(),
    @required
        Result hasLoaded(
            List<FileSystemEntity> folders, List<FileSystemEntity> files),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<FileSystemEntity> folders, List<FileSystemEntity> files),
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
    @required Result isLoading(),
    @required
        Result hasLoaded(
            List<FileSystemEntity> folders, List<FileSystemEntity> files),
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
    Result isLoading(),
    Result hasLoaded(
        List<FileSystemEntity> folders, List<FileSystemEntity> files),
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
}

class __$IsLoadingCopyWithImpl<$Res>
    extends _$FilesTabViewStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'FilesTabViewState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required
        Result hasLoaded(
            List<FileSystemEntity> folders, List<FileSystemEntity> files),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return isLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<FileSystemEntity> folders, List<FileSystemEntity> files),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading();
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
  const factory _IsLoading() = _$_IsLoading;
}

abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call({List<FileSystemEntity> folders, List<FileSystemEntity> files});
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
    Object folders = freezed,
    Object files = freezed,
  }) {
    return _then(_HasLoaded(
      folders: folders == freezed
          ? _value.folders
          : folders as List<FileSystemEntity>,
      files: files == freezed ? _value.files : files as List<FileSystemEntity>,
    ));
  }
}

class _$_HasLoaded implements _HasLoaded {
  const _$_HasLoaded({@required this.folders, @required this.files})
      : assert(folders != null),
        assert(files != null);

  @override
  final List<FileSystemEntity> folders;
  @override
  final List<FileSystemEntity> files;

  @override
  String toString() {
    return 'FilesTabViewState.hasLoaded(folders: $folders, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLoaded &&
            (identical(other.folders, folders) ||
                const DeepCollectionEquality()
                    .equals(other.folders, folders)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(folders) ^
      const DeepCollectionEquality().hash(files);

  @override
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      __$HasLoadedCopyWithImpl<_HasLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required
        Result hasLoaded(
            List<FileSystemEntity> folders, List<FileSystemEntity> files),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    return hasLoaded(folders, files);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<FileSystemEntity> folders, List<FileSystemEntity> files),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(folders, files);
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
      {@required List<FileSystemEntity> folders,
      @required List<FileSystemEntity> files}) = _$_HasLoaded;

  List<FileSystemEntity> get folders;
  List<FileSystemEntity> get files;
  _$HasLoadedCopyWith<_HasLoaded> get copyWith;
}
