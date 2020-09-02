part of 'circle_home_bloc.dart';

@freezed
abstract class CircleHomeState with _$CircleHomeState {
  const factory CircleHomeState({@required int pageIndex}) = _CircleHomeState;

  factory CircleHomeState.initial() => const CircleHomeState(pageIndex: 0);
}
