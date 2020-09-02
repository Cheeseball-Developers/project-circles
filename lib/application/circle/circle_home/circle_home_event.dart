part of 'circle_home_bloc.dart';

@freezed
abstract class CircleHomeEvent with _$CircleHomeEvent {
  const factory CircleHomeEvent.changePageIndex(int index) = ChangePageIndex;
}
