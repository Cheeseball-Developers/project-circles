// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'apps_tab_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppsTabViewEventTearOff {
  const _$AppsTabViewEventTearOff();

// ignore: unused_element
  LoadApps loadApps() {
    return const LoadApps();
  }

// ignore: unused_element
  ToggleAppSelection toggleAppSelection(int index) {
    return ToggleAppSelection(
      index,
    );
  }

// ignore: unused_element
  DeselectAll deselectAll() {
    return const DeselectAll();
  }
}

// ignore: unused_element
const $AppsTabViewEvent = _$AppsTabViewEventTearOff();

mixin _$AppsTabViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadApps(),
    @required Result toggleAppSelection(int index),
    @required Result deselectAll(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadApps(),
    Result toggleAppSelection(int index),
    Result deselectAll(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadApps(LoadApps value),
    @required Result toggleAppSelection(ToggleAppSelection value),
    @required Result deselectAll(DeselectAll value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadApps(LoadApps value),
    Result toggleAppSelection(ToggleAppSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  });
}

abstract class $AppsTabViewEventCopyWith<$Res> {
  factory $AppsTabViewEventCopyWith(
          AppsTabViewEvent value, $Res Function(AppsTabViewEvent) then) =
      _$AppsTabViewEventCopyWithImpl<$Res>;
}

class _$AppsTabViewEventCopyWithImpl<$Res>
    implements $AppsTabViewEventCopyWith<$Res> {
  _$AppsTabViewEventCopyWithImpl(this._value, this._then);

  final AppsTabViewEvent _value;
  // ignore: unused_field
  final $Res Function(AppsTabViewEvent) _then;
}

abstract class $LoadAppsCopyWith<$Res> {
  factory $LoadAppsCopyWith(LoadApps value, $Res Function(LoadApps) then) =
      _$LoadAppsCopyWithImpl<$Res>;
}

class _$LoadAppsCopyWithImpl<$Res> extends _$AppsTabViewEventCopyWithImpl<$Res>
    implements $LoadAppsCopyWith<$Res> {
  _$LoadAppsCopyWithImpl(LoadApps _value, $Res Function(LoadApps) _then)
      : super(_value, (v) => _then(v as LoadApps));

  @override
  LoadApps get _value => super._value as LoadApps;
}

class _$LoadApps implements LoadApps {
  const _$LoadApps();

  @override
  String toString() {
    return 'AppsTabViewEvent.loadApps()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadApps);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadApps(),
    @required Result toggleAppSelection(int index),
    @required Result deselectAll(),
  }) {
    assert(loadApps != null);
    assert(toggleAppSelection != null);
    assert(deselectAll != null);
    return loadApps();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadApps(),
    Result toggleAppSelection(int index),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadApps != null) {
      return loadApps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadApps(LoadApps value),
    @required Result toggleAppSelection(ToggleAppSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(loadApps != null);
    assert(toggleAppSelection != null);
    assert(deselectAll != null);
    return loadApps(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadApps(LoadApps value),
    Result toggleAppSelection(ToggleAppSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadApps != null) {
      return loadApps(this);
    }
    return orElse();
  }
}

abstract class LoadApps implements AppsTabViewEvent {
  const factory LoadApps() = _$LoadApps;
}

abstract class $ToggleAppSelectionCopyWith<$Res> {
  factory $ToggleAppSelectionCopyWith(
          ToggleAppSelection value, $Res Function(ToggleAppSelection) then) =
      _$ToggleAppSelectionCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$ToggleAppSelectionCopyWithImpl<$Res>
    extends _$AppsTabViewEventCopyWithImpl<$Res>
    implements $ToggleAppSelectionCopyWith<$Res> {
  _$ToggleAppSelectionCopyWithImpl(
      ToggleAppSelection _value, $Res Function(ToggleAppSelection) _then)
      : super(_value, (v) => _then(v as ToggleAppSelection));

  @override
  ToggleAppSelection get _value => super._value as ToggleAppSelection;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(ToggleAppSelection(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$ToggleAppSelection implements ToggleAppSelection {
  const _$ToggleAppSelection(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'AppsTabViewEvent.toggleAppSelection(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleAppSelection &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $ToggleAppSelectionCopyWith<ToggleAppSelection> get copyWith =>
      _$ToggleAppSelectionCopyWithImpl<ToggleAppSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadApps(),
    @required Result toggleAppSelection(int index),
    @required Result deselectAll(),
  }) {
    assert(loadApps != null);
    assert(toggleAppSelection != null);
    assert(deselectAll != null);
    return toggleAppSelection(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadApps(),
    Result toggleAppSelection(int index),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleAppSelection != null) {
      return toggleAppSelection(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadApps(LoadApps value),
    @required Result toggleAppSelection(ToggleAppSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(loadApps != null);
    assert(toggleAppSelection != null);
    assert(deselectAll != null);
    return toggleAppSelection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadApps(LoadApps value),
    Result toggleAppSelection(ToggleAppSelection value),
    Result deselectAll(DeselectAll value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleAppSelection != null) {
      return toggleAppSelection(this);
    }
    return orElse();
  }
}

abstract class ToggleAppSelection implements AppsTabViewEvent {
  const factory ToggleAppSelection(int index) = _$ToggleAppSelection;

  int get index;
  $ToggleAppSelectionCopyWith<ToggleAppSelection> get copyWith;
}

abstract class $DeselectAllCopyWith<$Res> {
  factory $DeselectAllCopyWith(
          DeselectAll value, $Res Function(DeselectAll) then) =
      _$DeselectAllCopyWithImpl<$Res>;
}

class _$DeselectAllCopyWithImpl<$Res>
    extends _$AppsTabViewEventCopyWithImpl<$Res>
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
    return 'AppsTabViewEvent.deselectAll()';
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
    @required Result loadApps(),
    @required Result toggleAppSelection(int index),
    @required Result deselectAll(),
  }) {
    assert(loadApps != null);
    assert(toggleAppSelection != null);
    assert(deselectAll != null);
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadApps(),
    Result toggleAppSelection(int index),
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
    @required Result loadApps(LoadApps value),
    @required Result toggleAppSelection(ToggleAppSelection value),
    @required Result deselectAll(DeselectAll value),
  }) {
    assert(loadApps != null);
    assert(toggleAppSelection != null);
    assert(deselectAll != null);
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadApps(LoadApps value),
    Result toggleAppSelection(ToggleAppSelection value),
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

abstract class DeselectAll implements AppsTabViewEvent {
  const factory DeselectAll() = _$DeselectAll;
}

class _$AppsTabViewStateTearOff {
  const _$AppsTabViewStateTearOff();

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
      {@required List<AppObject> apps, @required int selectedApps}) {
    return _HasLoaded(
      apps: apps,
      selectedApps: selectedApps,
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
const $AppsTabViewState = _$AppsTabViewStateTearOff();

mixin _$AppsTabViewState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoaded(List<AppObject> apps, int selectedApps),
    @required Result hasFailed(AppsLoadFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(List<AppObject> apps, int selectedApps),
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

abstract class $AppsTabViewStateCopyWith<$Res> {
  factory $AppsTabViewStateCopyWith(
          AppsTabViewState value, $Res Function(AppsTabViewState) then) =
      _$AppsTabViewStateCopyWithImpl<$Res>;
}

class _$AppsTabViewStateCopyWithImpl<$Res>
    implements $AppsTabViewStateCopyWith<$Res> {
  _$AppsTabViewStateCopyWithImpl(this._value, this._then);

  final AppsTabViewState _value;
  // ignore: unused_field
  final $Res Function(AppsTabViewState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$AppsTabViewStateCopyWithImpl<$Res>
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
    return 'AppsTabViewState.initial()';
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
    @required Result hasLoaded(List<AppObject> apps, int selectedApps),
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
    Result hasLoaded(List<AppObject> apps, int selectedApps),
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

abstract class _Initial implements AppsTabViewState {
  const factory _Initial() = _$_Initial;
}

abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

class __$IsLoadingCopyWithImpl<$Res>
    extends _$AppsTabViewStateCopyWithImpl<$Res>
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
    return 'AppsTabViewState.isLoading()';
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
    @required Result hasLoaded(List<AppObject> apps, int selectedApps),
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
    Result hasLoaded(List<AppObject> apps, int selectedApps),
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

abstract class _IsLoading implements AppsTabViewState {
  const factory _IsLoading() = _$_IsLoading;
}

abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call({List<AppObject> apps, int selectedApps});
}

class __$HasLoadedCopyWithImpl<$Res>
    extends _$AppsTabViewStateCopyWithImpl<$Res>
    implements _$HasLoadedCopyWith<$Res> {
  __$HasLoadedCopyWithImpl(_HasLoaded _value, $Res Function(_HasLoaded) _then)
      : super(_value, (v) => _then(v as _HasLoaded));

  @override
  _HasLoaded get _value => super._value as _HasLoaded;

  @override
  $Res call({
    Object apps = freezed,
    Object selectedApps = freezed,
  }) {
    return _then(_HasLoaded(
      apps: apps == freezed ? _value.apps : apps as List<AppObject>,
      selectedApps:
          selectedApps == freezed ? _value.selectedApps : selectedApps as int,
    ));
  }
}

class _$_HasLoaded implements _HasLoaded {
  const _$_HasLoaded({@required this.apps, @required this.selectedApps})
      : assert(apps != null),
        assert(selectedApps != null);

  @override
  final List<AppObject> apps;
  @override
  final int selectedApps;

  @override
  String toString() {
    return 'AppsTabViewState.hasLoaded(apps: $apps, selectedApps: $selectedApps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLoaded &&
            (identical(other.apps, apps) ||
                const DeepCollectionEquality().equals(other.apps, apps)) &&
            (identical(other.selectedApps, selectedApps) ||
                const DeepCollectionEquality()
                    .equals(other.selectedApps, selectedApps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(apps) ^
      const DeepCollectionEquality().hash(selectedApps);

  @override
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      __$HasLoadedCopyWithImpl<_HasLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result hasLoaded(List<AppObject> apps, int selectedApps),
    @required Result hasFailed(AppsLoadFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasLoaded(apps, selectedApps);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result hasLoaded(List<AppObject> apps, int selectedApps),
    Result hasFailed(AppsLoadFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(apps, selectedApps);
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

abstract class _HasLoaded implements AppsTabViewState {
  const factory _HasLoaded(
      {@required List<AppObject> apps,
      @required int selectedApps}) = _$_HasLoaded;

  List<AppObject> get apps;
  int get selectedApps;
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
    extends _$AppsTabViewStateCopyWithImpl<$Res>
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
    return 'AppsTabViewState.hasFailed(failure: $failure)';
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
    @required Result hasLoaded(List<AppObject> apps, int selectedApps),
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
    Result hasLoaded(List<AppObject> apps, int selectedApps),
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

abstract class _HasFailed implements AppsTabViewState {
  const factory _HasFailed(AppsLoadFailure failure) = _$_HasFailed;

  AppsLoadFailure get failure;
  _$HasFailedCopyWith<_HasFailed> get copyWith;
}
