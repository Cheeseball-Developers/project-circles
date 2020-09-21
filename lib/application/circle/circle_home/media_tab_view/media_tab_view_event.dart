part of 'media_tab_view_bloc.dart';

@freezed
abstract class MediaTabViewEvent with _$MediaTabViewEvent {
  const factory MediaTabViewEvent.loadAlbums() = LoadAlbums;
  const factory MediaTabViewEvent.loadMedia({@required AssetPathEntity album}) = LoadMedia;
  const factory MediaTabViewEvent.toggleSelection(int index) = ToggleSelection;
  const factory MediaTabViewEvent.deselectAll() = DeselectAll;
}
