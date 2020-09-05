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
  LoadMedia loadMedia() {
    return const LoadMedia();
  }

// ignore: unused_element
  ToggleTapToSelect toggleTapToSelect() {
    return const ToggleTapToSelect();
  }

// ignore: unused_element
  ToggleSelection toggleSelection(int index) {
    return ToggleSelection(
      index,
    );
  }
}

// ignore: unused_element
const $MediaTabViewEvent = _$MediaTabViewEventTearOff();

mixin _$MediaTabViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadMedia(),
    @required Result toggleTapToSelect(),
    @required Result toggleSelection(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadMedia(),
    Result toggleTapToSelect(),
    Result toggleSelection(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadMedia(LoadMedia value),
    @required Result toggleTapToSelect(ToggleTapToSelect value),
    @required Result toggleSelection(ToggleSelection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadMedia(LoadMedia value),
    Result toggleTapToSelect(ToggleTapToSelect value),
    Result toggleSelection(ToggleSelection value),
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

abstract class $LoadMediaCopyWith<$Res> {
  factory $LoadMediaCopyWith(LoadMedia value, $Res Function(LoadMedia) then) =
      _$LoadMediaCopyWithImpl<$Res>;
}

class _$LoadMediaCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
    implements $LoadMediaCopyWith<$Res> {
  _$LoadMediaCopyWithImpl(LoadMedia _value, $Res Function(LoadMedia) _then)
      : super(_value, (v) => _then(v as LoadMedia));

  @override
  LoadMedia get _value => super._value as LoadMedia;
}

class _$LoadMedia implements LoadMedia {
  const _$LoadMedia();

  @override
  String toString() {
    return 'MediaTabViewEvent.loadMedia()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMedia);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadMedia(),
    @required Result toggleTapToSelect(),
    @required Result toggleSelection(int index),
  }) {
    assert(loadMedia != null);
    assert(toggleTapToSelect != null);
    assert(toggleSelection != null);
    return loadMedia();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadMedia(),
    Result toggleTapToSelect(),
    Result toggleSelection(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMedia != null) {
      return loadMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadMedia(LoadMedia value),
    @required Result toggleTapToSelect(ToggleTapToSelect value),
    @required Result toggleSelection(ToggleSelection value),
  }) {
    assert(loadMedia != null);
    assert(toggleTapToSelect != null);
    assert(toggleSelection != null);
    return loadMedia(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadMedia(LoadMedia value),
    Result toggleTapToSelect(ToggleTapToSelect value),
    Result toggleSelection(ToggleSelection value),
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
  const factory LoadMedia() = _$LoadMedia;
}

abstract class $ToggleTapToSelectCopyWith<$Res> {
  factory $ToggleTapToSelectCopyWith(
          ToggleTapToSelect value, $Res Function(ToggleTapToSelect) then) =
      _$ToggleTapToSelectCopyWithImpl<$Res>;
}

class _$ToggleTapToSelectCopyWithImpl<$Res>
    extends _$MediaTabViewEventCopyWithImpl<$Res>
    implements $ToggleTapToSelectCopyWith<$Res> {
  _$ToggleTapToSelectCopyWithImpl(
      ToggleTapToSelect _value, $Res Function(ToggleTapToSelect) _then)
      : super(_value, (v) => _then(v as ToggleTapToSelect));

  @override
  ToggleTapToSelect get _value => super._value as ToggleTapToSelect;
}

class _$ToggleTapToSelect implements ToggleTapToSelect {
  const _$ToggleTapToSelect();

  @override
  String toString() {
    return 'MediaTabViewEvent.toggleTapToSelect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToggleTapToSelect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadMedia(),
    @required Result toggleTapToSelect(),
    @required Result toggleSelection(int index),
  }) {
    assert(loadMedia != null);
    assert(toggleTapToSelect != null);
    assert(toggleSelection != null);
    return toggleTapToSelect();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadMedia(),
    Result toggleTapToSelect(),
    Result toggleSelection(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleTapToSelect != null) {
      return toggleTapToSelect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadMedia(LoadMedia value),
    @required Result toggleTapToSelect(ToggleTapToSelect value),
    @required Result toggleSelection(ToggleSelection value),
  }) {
    assert(loadMedia != null);
    assert(toggleTapToSelect != null);
    assert(toggleSelection != null);
    return toggleTapToSelect(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadMedia(LoadMedia value),
    Result toggleTapToSelect(ToggleTapToSelect value),
    Result toggleSelection(ToggleSelection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleTapToSelect != null) {
      return toggleTapToSelect(this);
    }
    return orElse();
  }
}

abstract class ToggleTapToSelect implements MediaTabViewEvent {
  const factory ToggleTapToSelect() = _$ToggleTapToSelect;
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
    @required Result loadMedia(),
    @required Result toggleTapToSelect(),
    @required Result toggleSelection(int index),
  }) {
    assert(loadMedia != null);
    assert(toggleTapToSelect != null);
    assert(toggleSelection != null);
    return toggleSelection(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadMedia(),
    Result toggleTapToSelect(),
    Result toggleSelection(int index),
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
    @required Result loadMedia(LoadMedia value),
    @required Result toggleTapToSelect(ToggleTapToSelect value),
    @required Result toggleSelection(ToggleSelection value),
  }) {
    assert(loadMedia != null);
    assert(toggleTapToSelect != null);
    assert(toggleSelection != null);
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadMedia(LoadMedia value),
    Result toggleTapToSelect(ToggleTapToSelect value),
    Result toggleSelection(ToggleSelection value),
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
  _HasLoaded hasLoaded(
      {@required List<MediaObject> media,
      @required bool tapToSelect,
      @required int selectedMedia}) {
    return _HasLoaded(
      media: media,
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
    @required
        Result hasLoaded(
            List<MediaObject> media, bool tapToSelect, int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<MediaObject> media, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoaded(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
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
    @required
        Result hasLoaded(
            List<MediaObject> media, bool tapToSelect, int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<MediaObject> media, bool tapToSelect, int selectedMedia),
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
    @required Result hasLoaded(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
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
    @required
        Result hasLoaded(
            List<MediaObject> media, bool tapToSelect, int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return isLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<MediaObject> media, bool tapToSelect, int selectedMedia),
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
    @required Result hasLoaded(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
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

abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call({List<MediaObject> media, bool tapToSelect, int selectedMedia});
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
    Object media = freezed,
    Object tapToSelect = freezed,
    Object selectedMedia = freezed,
  }) {
    return _then(_HasLoaded(
      media: media == freezed ? _value.media : media as List<MediaObject>,
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
      {@required this.media,
      @required this.tapToSelect,
      @required this.selectedMedia})
      : assert(media != null),
        assert(tapToSelect != null),
        assert(selectedMedia != null);

  @override
  final List<MediaObject> media;
  @override
  final bool tapToSelect;
  @override
  final int selectedMedia;

  @override
  String toString() {
    return 'MediaTabViewState.hasLoaded(media: $media, tapToSelect: $tapToSelect, selectedMedia: $selectedMedia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLoaded &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
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
      const DeepCollectionEquality().hash(media) ^
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
    @required
        Result hasLoaded(
            List<MediaObject> media, bool tapToSelect, int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasLoaded(media, tapToSelect, selectedMedia);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<MediaObject> media, bool tapToSelect, int selectedMedia),
    Result hasFailed(AppsLoadFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(media, tapToSelect, selectedMedia);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result hasLoaded(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
    Result hasFailed(_HasFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(this);
    }
    return orElse();
  }
}

abstract class _HasLoaded implements MediaTabViewState {
  const factory _HasLoaded(
      {@required List<MediaObject> media,
      @required bool tapToSelect,
      @required int selectedMedia}) = _$_HasLoaded;

  List<MediaObject> get media;
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
    @required
        Result hasLoaded(
            List<MediaObject> media, bool tapToSelect, int selectedMedia),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasFailed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(
        List<MediaObject> media, bool tapToSelect, int selectedMedia),
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
    @required Result hasLoaded(_HasLoaded value),
    @required Result hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result hasLoaded(_HasLoaded value),
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
