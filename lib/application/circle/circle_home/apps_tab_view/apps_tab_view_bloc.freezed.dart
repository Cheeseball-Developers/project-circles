// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'apps_tab_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppsTabViewEventTearOff {
  const _$AppsTabViewEventTearOff();

// ignore: unused_element
  LoadApps loadApps() {
    return const LoadApps();
  }

// ignore: unused_element
  ToggleAppSelection toggleAppSelection({@required AppInfo appInfo}) {
    return ToggleAppSelection(
      appInfo: appInfo,
    );
  }

// ignore: unused_element
  DeselectAll deselectAll() {
    return const DeselectAll();
  }
}

/// @nodoc
// ignore: unused_element
const $AppsTabViewEvent = _$AppsTabViewEventTearOff();

/// @nodoc
mixin _$AppsTabViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadApps(),
    @required Result toggleAppSelection(AppInfo appInfo),
    @required Result deselectAll(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadApps(),
    Result toggleAppSelection(AppInfo appInfo),
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

/// @nodoc
abstract class $AppsTabViewEventCopyWith<$Res> {
  factory $AppsTabViewEventCopyWith(
          AppsTabViewEvent value, $Res Function(AppsTabViewEvent) then) =
      _$AppsTabViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppsTabViewEventCopyWithImpl<$Res>
    implements $AppsTabViewEventCopyWith<$Res> {
  _$AppsTabViewEventCopyWithImpl(this._value, this._then);

  final AppsTabViewEvent _value;
  // ignore: unused_field
  final $Res Function(AppsTabViewEvent) _then;
}

/// @nodoc
abstract class $LoadAppsCopyWith<$Res> {
  factory $LoadAppsCopyWith(LoadApps value, $Res Function(LoadApps) then) =
      _$LoadAppsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadAppsCopyWithImpl<$Res> extends _$AppsTabViewEventCopyWithImpl<$Res>
    implements $LoadAppsCopyWith<$Res> {
  _$LoadAppsCopyWithImpl(LoadApps _value, $Res Function(LoadApps) _then)
      : super(_value, (v) => _then(v as LoadApps));

  @override
  LoadApps get _value => super._value as LoadApps;
}

/// @nodoc
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
    @required Result toggleAppSelection(AppInfo appInfo),
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
    Result toggleAppSelection(AppInfo appInfo),
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

/// @nodoc
abstract class $ToggleAppSelectionCopyWith<$Res> {
  factory $ToggleAppSelectionCopyWith(
          ToggleAppSelection value, $Res Function(ToggleAppSelection) then) =
      _$ToggleAppSelectionCopyWithImpl<$Res>;
  $Res call({AppInfo appInfo});

  $AppInfoCopyWith<$Res> get appInfo;
}

/// @nodoc
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
    Object appInfo = freezed,
  }) {
    return _then(ToggleAppSelection(
      appInfo: appInfo == freezed ? _value.appInfo : appInfo as AppInfo,
    ));
  }

  @override
  $AppInfoCopyWith<$Res> get appInfo {
    if (_value.appInfo == null) {
      return null;
    }
    return $AppInfoCopyWith<$Res>(_value.appInfo, (value) {
      return _then(_value.copyWith(appInfo: value));
    });
  }
}

/// @nodoc
class _$ToggleAppSelection implements ToggleAppSelection {
  const _$ToggleAppSelection({@required this.appInfo})
      : assert(appInfo != null);

  @override
  final AppInfo appInfo;

  @override
  String toString() {
    return 'AppsTabViewEvent.toggleAppSelection(appInfo: $appInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleAppSelection &&
            (identical(other.appInfo, appInfo) ||
                const DeepCollectionEquality().equals(other.appInfo, appInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appInfo);

  @override
  $ToggleAppSelectionCopyWith<ToggleAppSelection> get copyWith =>
      _$ToggleAppSelectionCopyWithImpl<ToggleAppSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadApps(),
    @required Result toggleAppSelection(AppInfo appInfo),
    @required Result deselectAll(),
  }) {
    assert(loadApps != null);
    assert(toggleAppSelection != null);
    assert(deselectAll != null);
    return toggleAppSelection(appInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadApps(),
    Result toggleAppSelection(AppInfo appInfo),
    Result deselectAll(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleAppSelection != null) {
      return toggleAppSelection(appInfo);
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
  const factory ToggleAppSelection({@required AppInfo appInfo}) =
      _$ToggleAppSelection;

  AppInfo get appInfo;
  $ToggleAppSelectionCopyWith<ToggleAppSelection> get copyWith;
}

/// @nodoc
abstract class $DeselectAllCopyWith<$Res> {
  factory $DeselectAllCopyWith(
          DeselectAll value, $Res Function(DeselectAll) then) =
      _$DeselectAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeselectAllCopyWithImpl<$Res>
    extends _$AppsTabViewEventCopyWithImpl<$Res>
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
    @required Result toggleAppSelection(AppInfo appInfo),
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
    Result toggleAppSelection(AppInfo appInfo),
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

/// @nodoc
class _$AppsTabViewStateTearOff {
  const _$AppsTabViewStateTearOff();

// ignore: unused_element
  _AppsTabViewState call(
      {@required
          bool isLoading,
      @required
          Option<Either<AppsLoadFailure, Map<AppInfo, bool>>>
              failureOrAppsOption}) {
    return _AppsTabViewState(
      isLoading: isLoading,
      failureOrAppsOption: failureOrAppsOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppsTabViewState = _$AppsTabViewStateTearOff();

/// @nodoc
mixin _$AppsTabViewState {
  bool get isLoading;
  Option<Either<AppsLoadFailure, Map<AppInfo, bool>>> get failureOrAppsOption;

  $AppsTabViewStateCopyWith<AppsTabViewState> get copyWith;
}

/// @nodoc
abstract class $AppsTabViewStateCopyWith<$Res> {
  factory $AppsTabViewStateCopyWith(
          AppsTabViewState value, $Res Function(AppsTabViewState) then) =
      _$AppsTabViewStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<AppsLoadFailure, Map<AppInfo, bool>>> failureOrAppsOption});
}

/// @nodoc
class _$AppsTabViewStateCopyWithImpl<$Res>
    implements $AppsTabViewStateCopyWith<$Res> {
  _$AppsTabViewStateCopyWithImpl(this._value, this._then);

  final AppsTabViewState _value;
  // ignore: unused_field
  final $Res Function(AppsTabViewState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object failureOrAppsOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOrAppsOption: failureOrAppsOption == freezed
          ? _value.failureOrAppsOption
          : failureOrAppsOption
              as Option<Either<AppsLoadFailure, Map<AppInfo, bool>>>,
    ));
  }
}

/// @nodoc
abstract class _$AppsTabViewStateCopyWith<$Res>
    implements $AppsTabViewStateCopyWith<$Res> {
  factory _$AppsTabViewStateCopyWith(
          _AppsTabViewState value, $Res Function(_AppsTabViewState) then) =
      __$AppsTabViewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<AppsLoadFailure, Map<AppInfo, bool>>> failureOrAppsOption});
}

/// @nodoc
class __$AppsTabViewStateCopyWithImpl<$Res>
    extends _$AppsTabViewStateCopyWithImpl<$Res>
    implements _$AppsTabViewStateCopyWith<$Res> {
  __$AppsTabViewStateCopyWithImpl(
      _AppsTabViewState _value, $Res Function(_AppsTabViewState) _then)
      : super(_value, (v) => _then(v as _AppsTabViewState));

  @override
  _AppsTabViewState get _value => super._value as _AppsTabViewState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object failureOrAppsOption = freezed,
  }) {
    return _then(_AppsTabViewState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOrAppsOption: failureOrAppsOption == freezed
          ? _value.failureOrAppsOption
          : failureOrAppsOption
              as Option<Either<AppsLoadFailure, Map<AppInfo, bool>>>,
    ));
  }
}

/// @nodoc
class _$_AppsTabViewState implements _AppsTabViewState {
  const _$_AppsTabViewState(
      {@required this.isLoading, @required this.failureOrAppsOption})
      : assert(isLoading != null),
        assert(failureOrAppsOption != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<AppsLoadFailure, Map<AppInfo, bool>>> failureOrAppsOption;

  @override
  String toString() {
    return 'AppsTabViewState(isLoading: $isLoading, failureOrAppsOption: $failureOrAppsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppsTabViewState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOrAppsOption, failureOrAppsOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrAppsOption, failureOrAppsOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOrAppsOption);

  @override
  _$AppsTabViewStateCopyWith<_AppsTabViewState> get copyWith =>
      __$AppsTabViewStateCopyWithImpl<_AppsTabViewState>(this, _$identity);
}

abstract class _AppsTabViewState implements AppsTabViewState {
  const factory _AppsTabViewState(
      {@required
          bool isLoading,
      @required
          Option<Either<AppsLoadFailure, Map<AppInfo, bool>>>
              failureOrAppsOption}) = _$_AppsTabViewState;

  @override
  bool get isLoading;
  @override
  Option<Either<AppsLoadFailure, Map<AppInfo, bool>>> get failureOrAppsOption;
  @override
  _$AppsTabViewStateCopyWith<_AppsTabViewState> get copyWith;
}
