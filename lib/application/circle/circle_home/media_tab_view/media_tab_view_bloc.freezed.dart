// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'media_tab_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MediaTabViewEventTearOff {
  const _$MediaTabViewEventTearOff();

// ignore: unused_element
  LoadAlbums loadAlbums() {
    return const LoadAlbums();
  }

// ignore: unused_element
  LoadMedia loadMedia({@required AssetPathEntity album}) {
    return LoadMedia(
      album: album,
    );
  }

// ignore: unused_element
  ToggleSelection toggleSelection(int index) {
    return ToggleSelection(
      index,
    );
  }

// ignore: unused_element
  DeselectAll deselectAll() {
    return const DeselectAll();
  }
}

// ignore: unused_element
const $MediaTabViewEvent = _$MediaTabViewEventTearOff();

mixin _$MediaTabViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadAlbums(),
    @required Result loadMedia(AssetPathEntity album),
    @required Result toggleSelection(int index),
    @required Result deselectAll(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadAlbums(),
    Result loadMedia(AssetPathEntity album),
    Result toggleSelection(int index),
    Result deselectAll(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadAlbums(LoadAlbums value),
    @required Result loadMedia(LoadMedia value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadAlbums(LoadAlbums value),
    Result loadMedia(LoadMedia value),
    Result toggleSelection(ToggleSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  });
}

abstract class $MediaTabViewEventCopyWith<$Res> {
  factory $MediaTabViewEventCopyWith(
          MediaTabViewEvent value, $Res Function(MediaTabViewEvent) then) =
      _$MediaTabViewEventCopyWithImpl<$Res>;
}

class _$MediaTabViewEventCopyWithImpl<$Res>
    implements $MediaTabViewEventCopyWith<$Res> {
  _$MediaTabViewEventCopyWithImpl(this._value, this._then);

  final MediaTabViewEvent _value;
  // ignore: unused_field
  final $Res Function(MediaTabViewEvent) _then;
}

abstract class $LoadAlbumsCopyWith<$Res> {
  factory $LoadAlbumsCopyWith(
          LoadAlbums value, $Res Function(LoadAlbums) then) =
      _$LoadAlbumsCopyWithImpl<$Res>;
}

class _$LoadAlbumsCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
    implements $LoadAlbumsCopyWith<$Res> {
  _$LoadAlbumsCopyWithImpl(LoadAlbums _value, $Res Function(LoadAlbums) _then)
      : super(_value, (v) => _then(v as LoadAlbums));

  @override
  LoadAlbums get _value => super._value as LoadAlbums;
}

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
  Result when<Result extends Object>({
    @required Result loadAlbums(),
    @required Result loadMedia(AssetPathEntity album),
    @required Result toggleSelection(int index),
    @required Result deselectAll(),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return loadAlbums();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadAlbums(),
    Result loadMedia(AssetPathEntity album),
    Result toggleSelection(int index),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAlbums != null) {
      return loadAlbums();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadAlbums(LoadAlbums value),
    @required Result loadMedia(LoadMedia value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return loadAlbums(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadAlbums(LoadAlbums value),
    Result loadMedia(LoadMedia value),
    Result toggleSelection(ToggleSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadAlbums != null) {
      return loadAlbums(this);
    }
    return orElse();
  }
}

abstract class LoadAlbums implements MediaTabViewEvent {
  const factory LoadAlbums() = _$LoadAlbums;
}

abstract class $LoadMediaCopyWith<$Res> {
  factory $LoadMediaCopyWith(LoadMedia value, $Res Function(LoadMedia) then) =
      _$LoadMediaCopyWithImpl<$Res>;
  $Res call({AssetPathEntity album});
}

class _$LoadMediaCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
    implements $LoadMediaCopyWith<$Res> {
  _$LoadMediaCopyWithImpl(LoadMedia _value, $Res Function(LoadMedia) _then)
      : super(_value, (v) => _then(v as LoadMedia));

  @override
  LoadMedia get _value => super._value as LoadMedia;

  @override
  $Res call({
    Object album = freezed,
  }) {
    return _then(LoadMedia(
      album: album == freezed ? _value.album : album as AssetPathEntity,
    ));
  }
}

class _$LoadMedia implements LoadMedia {
  const _$LoadMedia({@required this.album}) : assert(album != null);

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

  @override
  $LoadMediaCopyWith<LoadMedia> get copyWith =>
      _$LoadMediaCopyWithImpl<LoadMedia>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadAlbums(),
    @required Result loadMedia(AssetPathEntity album),
    @required Result toggleSelection(int index),
    @required Result deselectAll(),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return loadMedia(album);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadAlbums(),
    Result loadMedia(AssetPathEntity album),
    Result toggleSelection(int index),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMedia != null) {
      return loadMedia(album);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadAlbums(LoadAlbums value),
    @required Result loadMedia(LoadMedia value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return loadMedia(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadAlbums(LoadAlbums value),
    Result loadMedia(LoadMedia value),
    Result toggleSelection(ToggleSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMedia != null) {
      return loadMedia(this);
    }
    return orElse();
  }
}

abstract class LoadMedia implements MediaTabViewEvent {
  const factory LoadMedia({@required AssetPathEntity album}) = _$LoadMedia;

  AssetPathEntity get album;
  $LoadMediaCopyWith<LoadMedia> get copyWith;
}

abstract class $ToggleSelectionCopyWith<$Res> {
  factory $ToggleSelectionCopyWith(
          ToggleSelection value, $Res Function(ToggleSelection) then) =
      _$ToggleSelectionCopyWithImpl<$Res>;
  $Res call({int index});
}

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
    Object index = freezed,
  }) {
    return _then(ToggleSelection(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$ToggleSelection implements ToggleSelection {
  const _$ToggleSelection(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'MediaTabViewEvent.toggleSelection(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleSelection &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $ToggleSelectionCopyWith<ToggleSelection> get copyWith =>
      _$ToggleSelectionCopyWithImpl<ToggleSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadAlbums(),
    @required Result loadMedia(AssetPathEntity album),
    @required Result toggleSelection(int index),
    @required Result deselectAll(),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return toggleSelection(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadAlbums(),
    Result loadMedia(AssetPathEntity album),
    Result toggleSelection(int index),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleSelection != null) {
      return toggleSelection(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadAlbums(LoadAlbums value),
    @required Result loadMedia(LoadMedia value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadAlbums(LoadAlbums value),
    Result loadMedia(LoadMedia value),
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

abstract class ToggleSelection implements MediaTabViewEvent {
  const factory ToggleSelection(int index) = _$ToggleSelection;

  int get index;
  $ToggleSelectionCopyWith<ToggleSelection> get copyWith;
}

abstract class $DeselectAllCopyWith<$Res> {
  factory $DeselectAllCopyWith(
          DeselectAll value, $Res Function(DeselectAll) then) =
      _$DeselectAllCopyWithImpl<$Res>;
}

class _$DeselectAllCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result loadAlbums(),
    @required Result loadMedia(AssetPathEntity album),
    @required Result toggleSelection(int index),
    @required Result deselectAll(),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadAlbums(),
    Result loadMedia(AssetPathEntity album),
    Result toggleSelection(int index),
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
    @required Result loadAlbums(LoadAlbums value),
    @required Result loadMedia(LoadMedia value),
    @required Result toggleSelection(ToggleSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(loadAlbums != null);
    assert(loadMedia != null);
    assert(toggleSelection != null);
    assert(deselectAll != null);
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadAlbums(LoadAlbums value),
    Result loadMedia(LoadMedia value),
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

abstract class DeselectAll implements MediaTabViewEvent {
  const factory DeselectAll() = _$DeselectAll;
}

class _$MediaTabViewStateTearOff {
  const _$MediaTabViewStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsLoading isLoading() {
    return const _IsLoading();
  }

// ignore: unused_element
  _HasLoadedAlbums hasLoadedAlbums({@required List<AssetPathEntity> albums}) {
    return _HasLoadedAlbums(
      albums: albums,
    );
  }

// ignore: unused_element
  _HasLoaded hasLoadedMedia(
      {@required AssetPathEntity album,
      @required List<MediaObject> media,
      @required int previousPage,
      @required int currentPage,
      @required bool tapToSelect,
      @required int selectedMedia}) {
    return _HasLoaded(
      album: album,
      media: media,
      previousPage: previousPage,
      currentPage: currentPage,
      tapToSelect: tapToSelect,
      selectedMedia: selectedMedia,
    );
  }

// ignore: unused_element
  _HasFailed hasFailed(AppsLoadFailure failure) {
    return _HasFailed(
      failure,
    );
  }
}

// ignore: unused_element
const $MediaTabViewState = _$MediaTabViewStateTearOff();

mixin _$MediaTabViewState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoadedAlbums(List<AssetPathEntity> albums),
    @required
        Result hasLoadedMedia(
            AssetPathEntity album,
            List<MediaObject> media,
            int previousPage,
            int currentPage,
            bool tapToSelect,
            int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoadedAlbums(List<AssetPathEntity> albums),
    Result hasLoadedMedia(AssetPathEntity album, List<MediaObject> media,
        int previousPage, int currentPage, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoadedAlbums(_HasLoadedAlbums value),
    @required Result hasLoadedMedia(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoadedAlbums(_HasLoadedAlbums value),
    Result hasLoadedMedia(_HasLoaded value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
  });
}

abstract class $MediaTabViewStateCopyWith<$Res> {
  factory $MediaTabViewStateCopyWith(
          MediaTabViewState value, $Res Function(MediaTabViewState) then) =
      _$MediaTabViewStateCopyWithImpl<$Res>;
}

class _$MediaTabViewStateCopyWithImpl<$Res>
    implements $MediaTabViewStateCopyWith<$Res> {
  _$MediaTabViewStateCopyWithImpl(this._value, this._then);

  final MediaTabViewState _value;
  // ignore: unused_field
  final $Res Function(MediaTabViewState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$MediaTabViewStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoadedAlbums(List<AssetPathEntity> albums),
    @required
        Result hasLoadedMedia(
            AssetPathEntity album,
            List<MediaObject> media,
            int previousPage,
            int currentPage,
            bool tapToSelect,
            int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoadedAlbums(List<AssetPathEntity> albums),
    Result hasLoadedMedia(AssetPathEntity album, List<MediaObject> media,
        int previousPage, int currentPage, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
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
    @required Result hasLoadedAlbums(_HasLoadedAlbums value),
    @required Result hasLoadedMedia(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoadedAlbums(_HasLoadedAlbums value),
    Result hasLoadedMedia(_HasLoaded value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MediaTabViewState {
  const factory _Initial() = _$_Initial;
}

abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

class __$IsLoadingCopyWithImpl<$Res>
    extends _$MediaTabViewStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoadedAlbums(List<AssetPathEntity> albums),
    @required
        Result hasLoadedMedia(
            AssetPathEntity album,
            List<MediaObject> media,
            int previousPage,
            int currentPage,
            bool tapToSelect,
            int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return isLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoadedAlbums(List<AssetPathEntity> albums),
    Result hasLoadedMedia(AssetPathEntity album, List<MediaObject> media,
        int previousPage, int currentPage, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
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
    @required Result hasLoadedAlbums(_HasLoadedAlbums value),
    @required Result hasLoadedMedia(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoadedAlbums(_HasLoadedAlbums value),
    Result hasLoadedMedia(_HasLoaded value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements MediaTabViewState {
  const factory _IsLoading() = _$_IsLoading;
}

abstract class _$HasLoadedAlbumsCopyWith<$Res> {
  factory _$HasLoadedAlbumsCopyWith(
          _HasLoadedAlbums value, $Res Function(_HasLoadedAlbums) then) =
      __$HasLoadedAlbumsCopyWithImpl<$Res>;
  $Res call({List<AssetPathEntity> albums});
}

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
    Object albums = freezed,
  }) {
    return _then(_HasLoadedAlbums(
      albums:
          albums == freezed ? _value.albums : albums as List<AssetPathEntity>,
    ));
  }
}

class _$_HasLoadedAlbums implements _HasLoadedAlbums {
  const _$_HasLoadedAlbums({@required this.albums}) : assert(albums != null);

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

  @override
  _$HasLoadedAlbumsCopyWith<_HasLoadedAlbums> get copyWith =>
      __$HasLoadedAlbumsCopyWithImpl<_HasLoadedAlbums>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoadedAlbums(List<AssetPathEntity> albums),
    @required
        Result hasLoadedMedia(
            AssetPathEntity album,
            List<MediaObject> media,
            int previousPage,
            int currentPage,
            bool tapToSelect,
            int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return hasLoadedAlbums(albums);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoadedAlbums(List<AssetPathEntity> albums),
    Result hasLoadedMedia(AssetPathEntity album, List<MediaObject> media,
        int previousPage, int currentPage, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoadedAlbums != null) {
      return hasLoadedAlbums(albums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoadedAlbums(_HasLoadedAlbums value),
    @required Result hasLoadedMedia(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return hasLoadedAlbums(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoadedAlbums(_HasLoadedAlbums value),
    Result hasLoadedMedia(_HasLoaded value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoadedAlbums != null) {
      return hasLoadedAlbums(this);
    }
    return orElse();
  }
}

abstract class _HasLoadedAlbums implements MediaTabViewState {
  const factory _HasLoadedAlbums({@required List<AssetPathEntity> albums}) =
      _$_HasLoadedAlbums;

  List<AssetPathEntity> get albums;
  _$HasLoadedAlbumsCopyWith<_HasLoadedAlbums> get copyWith;
}

abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call(
      {AssetPathEntity album,
      List<MediaObject> media,
      int previousPage,
      int currentPage,
      bool tapToSelect,
      int selectedMedia});
}

class __$HasLoadedCopyWithImpl<$Res>
    extends _$MediaTabViewStateCopyWithImpl<$Res>
    implements _$HasLoadedCopyWith<$Res> {
  __$HasLoadedCopyWithImpl(_HasLoaded _value, $Res Function(_HasLoaded) _then)
      : super(_value, (v) => _then(v as _HasLoaded));

  @override
  _HasLoaded get _value => super._value as _HasLoaded;

  @override
  $Res call({
    Object album = freezed,
    Object media = freezed,
    Object previousPage = freezed,
    Object currentPage = freezed,
    Object tapToSelect = freezed,
    Object selectedMedia = freezed,
  }) {
    return _then(_HasLoaded(
      album: album == freezed ? _value.album : album as AssetPathEntity,
      media: media == freezed ? _value.media : media as List<MediaObject>,
      previousPage:
          previousPage == freezed ? _value.previousPage : previousPage as int,
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      tapToSelect:
          tapToSelect == freezed ? _value.tapToSelect : tapToSelect as bool,
      selectedMedia: selectedMedia == freezed
          ? _value.selectedMedia
          : selectedMedia as int,
    ));
  }
}

class _$_HasLoaded implements _HasLoaded {
  const _$_HasLoaded(
      {@required this.album,
      @required this.media,
      @required this.previousPage,
      @required this.currentPage,
      @required this.tapToSelect,
      @required this.selectedMedia})
      : assert(album != null),
        assert(media != null),
        assert(previousPage != null),
        assert(currentPage != null),
        assert(tapToSelect != null),
        assert(selectedMedia != null);

  @override
  final AssetPathEntity album;
  @override
  final List<MediaObject> media;
  @override
  final int previousPage;
  @override
  final int currentPage;
  @override
  final bool tapToSelect;
  @override
  final int selectedMedia;

  @override
  String toString() {
    return 'MediaTabViewState.hasLoadedMedia(album: $album, media: $media, previousPage: $previousPage, currentPage: $currentPage, tapToSelect: $tapToSelect, selectedMedia: $selectedMedia)';
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
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.tapToSelect, tapToSelect) ||
                const DeepCollectionEquality()
                    .equals(other.tapToSelect, tapToSelect)) &&
            (identical(other.selectedMedia, selectedMedia) ||
                const DeepCollectionEquality()
                    .equals(other.selectedMedia, selectedMedia)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(album) ^
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(previousPage) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(tapToSelect) ^
      const DeepCollectionEquality().hash(selectedMedia);

  @override
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      __$HasLoadedCopyWithImpl<_HasLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoadedAlbums(List<AssetPathEntity> albums),
    @required
        Result hasLoadedMedia(
            AssetPathEntity album,
            List<MediaObject> media,
            int previousPage,
            int currentPage,
            bool tapToSelect,
            int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return hasLoadedMedia(
        album, media, previousPage, currentPage, tapToSelect, selectedMedia);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoadedAlbums(List<AssetPathEntity> albums),
    Result hasLoadedMedia(AssetPathEntity album, List<MediaObject> media,
        int previousPage, int currentPage, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoadedMedia != null) {
      return hasLoadedMedia(
          album, media, previousPage, currentPage, tapToSelect, selectedMedia);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoadedAlbums(_HasLoadedAlbums value),
    @required Result hasLoadedMedia(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return hasLoadedMedia(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoadedAlbums(_HasLoadedAlbums value),
    Result hasLoadedMedia(_HasLoaded value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoadedMedia != null) {
      return hasLoadedMedia(this);
    }
    return orElse();
  }
}

abstract class _HasLoaded implements MediaTabViewState {
  const factory _HasLoaded(
      {@required AssetPathEntity album,
      @required List<MediaObject> media,
      @required int previousPage,
      @required int currentPage,
      @required bool tapToSelect,
      @required int selectedMedia}) = _$_HasLoaded;

  AssetPathEntity get album;
  List<MediaObject> get media;
  int get previousPage;
  int get currentPage;
  bool get tapToSelect;
  int get selectedMedia;
  _$HasLoadedCopyWith<_HasLoaded> get copyWith;
}

abstract class _$HasFailedCopyWith<$Res> {
  factory _$HasFailedCopyWith(
          _HasFailed value, $Res Function(_HasFailed) then) =
      __$HasFailedCopyWithImpl<$Res>;
  $Res call({AppsLoadFailure failure});

  $AppsLoadFailureCopyWith<$Res> get failure;
}

class __$HasFailedCopyWithImpl<$Res>
    extends _$MediaTabViewStateCopyWithImpl<$Res>
    implements _$HasFailedCopyWith<$Res> {
  __$HasFailedCopyWithImpl(_HasFailed _value, $Res Function(_HasFailed) _then)
      : super(_value, (v) => _then(v as _HasFailed));

  @override
  _HasFailed get _value => super._value as _HasFailed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_HasFailed(
      failure == freezed ? _value.failure : failure as AppsLoadFailure,
    ));
  }

  @override
  $AppsLoadFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AppsLoadFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_HasFailed implements _HasFailed {
  const _$_HasFailed(this.failure) : assert(failure != null);

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

  @override
  _$HasFailedCopyWith<_HasFailed> get copyWith =>
      __$HasFailedCopyWithImpl<_HasFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoadedAlbums(List<AssetPathEntity> albums),
    @required
        Result hasLoadedMedia(
            AssetPathEntity album,
            List<MediaObject> media,
            int previousPage,
            int currentPage,
            bool tapToSelect,
            int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return hasFailed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoadedAlbums(List<AssetPathEntity> albums),
    Result hasLoadedMedia(AssetPathEntity album, List<MediaObject> media,
        int previousPage, int currentPage, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasFailed != null) {
      return hasFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoadedAlbums(_HasLoadedAlbums value),
    @required Result hasLoadedMedia(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoadedAlbums != null);
    assert(hasLoadedMedia != null);
    assert(hasFailed != null);
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoadedAlbums(_HasLoadedAlbums value),
    Result hasLoadedMedia(_HasLoaded value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasFailed != null) {
      return hasFailed(this);
    }
    return orElse();
  }
}

abstract class _HasFailed implements MediaTabViewState {
  const factory _HasFailed(AppsLoadFailure failure) = _$_HasFailed;

  AppsLoadFailure get failure;
  _$HasFailedCopyWith<_HasFailed> get copyWith;
}
