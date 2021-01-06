part of 'files_history_bloc.dart';

@freezed
abstract class FilesHistoryState with _$FilesHistoryState {
  const factory FilesHistoryState({
    @required Option<Either<DatabaseFailure, List<FileInfo>>> failureOrFilesInfoOption,
  }) = _FilesHistoryState;
}
