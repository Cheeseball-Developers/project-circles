// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'media_tab_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MediaTabViewEventTearOff {
  const _$MediaTabViewEventTearOff();

  LoadAlbums loadAlbums() {
    return const LoadAlbums();
  }

  LoadMedia loadMedia({required AssetPathEntity album}) {
    return LoadMedia(
      album: album,
    );
  }

  ToggleSelection toggleSelection({required MediaInfo mediaInfo}) {
    return ToggleSelection(
      mediaInfo: mediaInfo,
    );
  }

  DeselectAll deselectAll() {
    return const DeselectAll();
  }
}

/// @nodoc
const $MediaTabViewEvent = _$MediaTabViewEventTearOff();

/// @nodoc
mixin _$MediaTabViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAlbums,
    required TResult Function(AssetPathEntity album) loadMedia,
    required TResult Function(MediaInfo mediaInfo) toggleSelection,
    required TResult Function() deselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAlbums,
    TResult Function(AssetPathEntity album)? loadMedia,
    TResult Function(MediaInfo mediaInfo)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlbums value) loadAlbums,
    required TResult Function(LoadMedia value) loadMedia,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlbums value)? loadAlbums,
    TResult Function(LoadMedia value)? loadMedia,
    TResult Function(ToggleSelection value)? toggleSelection,
    TResult Function(DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaTabViewEventCopyWith<$Res> {
  factory $MediaTabViewEventCopyWith(
          MediaTabViewEvent value, $Res Function(MediaTabViewEvent) then) =
      _$MediaTabViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MediaTabViewEventCopyWithImpl<$Res>
    implements $MediaTabViewEventCopyWith<$Res> {
  _$MediaTabViewEventCopyWithImpl(this._value, this._then);

  final MediaTabViewEvent _value;
  // ignore: unused_field
  final $Res Function(MediaTabViewEvent) _then;
}

/// @nodoc
abstract class $LoadAlbumsCopyWith<$Res> {
  factory $LoadAlbumsCopyWith(
          LoadAlbums value, $Res Function(LoadAlbums) then) =
      _$LoadAlbumsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadAlbumsCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
    implements $LoadAlbumsCopyWith<$Res> {
  _$LoadAlbumsCopyWithImpl(LoadAlbums _value, $Res Function(LoadAlbums) _then)
      : super(_value, (v) => _then(v as LoadAlbums));

  @override
  LoadAlbums get _value => super._value as LoadAlbums;
}

/// @nodoc
class _$LoadAlbums implements LoadAlbums {
  const _$LoadAlbums();

  @override
  String toString() {
    return 'MediaTabViewEvent.loadAlbums()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadAlbums);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAlbums,
    required TResult Function(AssetPathEntity album) loadMedia,
    required TResult Function(MediaInfo mediaInfo) toggleSelection,
    required TResult Function() deselectAll,
  }) {
    return loadAlbums();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAlbums,
    TResult Function(AssetPathEntity album)? loadMedia,
    TResult Function(MediaInfo mediaInfo)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (loadAlbums != null) {
      return loadAlbums();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlbums value) loadAlbums,
    required TResult Function(LoadMedia value) loadMedia,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) {
    return loadAlbums(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlbums value)? loadAlbums,
    TResult Function(LoadMedia value)? loadMedia,
    TResult Function(ToggleSelection value)? toggleSelection,
    TResult Function(DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (loadAlbums != null) {
      return loadAlbums(this);
    }
    return orElse();
  }
}

abstract class LoadAlbums implements MediaTabViewEvent {
  const factory LoadAlbums() = _$LoadAlbums;
}

/// @nodoc
abstract class $LoadMediaCopyWith<$Res> {
  factory $LoadMediaCopyWith(LoadMedia value, $Res Function(LoadMedia) then) =
      _$LoadMediaCopyWithImpl<$Res>;
  $Res call({AssetPathEntity album});
}

/// @nodoc
class _$LoadMediaCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
    implements $LoadMediaCopyWith<$Res> {
  _$LoadMediaCopyWithImpl(LoadMedia _value, $Res Function(LoadMedia) _then)
      : super(_value, (v) => _then(v as LoadMedia));

  @override
  LoadMedia get _value => super._value as LoadMedia;

  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(LoadMedia(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AssetPathEntity,
    ));
  }
}

/// @nodoc
class _$LoadMedia implements LoadMedia {
  const _$LoadMedia({required this.album});

  @override
  final AssetPathEntity album;

  @override
  String toString() {
    return 'MediaTabViewEvent.loadMedia(album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadMedia &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(album);

  @JsonKey(ignore: true)
  @override
  $LoadMediaCopyWith<LoadMedia> get copyWith =>
      _$LoadMediaCopyWithImpl<LoadMedia>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAlbums,
    required TResult Function(AssetPathEntity album) loadMedia,
    required TResult Function(MediaInfo mediaInfo) toggleSelection,
    required TResult Function() deselectAll,
  }) {
    return loadMedia(album);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAlbums,
    TResult Function(AssetPathEntity album)? loadMedia,
    TResult Function(MediaInfo mediaInfo)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (loadMedia != null) {
      return loadMedia(album);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlbums value) loadAlbums,
    required TResult Function(LoadMedia value) loadMedia,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) {
    return loadMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlbums value)? loadAlbums,
    TResult Function(LoadMedia value)? loadMedia,
    TResult Function(ToggleSelection value)? toggleSelection,
    TResult Function(DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (loadMedia != null) {
      return loadMedia(this);
    }
    return orElse();
  }
}

abstract class LoadMedia implements MediaTabViewEvent {
  const factory LoadMedia({required AssetPathEntity album}) = _$LoadMedia;

  AssetPathEntity get album => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadMediaCopyWith<LoadMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleSelectionCopyWith<$Res> {
  factory $ToggleSelectionCopyWith(
          ToggleSelection value, $Res Function(ToggleSelection) then) =
      _$ToggleSelectionCopyWithImpl<$Res>;
  $Res call({MediaInfo mediaInfo});

  $MediaInfoCopyWith<$Res> get mediaInfo;
}

/// @nodoc
class _$ToggleSelectionCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
    implements $ToggleSelectionCopyWith<$Res> {
  _$ToggleSelectionCopyWithImpl(
      ToggleSelection _value, $Res Function(ToggleSelection) _then)
      : super(_value, (v) => _then(v as ToggleSelection));

  @override
  ToggleSelection get _value => super._value as ToggleSelection;

  @override
  $Res call({
    Object? mediaInfo = freezed,
  }) {
    return _then(ToggleSelection(
      mediaInfo: mediaInfo == freezed
          ? _value.mediaInfo
          : mediaInfo // ignore: cast_nullable_to_non_nullable
              as MediaInfo,
    ));
  }

  @override
  $MediaInfoCopyWith<$Res> get mediaInfo {
    return $MediaInfoCopyWith<$Res>(_value.mediaInfo, (value) {
      return _then(_value.copyWith(mediaInfo: value));
    });
  }
}

/// @nodoc
class _$ToggleSelection implements ToggleSelection {
  const _$ToggleSelection({required this.mediaInfo});

  @override
  final MediaInfo mediaInfo;

  @override
  String toString() {
    return 'MediaTabViewEvent.toggleSelection(mediaInfo: $mediaInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleSelection &&
            (identical(other.mediaInfo, mediaInfo) ||
                const DeepCollectionEquality()
                    .equals(other.mediaInfo, mediaInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mediaInfo);

  @JsonKey(ignore: true)
  @override
  $ToggleSelectionCopyWith<ToggleSelection> get copyWith =>
      _$ToggleSelectionCopyWithImpl<ToggleSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAlbums,
    required TResult Function(AssetPathEntity album) loadMedia,
    required TResult Function(MediaInfo mediaInfo) toggleSelection,
    required TResult Function() deselectAll,
  }) {
    return toggleSelection(mediaInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAlbums,
    TResult Function(AssetPathEntity album)? loadMedia,
    TResult Function(MediaInfo mediaInfo)? toggleSelection,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(mediaInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlbums value) loadAlbums,
    required TResult Function(LoadMedia value) loadMedia,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) {
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlbums value)? loadAlbums,
    TResult Function(LoadMedia value)? loadMedia,
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

abstract class ToggleSelection implements MediaTabViewEvent {
  const factory ToggleSelection({required MediaInfo mediaInfo}) =
      _$ToggleSelection;

  MediaInfo get mediaInfo => throw _privateConstructorUsedError;
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
    extends _$MediaTabViewEventCopyWithImpl<$Res>
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
    return 'MediaTabViewEvent.deselectAll()';
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
    required TResult Function() loadAlbums,
    required TResult Function(AssetPathEntity album) loadMedia,
    required TResult Function(MediaInfo mediaInfo) toggleSelection,
    required TResult Function() deselectAll,
  }) {
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAlbums,
    TResult Function(AssetPathEntity album)? loadMedia,
    TResult Function(MediaInfo mediaInfo)? toggleSelection,
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
    required TResult Function(LoadAlbums value) loadAlbums,
    required TResult Function(LoadMedia value) loadMedia,
    required TResult Function(ToggleSelection value) toggleSelection,
    required TResult Function(DeselectAll value) deselectAll,
  }) {
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlbums value)? loadAlbums,
    TResult Function(LoadMedia value)? loadMedia,
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

abstract class DeselectAll implements MediaTabViewEvent {
  const factory DeselectAll() = _$DeselectAll;
}

/// @nodoc
class _$MediaTabViewStateTearOff {
  const _$MediaTabViewStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _HasLoadedAlbums hasLoadedAlbums({required List<AssetPathEntity> albums}) {
    return _HasLoadedAlbums(
      albums: albums,
    );
  }

  _HasLoaded hasLoadedMedia(
      {required AssetPathEntity album,
      required Map<MediaInfo, bool> media,
      required int previousPage,
      required int currentPage}) {
    return _HasLoaded(
      album: album,
      media: media,
      previousPage: previousPage,
      currentPage: currentPage,
    );
  }

  _HasFailed hasFailed(AppsLoadFailure failure) {
    return _HasFailed(
      failure,
    );
  }
}

/// @nodoc
const $MediaTabViewState = _$MediaTabViewStateTearOff();

/// @nodoc
mixin _$MediaTabViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<AssetPathEntity> albums) hasLoadedAlbums,
    required TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)
        hasLoadedMedia,
    required TResult Function(AppsLoadFailure failure) hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<AssetPathEntity> albums)? hasLoadedAlbums,
    TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)?
        hasLoadedMedia,
    TResult Function(AppsLoadFailure failure)? hasFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoadedAlbums value) hasLoadedAlbums,
    required TResult Function(_HasLoaded value) hasLoadedMedia,
    required TResult Function(_HasFailed value) hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoadedAlbums value)? hasLoadedAlbums,
    TResult Function(_HasLoaded value)? hasLoadedMedia,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaTabViewStateCopyWith<$Res> {
  factory $MediaTabViewStateCopyWith(
          MediaTabViewState value, $Res Function(MediaTabViewState) then) =
      _$MediaTabViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MediaTabViewStateCopyWithImpl<$Res>
    implements $MediaTabViewStateCopyWith<$Res> {
  _$MediaTabViewStateCopyWithImpl(this._value, this._then);

  final MediaTabViewState _value;
  // ignore: unused_field
  final $Res Function(MediaTabViewState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MediaTabViewStateCopyWithImpl<$Res>
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
    return 'MediaTabViewState.initial()';
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
    required TResult Function() isLoading,
    required TResult Function(List<AssetPathEntity> albums) hasLoadedAlbums,
    required TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)
        hasLoadedMedia,
    required TResult Function(AppsLoadFailure failure) hasFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<AssetPathEntity> albums)? hasLoadedAlbums,
    TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)?
        hasLoadedMedia,
    TResult Function(AppsLoadFailure failure)? hasFailed,
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
    required TResult Function(_HasLoadedAlbums value) hasLoadedAlbums,
    required TResult Function(_HasLoaded value) hasLoadedMedia,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoadedAlbums value)? hasLoadedAlbums,
    TResult Function(_HasLoaded value)? hasLoadedMedia,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MediaTabViewState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res>
    extends _$MediaTabViewStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

/// @nodoc
class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'MediaTabViewState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<AssetPathEntity> albums) hasLoadedAlbums,
    required TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)
        hasLoadedMedia,
    required TResult Function(AppsLoadFailure failure) hasFailed,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<AssetPathEntity> albums)? hasLoadedAlbums,
    TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)?
        hasLoadedMedia,
    TResult Function(AppsLoadFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoadedAlbums value) hasLoadedAlbums,
    required TResult Function(_HasLoaded value) hasLoadedMedia,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoadedAlbums value)? hasLoadedAlbums,
    TResult Function(_HasLoaded value)? hasLoadedMedia,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements MediaTabViewState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$HasLoadedAlbumsCopyWith<$Res> {
  factory _$HasLoadedAlbumsCopyWith(
          _HasLoadedAlbums value, $Res Function(_HasLoadedAlbums) then) =
      __$HasLoadedAlbumsCopyWithImpl<$Res>;
  $Res call({List<AssetPathEntity> albums});
}

/// @nodoc
class __$HasLoadedAlbumsCopyWithImpl<$Res>
    extends _$MediaTabViewStateCopyWithImpl<$Res>
    implements _$HasLoadedAlbumsCopyWith<$Res> {
  __$HasLoadedAlbumsCopyWithImpl(
      _HasLoadedAlbums _value, $Res Function(_HasLoadedAlbums) _then)
      : super(_value, (v) => _then(v as _HasLoadedAlbums));

  @override
  _HasLoadedAlbums get _value => super._value as _HasLoadedAlbums;

  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_HasLoadedAlbums(
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<AssetPathEntity>,
    ));
  }
}

/// @nodoc
class _$_HasLoadedAlbums implements _HasLoadedAlbums {
  const _$_HasLoadedAlbums({required this.albums});

  @override
  final List<AssetPathEntity> albums;

  @override
  String toString() {
    return 'MediaTabViewState.hasLoadedAlbums(albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLoadedAlbums &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(albums);

  @JsonKey(ignore: true)
  @override
  _$HasLoadedAlbumsCopyWith<_HasLoadedAlbums> get copyWith =>
      __$HasLoadedAlbumsCopyWithImpl<_HasLoadedAlbums>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<AssetPathEntity> albums) hasLoadedAlbums,
    required TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)
        hasLoadedMedia,
    required TResult Function(AppsLoadFailure failure) hasFailed,
  }) {
    return hasLoadedAlbums(albums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<AssetPathEntity> albums)? hasLoadedAlbums,
    TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)?
        hasLoadedMedia,
    TResult Function(AppsLoadFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasLoadedAlbums != null) {
      return hasLoadedAlbums(albums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoadedAlbums value) hasLoadedAlbums,
    required TResult Function(_HasLoaded value) hasLoadedMedia,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return hasLoadedAlbums(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoadedAlbums value)? hasLoadedAlbums,
    TResult Function(_HasLoaded value)? hasLoadedMedia,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasLoadedAlbums != null) {
      return hasLoadedAlbums(this);
    }
    return orElse();
  }
}

abstract class _HasLoadedAlbums implements MediaTabViewState {
  const factory _HasLoadedAlbums({required List<AssetPathEntity> albums}) =
      _$_HasLoadedAlbums;

  List<AssetPathEntity> get albums => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasLoadedAlbumsCopyWith<_HasLoadedAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call(
      {AssetPathEntity album,
      Map<MediaInfo, bool> media,
      int previousPage,
      int currentPage});
}

/// @nodoc
class __$HasLoadedCopyWithImpl<$Res>
    extends _$MediaTabViewStateCopyWithImpl<$Res>
    implements _$HasLoadedCopyWith<$Res> {
  __$HasLoadedCopyWithImpl(_HasLoaded _value, $Res Function(_HasLoaded) _then)
      : super(_value, (v) => _then(v as _HasLoaded));

  @override
  _HasLoaded get _value => super._value as _HasLoaded;

  @override
  $Res call({
    Object? album = freezed,
    Object? media = freezed,
    Object? previousPage = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_HasLoaded(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AssetPathEntity,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Map<MediaInfo, bool>,
      previousPage: previousPage == freezed
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_HasLoaded implements _HasLoaded {
  const _$_HasLoaded(
      {required this.album,
      required this.media,
      required this.previousPage,
      required this.currentPage});

  @override
  final AssetPathEntity album;
  @override
  final Map<MediaInfo, bool> media;
  @override
  final int previousPage;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'MediaTabViewState.hasLoadedMedia(album: $album, media: $media, previousPage: $previousPage, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLoaded &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)) &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
            (identical(other.previousPage, previousPage) ||
                const DeepCollectionEquality()
                    .equals(other.previousPage, previousPage)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(album) ^
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(previousPage) ^
      const DeepCollectionEquality().hash(currentPage);

  @JsonKey(ignore: true)
  @override
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      __$HasLoadedCopyWithImpl<_HasLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<AssetPathEntity> albums) hasLoadedAlbums,
    required TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)
        hasLoadedMedia,
    required TResult Function(AppsLoadFailure failure) hasFailed,
  }) {
    return hasLoadedMedia(album, media, previousPage, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<AssetPathEntity> albums)? hasLoadedAlbums,
    TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)?
        hasLoadedMedia,
    TResult Function(AppsLoadFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasLoadedMedia != null) {
      return hasLoadedMedia(album, media, previousPage, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoadedAlbums value) hasLoadedAlbums,
    required TResult Function(_HasLoaded value) hasLoadedMedia,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return hasLoadedMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoadedAlbums value)? hasLoadedAlbums,
    TResult Function(_HasLoaded value)? hasLoadedMedia,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasLoadedMedia != null) {
      return hasLoadedMedia(this);
    }
    return orElse();
  }
}

abstract class _HasLoaded implements MediaTabViewState {
  const factory _HasLoaded(
      {required AssetPathEntity album,
      required Map<MediaInfo, bool> media,
      required int previousPage,
      required int currentPage}) = _$_HasLoaded;

  AssetPathEntity get album => throw _privateConstructorUsedError;
  Map<MediaInfo, bool> get media => throw _privateConstructorUsedError;
  int get previousPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasFailedCopyWith<$Res> {
  factory _$HasFailedCopyWith(
          _HasFailed value, $Res Function(_HasFailed) then) =
      __$HasFailedCopyWithImpl<$Res>;
  $Res call({AppsLoadFailure failure});

  $AppsLoadFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$HasFailedCopyWithImpl<$Res>
    extends _$MediaTabViewStateCopyWithImpl<$Res>
    implements _$HasFailedCopyWith<$Res> {
  __$HasFailedCopyWithImpl(_HasFailed _value, $Res Function(_HasFailed) _then)
      : super(_value, (v) => _then(v as _HasFailed));

  @override
  _HasFailed get _value => super._value as _HasFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_HasFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppsLoadFailure,
    ));
  }

  @override
  $AppsLoadFailureCopyWith<$Res> get failure {
    return $AppsLoadFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_HasFailed implements _HasFailed {
  const _$_HasFailed(this.failure);

  @override
  final AppsLoadFailure failure;

  @override
  String toString() {
    return 'MediaTabViewState.hasFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$HasFailedCopyWith<_HasFailed> get copyWith =>
      __$HasFailedCopyWithImpl<_HasFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<AssetPathEntity> albums) hasLoadedAlbums,
    required TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)
        hasLoadedMedia,
    required TResult Function(AppsLoadFailure failure) hasFailed,
  }) {
    return hasFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<AssetPathEntity> albums)? hasLoadedAlbums,
    TResult Function(AssetPathEntity album, Map<MediaInfo, bool> media,
            int previousPage, int currentPage)?
        hasLoadedMedia,
    TResult Function(AppsLoadFailure failure)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasFailed != null) {
      return hasFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_HasLoadedAlbums value) hasLoadedAlbums,
    required TResult Function(_HasLoaded value) hasLoadedMedia,
    required TResult Function(_HasFailed value) hasFailed,
  }) {
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_HasLoadedAlbums value)? hasLoadedAlbums,
    TResult Function(_HasLoaded value)? hasLoadedMedia,
    TResult Function(_HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasFailed != null) {
      return hasFailed(this);
    }
    return orElse();
  }
}

abstract class _HasFailed implements MediaTabViewState {
  const factory _HasFailed(AppsLoadFailure failure) = _$_HasFailed;

  AppsLoadFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasFailedCopyWith<_HasFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
