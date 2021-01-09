// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

// ignore: unused_element
  LoadPrefs loadPrefs() {
    return const LoadPrefs();
  }

// ignore: unused_element
  ChangeName changeName() {
    return const ChangeName();
  }

// ignore: unused_element
  NameChanged nameChanged(Name name) {
    return NameChanged(
      name,
    );
  }

// ignore: unused_element
  SelectDefaultDirectory selectDefaultDirectory(Directory directory) {
    return SelectDefaultDirectory(
      directory,
    );
  }

// ignore: unused_element
  ToggleAskBeforeReceiving toggleAskBeforeReceiving() {
    return const ToggleAskBeforeReceiving();
  }

// ignore: unused_element
  ToggleDarkMode toggleDarkMode() {
    return const ToggleDarkMode();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPrefs(),
    @required TResult changeName(),
    @required TResult nameChanged(Name name),
    @required TResult selectDefaultDirectory(Directory directory),
    @required TResult toggleAskBeforeReceiving(),
    @required TResult toggleDarkMode(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPrefs(),
    TResult changeName(),
    TResult nameChanged(Name name),
    TResult selectDefaultDirectory(Directory directory),
    TResult toggleAskBeforeReceiving(),
    TResult toggleDarkMode(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPrefs(LoadPrefs value),
    @required TResult changeName(ChangeName value),
    @required TResult nameChanged(NameChanged value),
    @required TResult selectDefaultDirectory(SelectDefaultDirectory value),
    @required TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    @required TResult toggleDarkMode(ToggleDarkMode value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPrefs(LoadPrefs value),
    TResult changeName(ChangeName value),
    TResult nameChanged(NameChanged value),
    TResult selectDefaultDirectory(SelectDefaultDirectory value),
    TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    TResult toggleDarkMode(ToggleDarkMode value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class $LoadPrefsCopyWith<$Res> {
  factory $LoadPrefsCopyWith(LoadPrefs value, $Res Function(LoadPrefs) then) =
      _$LoadPrefsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadPrefsCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements $LoadPrefsCopyWith<$Res> {
  _$LoadPrefsCopyWithImpl(LoadPrefs _value, $Res Function(LoadPrefs) _then)
      : super(_value, (v) => _then(v as LoadPrefs));

  @override
  LoadPrefs get _value => super._value as LoadPrefs;
}

/// @nodoc
class _$LoadPrefs implements LoadPrefs {
  const _$LoadPrefs();

  @override
  String toString() {
    return 'SettingsEvent.loadPrefs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadPrefs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPrefs(),
    @required TResult changeName(),
    @required TResult nameChanged(Name name),
    @required TResult selectDefaultDirectory(Directory directory),
    @required TResult toggleAskBeforeReceiving(),
    @required TResult toggleDarkMode(),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return loadPrefs();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPrefs(),
    TResult changeName(),
    TResult nameChanged(Name name),
    TResult selectDefaultDirectory(Directory directory),
    TResult toggleAskBeforeReceiving(),
    TResult toggleDarkMode(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPrefs != null) {
      return loadPrefs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPrefs(LoadPrefs value),
    @required TResult changeName(ChangeName value),
    @required TResult nameChanged(NameChanged value),
    @required TResult selectDefaultDirectory(SelectDefaultDirectory value),
    @required TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    @required TResult toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return loadPrefs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPrefs(LoadPrefs value),
    TResult changeName(ChangeName value),
    TResult nameChanged(NameChanged value),
    TResult selectDefaultDirectory(SelectDefaultDirectory value),
    TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    TResult toggleDarkMode(ToggleDarkMode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPrefs != null) {
      return loadPrefs(this);
    }
    return orElse();
  }
}

abstract class LoadPrefs implements SettingsEvent {
  const factory LoadPrefs() = _$LoadPrefs;
}

/// @nodoc
abstract class $ChangeNameCopyWith<$Res> {
  factory $ChangeNameCopyWith(
          ChangeName value, $Res Function(ChangeName) then) =
      _$ChangeNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeNameCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements $ChangeNameCopyWith<$Res> {
  _$ChangeNameCopyWithImpl(ChangeName _value, $Res Function(ChangeName) _then)
      : super(_value, (v) => _then(v as ChangeName));

  @override
  ChangeName get _value => super._value as ChangeName;
}

/// @nodoc
class _$ChangeName implements ChangeName {
  const _$ChangeName();

  @override
  String toString() {
    return 'SettingsEvent.changeName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangeName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPrefs(),
    @required TResult changeName(),
    @required TResult nameChanged(Name name),
    @required TResult selectDefaultDirectory(Directory directory),
    @required TResult toggleAskBeforeReceiving(),
    @required TResult toggleDarkMode(),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return changeName();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPrefs(),
    TResult changeName(),
    TResult nameChanged(Name name),
    TResult selectDefaultDirectory(Directory directory),
    TResult toggleAskBeforeReceiving(),
    TResult toggleDarkMode(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPrefs(LoadPrefs value),
    @required TResult changeName(ChangeName value),
    @required TResult nameChanged(NameChanged value),
    @required TResult selectDefaultDirectory(SelectDefaultDirectory value),
    @required TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    @required TResult toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPrefs(LoadPrefs value),
    TResult changeName(ChangeName value),
    TResult nameChanged(NameChanged value),
    TResult selectDefaultDirectory(SelectDefaultDirectory value),
    TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    TResult toggleDarkMode(ToggleDarkMode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class ChangeName implements SettingsEvent {
  const factory ChangeName() = _$ChangeName;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({Name name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as Name,
    ));
  }
}

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final Name name;

  @override
  String toString() {
    return 'SettingsEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPrefs(),
    @required TResult changeName(),
    @required TResult nameChanged(Name name),
    @required TResult selectDefaultDirectory(Directory directory),
    @required TResult toggleAskBeforeReceiving(),
    @required TResult toggleDarkMode(),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPrefs(),
    TResult changeName(),
    TResult nameChanged(Name name),
    TResult selectDefaultDirectory(Directory directory),
    TResult toggleAskBeforeReceiving(),
    TResult toggleDarkMode(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPrefs(LoadPrefs value),
    @required TResult changeName(ChangeName value),
    @required TResult nameChanged(NameChanged value),
    @required TResult selectDefaultDirectory(SelectDefaultDirectory value),
    @required TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    @required TResult toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPrefs(LoadPrefs value),
    TResult changeName(ChangeName value),
    TResult nameChanged(NameChanged value),
    TResult selectDefaultDirectory(SelectDefaultDirectory value),
    TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    TResult toggleDarkMode(ToggleDarkMode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SettingsEvent {
  const factory NameChanged(Name name) = _$NameChanged;

  Name get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $SelectDefaultDirectoryCopyWith<$Res> {
  factory $SelectDefaultDirectoryCopyWith(SelectDefaultDirectory value,
          $Res Function(SelectDefaultDirectory) then) =
      _$SelectDefaultDirectoryCopyWithImpl<$Res>;
  $Res call({Directory directory});
}

/// @nodoc
class _$SelectDefaultDirectoryCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SelectDefaultDirectoryCopyWith<$Res> {
  _$SelectDefaultDirectoryCopyWithImpl(SelectDefaultDirectory _value,
      $Res Function(SelectDefaultDirectory) _then)
      : super(_value, (v) => _then(v as SelectDefaultDirectory));

  @override
  SelectDefaultDirectory get _value => super._value as SelectDefaultDirectory;

  @override
  $Res call({
    Object directory = freezed,
  }) {
    return _then(SelectDefaultDirectory(
      directory == freezed ? _value.directory : directory as Directory,
    ));
  }
}

/// @nodoc
class _$SelectDefaultDirectory implements SelectDefaultDirectory {
  const _$SelectDefaultDirectory(this.directory) : assert(directory != null);

  @override
  final Directory directory;

  @override
  String toString() {
    return 'SettingsEvent.selectDefaultDirectory(directory: $directory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectDefaultDirectory &&
            (identical(other.directory, directory) ||
                const DeepCollectionEquality()
                    .equals(other.directory, directory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(directory);

  @override
  $SelectDefaultDirectoryCopyWith<SelectDefaultDirectory> get copyWith =>
      _$SelectDefaultDirectoryCopyWithImpl<SelectDefaultDirectory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPrefs(),
    @required TResult changeName(),
    @required TResult nameChanged(Name name),
    @required TResult selectDefaultDirectory(Directory directory),
    @required TResult toggleAskBeforeReceiving(),
    @required TResult toggleDarkMode(),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return selectDefaultDirectory(directory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPrefs(),
    TResult changeName(),
    TResult nameChanged(Name name),
    TResult selectDefaultDirectory(Directory directory),
    TResult toggleAskBeforeReceiving(),
    TResult toggleDarkMode(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectDefaultDirectory != null) {
      return selectDefaultDirectory(directory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPrefs(LoadPrefs value),
    @required TResult changeName(ChangeName value),
    @required TResult nameChanged(NameChanged value),
    @required TResult selectDefaultDirectory(SelectDefaultDirectory value),
    @required TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    @required TResult toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return selectDefaultDirectory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPrefs(LoadPrefs value),
    TResult changeName(ChangeName value),
    TResult nameChanged(NameChanged value),
    TResult selectDefaultDirectory(SelectDefaultDirectory value),
    TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    TResult toggleDarkMode(ToggleDarkMode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectDefaultDirectory != null) {
      return selectDefaultDirectory(this);
    }
    return orElse();
  }
}

abstract class SelectDefaultDirectory implements SettingsEvent {
  const factory SelectDefaultDirectory(Directory directory) =
      _$SelectDefaultDirectory;

  Directory get directory;
  $SelectDefaultDirectoryCopyWith<SelectDefaultDirectory> get copyWith;
}

/// @nodoc
abstract class $ToggleAskBeforeReceivingCopyWith<$Res> {
  factory $ToggleAskBeforeReceivingCopyWith(ToggleAskBeforeReceiving value,
          $Res Function(ToggleAskBeforeReceiving) then) =
      _$ToggleAskBeforeReceivingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleAskBeforeReceivingCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $ToggleAskBeforeReceivingCopyWith<$Res> {
  _$ToggleAskBeforeReceivingCopyWithImpl(ToggleAskBeforeReceiving _value,
      $Res Function(ToggleAskBeforeReceiving) _then)
      : super(_value, (v) => _then(v as ToggleAskBeforeReceiving));

  @override
  ToggleAskBeforeReceiving get _value =>
      super._value as ToggleAskBeforeReceiving;
}

/// @nodoc
class _$ToggleAskBeforeReceiving implements ToggleAskBeforeReceiving {
  const _$ToggleAskBeforeReceiving();

  @override
  String toString() {
    return 'SettingsEvent.toggleAskBeforeReceiving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToggleAskBeforeReceiving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPrefs(),
    @required TResult changeName(),
    @required TResult nameChanged(Name name),
    @required TResult selectDefaultDirectory(Directory directory),
    @required TResult toggleAskBeforeReceiving(),
    @required TResult toggleDarkMode(),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return toggleAskBeforeReceiving();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPrefs(),
    TResult changeName(),
    TResult nameChanged(Name name),
    TResult selectDefaultDirectory(Directory directory),
    TResult toggleAskBeforeReceiving(),
    TResult toggleDarkMode(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleAskBeforeReceiving != null) {
      return toggleAskBeforeReceiving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPrefs(LoadPrefs value),
    @required TResult changeName(ChangeName value),
    @required TResult nameChanged(NameChanged value),
    @required TResult selectDefaultDirectory(SelectDefaultDirectory value),
    @required TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    @required TResult toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return toggleAskBeforeReceiving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPrefs(LoadPrefs value),
    TResult changeName(ChangeName value),
    TResult nameChanged(NameChanged value),
    TResult selectDefaultDirectory(SelectDefaultDirectory value),
    TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    TResult toggleDarkMode(ToggleDarkMode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleAskBeforeReceiving != null) {
      return toggleAskBeforeReceiving(this);
    }
    return orElse();
  }
}

abstract class ToggleAskBeforeReceiving implements SettingsEvent {
  const factory ToggleAskBeforeReceiving() = _$ToggleAskBeforeReceiving;
}

/// @nodoc
abstract class $ToggleDarkModeCopyWith<$Res> {
  factory $ToggleDarkModeCopyWith(
          ToggleDarkMode value, $Res Function(ToggleDarkMode) then) =
      _$ToggleDarkModeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleDarkModeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $ToggleDarkModeCopyWith<$Res> {
  _$ToggleDarkModeCopyWithImpl(
      ToggleDarkMode _value, $Res Function(ToggleDarkMode) _then)
      : super(_value, (v) => _then(v as ToggleDarkMode));

  @override
  ToggleDarkMode get _value => super._value as ToggleDarkMode;
}

/// @nodoc
class _$ToggleDarkMode implements ToggleDarkMode {
  const _$ToggleDarkMode();

  @override
  String toString() {
    return 'SettingsEvent.toggleDarkMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToggleDarkMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPrefs(),
    @required TResult changeName(),
    @required TResult nameChanged(Name name),
    @required TResult selectDefaultDirectory(Directory directory),
    @required TResult toggleAskBeforeReceiving(),
    @required TResult toggleDarkMode(),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return toggleDarkMode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPrefs(),
    TResult changeName(),
    TResult nameChanged(Name name),
    TResult selectDefaultDirectory(Directory directory),
    TResult toggleAskBeforeReceiving(),
    TResult toggleDarkMode(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleDarkMode != null) {
      return toggleDarkMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPrefs(LoadPrefs value),
    @required TResult changeName(ChangeName value),
    @required TResult nameChanged(NameChanged value),
    @required TResult selectDefaultDirectory(SelectDefaultDirectory value),
    @required TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    @required TResult toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(loadPrefs != null);
    assert(changeName != null);
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleAskBeforeReceiving != null);
    assert(toggleDarkMode != null);
    return toggleDarkMode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPrefs(LoadPrefs value),
    TResult changeName(ChangeName value),
    TResult nameChanged(NameChanged value),
    TResult selectDefaultDirectory(SelectDefaultDirectory value),
    TResult toggleAskBeforeReceiving(ToggleAskBeforeReceiving value),
    TResult toggleDarkMode(ToggleDarkMode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleDarkMode != null) {
      return toggleDarkMode(this);
    }
    return orElse();
  }
}

abstract class ToggleDarkMode implements SettingsEvent {
  const factory ToggleDarkMode() = _$ToggleDarkMode;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

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
      {@required User user,
      @required Directory directory,
      @required bool askBeforeReceiving,
      @required bool darkMode,
      @required bool isLoading,
      @required bool isChangingName,
      @required Option<SettingsFailure> settingsFailureOption}) {
    return _HasLoaded(
      user: user,
      directory: directory,
      askBeforeReceiving: askBeforeReceiving,
      darkMode: darkMode,
      isLoading: isLoading,
      isChangingName: isChangingName,
      settingsFailureOption: settingsFailureOption,
    );
  }

// ignore: unused_element
  _HasFailed hasFailed(SettingsFailure failure) {
    return _HasFailed(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(),
    @required
        TResult hasLoaded(
            User user,
            Directory directory,
            bool askBeforeReceiving,
            bool darkMode,
            bool isLoading,
            bool isChangingName,
            Option<SettingsFailure> settingsFailureOption),
    @required TResult hasFailed(SettingsFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(),
    TResult hasLoaded(
        User user,
        Directory directory,
        bool askBeforeReceiving,
        bool darkMode,
        bool isLoading,
        bool isChangingName,
        Option<SettingsFailure> settingsFailureOption),
    TResult hasFailed(SettingsFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasLoaded(_HasLoaded value),
    @required TResult hasFailed(_HasFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasLoaded(_HasLoaded value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
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
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(),
    @required
        TResult hasLoaded(
            User user,
            Directory directory,
            bool askBeforeReceiving,
            bool darkMode,
            bool isLoading,
            bool isChangingName,
            Option<SettingsFailure> settingsFailureOption),
    @required TResult hasFailed(SettingsFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(),
    TResult hasLoaded(
        User user,
        Directory directory,
        bool askBeforeReceiving,
        bool darkMode,
        bool isLoading,
        bool isChangingName,
        Option<SettingsFailure> settingsFailureOption),
    TResult hasFailed(SettingsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasLoaded(_HasLoaded value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasLoaded(_HasLoaded value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
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
    return 'SettingsState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(),
    @required
        TResult hasLoaded(
            User user,
            Directory directory,
            bool askBeforeReceiving,
            bool darkMode,
            bool isLoading,
            bool isChangingName,
            Option<SettingsFailure> settingsFailureOption),
    @required TResult hasFailed(SettingsFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(),
    TResult hasLoaded(
        User user,
        Directory directory,
        bool askBeforeReceiving,
        bool darkMode,
        bool isLoading,
        bool isChangingName,
        Option<SettingsFailure> settingsFailureOption),
    TResult hasFailed(SettingsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasLoaded(_HasLoaded value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasLoaded(_HasLoaded value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements SettingsState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$HasLoadedCopyWith<$Res> {
  factory _$HasLoadedCopyWith(
          _HasLoaded value, $Res Function(_HasLoaded) then) =
      __$HasLoadedCopyWithImpl<$Res>;
  $Res call(
      {User user,
      Directory directory,
      bool askBeforeReceiving,
      bool darkMode,
      bool isLoading,
      bool isChangingName,
      Option<SettingsFailure> settingsFailureOption});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$HasLoadedCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$HasLoadedCopyWith<$Res> {
  __$HasLoadedCopyWithImpl(_HasLoaded _value, $Res Function(_HasLoaded) _then)
      : super(_value, (v) => _then(v as _HasLoaded));

  @override
  _HasLoaded get _value => super._value as _HasLoaded;

  @override
  $Res call({
    Object user = freezed,
    Object directory = freezed,
    Object askBeforeReceiving = freezed,
    Object darkMode = freezed,
    Object isLoading = freezed,
    Object isChangingName = freezed,
    Object settingsFailureOption = freezed,
  }) {
    return _then(_HasLoaded(
      user: user == freezed ? _value.user : user as User,
      directory:
          directory == freezed ? _value.directory : directory as Directory,
      askBeforeReceiving: askBeforeReceiving == freezed
          ? _value.askBeforeReceiving
          : askBeforeReceiving as bool,
      darkMode: darkMode == freezed ? _value.darkMode : darkMode as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isChangingName: isChangingName == freezed
          ? _value.isChangingName
          : isChangingName as bool,
      settingsFailureOption: settingsFailureOption == freezed
          ? _value.settingsFailureOption
          : settingsFailureOption as Option<SettingsFailure>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_HasLoaded implements _HasLoaded {
  const _$_HasLoaded(
      {@required this.user,
      @required this.directory,
      @required this.askBeforeReceiving,
      @required this.darkMode,
      @required this.isLoading,
      @required this.isChangingName,
      @required this.settingsFailureOption})
      : assert(user != null),
        assert(directory != null),
        assert(askBeforeReceiving != null),
        assert(darkMode != null),
        assert(isLoading != null),
        assert(isChangingName != null),
        assert(settingsFailureOption != null);

  @override
  final User user;
  @override
  final Directory directory;
  @override
  final bool askBeforeReceiving;
  @override
  final bool darkMode;
  @override
  final bool isLoading;
  @override
  final bool isChangingName;
  @override
  final Option<SettingsFailure> settingsFailureOption;

  @override
  String toString() {
    return 'SettingsState.hasLoaded(user: $user, directory: $directory, askBeforeReceiving: $askBeforeReceiving, darkMode: $darkMode, isLoading: $isLoading, isChangingName: $isChangingName, settingsFailureOption: $settingsFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLoaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.directory, directory) ||
                const DeepCollectionEquality()
                    .equals(other.directory, directory)) &&
            (identical(other.askBeforeReceiving, askBeforeReceiving) ||
                const DeepCollectionEquality()
                    .equals(other.askBeforeReceiving, askBeforeReceiving)) &&
            (identical(other.darkMode, darkMode) ||
                const DeepCollectionEquality()
                    .equals(other.darkMode, darkMode)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isChangingName, isChangingName) ||
                const DeepCollectionEquality()
                    .equals(other.isChangingName, isChangingName)) &&
            (identical(other.settingsFailureOption, settingsFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.settingsFailureOption, settingsFailureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(directory) ^
      const DeepCollectionEquality().hash(askBeforeReceiving) ^
      const DeepCollectionEquality().hash(darkMode) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isChangingName) ^
      const DeepCollectionEquality().hash(settingsFailureOption);

  @override
  _$HasLoadedCopyWith<_HasLoaded> get copyWith =>
      __$HasLoadedCopyWithImpl<_HasLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(),
    @required
        TResult hasLoaded(
            User user,
            Directory directory,
            bool askBeforeReceiving,
            bool darkMode,
            bool isLoading,
            bool isChangingName,
            Option<SettingsFailure> settingsFailureOption),
    @required TResult hasFailed(SettingsFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasLoaded(user, directory, askBeforeReceiving, darkMode,
        this.isLoading, isChangingName, settingsFailureOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(),
    TResult hasLoaded(
        User user,
        Directory directory,
        bool askBeforeReceiving,
        bool darkMode,
        bool isLoading,
        bool isChangingName,
        Option<SettingsFailure> settingsFailureOption),
    TResult hasFailed(SettingsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(user, directory, askBeforeReceiving, darkMode,
          this.isLoading, isChangingName, settingsFailureOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasLoaded(_HasLoaded value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasLoaded(_HasLoaded value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasLoaded != null) {
      return hasLoaded(this);
    }
    return orElse();
  }
}

abstract class _HasLoaded implements SettingsState {
  const factory _HasLoaded(
      {@required User user,
      @required Directory directory,
      @required bool askBeforeReceiving,
      @required bool darkMode,
      @required bool isLoading,
      @required bool isChangingName,
      @required Option<SettingsFailure> settingsFailureOption}) = _$_HasLoaded;

  User get user;
  Directory get directory;
  bool get askBeforeReceiving;
  bool get darkMode;
  bool get isLoading;
  bool get isChangingName;
  Option<SettingsFailure> get settingsFailureOption;
  _$HasLoadedCopyWith<_HasLoaded> get copyWith;
}

/// @nodoc
abstract class _$HasFailedCopyWith<$Res> {
  factory _$HasFailedCopyWith(
          _HasFailed value, $Res Function(_HasFailed) then) =
      __$HasFailedCopyWithImpl<$Res>;
  $Res call({SettingsFailure failure});

  $SettingsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$HasFailedCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as SettingsFailure,
    ));
  }

  @override
  $SettingsFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SettingsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_HasFailed implements _HasFailed {
  const _$_HasFailed(this.failure) : assert(failure != null);

  @override
  final SettingsFailure failure;

  @override
  String toString() {
    return 'SettingsState.hasFailed(failure: $failure)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isLoading(),
    @required
        TResult hasLoaded(
            User user,
            Directory directory,
            bool askBeforeReceiving,
            bool darkMode,
            bool isLoading,
            bool isChangingName,
            Option<SettingsFailure> settingsFailureOption),
    @required TResult hasFailed(SettingsFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isLoading(),
    TResult hasLoaded(
        User user,
        Directory directory,
        bool askBeforeReceiving,
        bool darkMode,
        bool isLoading,
        bool isChangingName,
        Option<SettingsFailure> settingsFailureOption),
    TResult hasFailed(SettingsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasFailed != null) {
      return hasFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isLoading(_IsLoading value),
    @required TResult hasLoaded(_HasLoaded value),
    @required TResult hasFailed(_HasFailed value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(hasLoaded != null);
    assert(hasFailed != null);
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isLoading(_IsLoading value),
    TResult hasLoaded(_HasLoaded value),
    TResult hasFailed(_HasFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasFailed != null) {
      return hasFailed(this);
    }
    return orElse();
  }
}

abstract class _HasFailed implements SettingsState {
  const factory _HasFailed(SettingsFailure failure) = _$_HasFailed;

  SettingsFailure get failure;
  _$HasFailedCopyWith<_HasFailed> get copyWith;
}
