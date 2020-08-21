import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_failure.freezed.dart';

@freezed
abstract class ConnectionFailure with _$ConnectionFailure {
  const factory ConnectionFailure.cancelledByUser() = CancelledByUser;
  const factory ConnectionFailure.timedOut() = TimedOut;
}