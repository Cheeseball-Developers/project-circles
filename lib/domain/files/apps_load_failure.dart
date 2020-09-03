import 'package:freezed_annotation/freezed_annotation.dart';

part 'apps_load_failure.freezed.dart';

@freezed
abstract class AppsLoadFailure with _$AppsLoadFailure{
  const factory AppsLoadFailure.unexpectedFailure() = UnexpectedFailure;
}