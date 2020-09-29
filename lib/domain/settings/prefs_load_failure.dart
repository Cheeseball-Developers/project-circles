import 'package:freezed_annotation/freezed_annotation.dart';

part 'prefs_load_failure.freezed.dart';

@freezed
abstract class PrefsLoadFailure with _$PrefsLoadFailure {
  const factory PrefsLoadFailure.failedToLoad() = FailedToLoad;
}