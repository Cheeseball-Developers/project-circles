// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

// ignore: unused_element
  NameChanged nameChanged(String name) {
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
  ToggleDarkMode toggleDarkMode() {
    return const ToggleDarkMode();
  }
}

// ignore: unused_element
const $SettingsEvent = _$SettingsEventTearOff();

mixin _$SettingsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result selectDefaultDirectory(Directory directory),
    @required Result toggleDarkMode(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result selectDefaultDirectory(Directory directory),
    Result toggleDarkMode(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result selectDefaultDirectory(SelectDefaultDirectory value),
    @required Result toggleDarkMode(ToggleDarkMode value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result selectDefaultDirectory(SelectDefaultDirectory value),
    Result toggleDarkMode(ToggleDarkMode value),
    @required Result orElse(),
  });
}

abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

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
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

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
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result selectDefaultDirectory(Directory directory),
    @required Result toggleDarkMode(),
  }) {
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleDarkMode != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result selectDefaultDirectory(Directory directory),
    Result toggleDarkMode(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result selectDefaultDirectory(SelectDefaultDirectory value),
    @required Result toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleDarkMode != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result selectDefaultDirectory(SelectDefaultDirectory value),
    Result toggleDarkMode(ToggleDarkMode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SettingsEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $SelectDefaultDirectoryCopyWith<$Res> {
  factory $SelectDefaultDirectoryCopyWith(SelectDefaultDirectory value,
          $Res Function(SelectDefaultDirectory) then) =
      _$SelectDefaultDirectoryCopyWithImpl<$Res>;
  $Res call({Directory directory});
}

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
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result selectDefaultDirectory(Directory directory),
    @required Result toggleDarkMode(),
  }) {
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleDarkMode != null);
    return selectDefaultDirectory(directory);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result selectDefaultDirectory(Directory directory),
    Result toggleDarkMode(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectDefaultDirectory != null) {
      return selectDefaultDirectory(directory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result selectDefaultDirectory(SelectDefaultDirectory value),
    @required Result toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleDarkMode != null);
    return selectDefaultDirectory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result selectDefaultDirectory(SelectDefaultDirectory value),
    Result toggleDarkMode(ToggleDarkMode value),
    @required Result orElse(),
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

abstract class $ToggleDarkModeCopyWith<$Res> {
  factory $ToggleDarkModeCopyWith(
          ToggleDarkMode value, $Res Function(ToggleDarkMode) then) =
      _$ToggleDarkModeCopyWithImpl<$Res>;
}

class _$ToggleDarkModeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $ToggleDarkModeCopyWith<$Res> {
  _$ToggleDarkModeCopyWithImpl(
      ToggleDarkMode _value, $Res Function(ToggleDarkMode) _then)
      : super(_value, (v) => _then(v as ToggleDarkMode));

  @override
  ToggleDarkMode get _value => super._value as ToggleDarkMode;
}

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
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result selectDefaultDirectory(Directory directory),
    @required Result toggleDarkMode(),
  }) {
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleDarkMode != null);
    return toggleDarkMode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result selectDefaultDirectory(Directory directory),
    Result toggleDarkMode(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleDarkMode != null) {
      return toggleDarkMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result selectDefaultDirectory(SelectDefaultDirectory value),
    @required Result toggleDarkMode(ToggleDarkMode value),
  }) {
    assert(nameChanged != null);
    assert(selectDefaultDirectory != null);
    assert(toggleDarkMode != null);
    return toggleDarkMode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result selectDefaultDirectory(SelectDefaultDirectory value),
    Result toggleDarkMode(ToggleDarkMode value),
    @required Result orElse(),
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

class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

// ignore: unused_element
  _SettingsState call(
      {@required Name name,
      @required UniqueId uid,
      @required Directory path,
      @required bool darkMode}) {
    return _SettingsState(
      name: name,
      uid: uid,
      path: path,
      darkMode: darkMode,
    );
  }
}

// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

mixin _$SettingsState {
  Name get name;
  UniqueId get uid;
  Directory get path;
  bool get darkMode;

  $SettingsStateCopyWith<SettingsState> get copyWith;
}

abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({Name name, UniqueId uid, Directory path, bool darkMode});
}

class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object uid = freezed,
    Object path = freezed,
    Object darkMode = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name,
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      path: path == freezed ? _value.path : path as Directory,
      darkMode: darkMode == freezed ? _value.darkMode : darkMode as bool,
    ));
  }
}

abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({Name name, UniqueId uid, Directory path, bool darkMode});
}

class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object name = freezed,
    Object uid = freezed,
    Object path = freezed,
    Object darkMode = freezed,
  }) {
    return _then(_SettingsState(
      name: name == freezed ? _value.name : name as Name,
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      path: path == freezed ? _value.path : path as Directory,
      darkMode: darkMode == freezed ? _value.darkMode : darkMode as bool,
    ));
  }
}

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {@required this.name,
      @required this.uid,
      @required this.path,
      @required this.darkMode})
      : assert(name != null),
        assert(uid != null),
        assert(path != null),
        assert(darkMode != null);

  @override
  final Name name;
  @override
  final UniqueId uid;
  @override
  final Directory path;
  @override
  final bool darkMode;

  @override
  String toString() {
    return 'SettingsState(name: $name, uid: $uid, path: $path, darkMode: $darkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.darkMode, darkMode) ||
                const DeepCollectionEquality()
                    .equals(other.darkMode, darkMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(darkMode);

  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {@required Name name,
      @required UniqueId uid,
      @required Directory path,
      @required bool darkMode}) = _$_SettingsState;

  @override
  Name get name;
  @override
  UniqueId get uid;
  @override
  Directory get path;
  @override
  bool get darkMode;
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith;
}
