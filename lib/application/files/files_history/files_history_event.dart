part of 'files_history_bloc.dart';

@freezed
class FilesHistoryEvent with _$FilesHistoryEvent {
  const factory FilesHistoryEvent.addItems({required List<FileInfo> items}) = _AddItems;
  const factory FilesHistoryEvent.exit() = _Exit;
}
