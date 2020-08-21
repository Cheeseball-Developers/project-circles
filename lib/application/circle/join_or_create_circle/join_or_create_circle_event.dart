part of 'join_or_create_circle_bloc.dart';

@freezed
abstract class JoinOrCreateCircleEvent with _$JoinOrCreateCircleEvent {
  const factory JoinOrCreateCircleEvent.startSearching() = StartSearching;
  const factory JoinOrCreateCircleEvent.stopSearching() = StopSearching;
  const factory JoinOrCreateCircleEvent.createCircle() = CreateCircle;
  const factory JoinOrCreateCircleEvent.joinCircle() = JoinCircle;
}
