part of 'media_tab_view_bloc.dart';

@freezed
abstract class MediaTabViewEvent with _$MediaTabViewEvent {
  const factory MediaTabViewEvent.loadMedia() = LoadMedia;
  const factory MediaTabViewEvent.toggleTapToSelect() = ToggleTapToSelect;
  const factory MediaTabViewEvent.toggleSelection(int index) = ToggleSelection;
}
