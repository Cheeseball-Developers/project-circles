import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:projectcircles/domain/database/database_failure.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/infrastructure/database/app_database.dart';
import 'package:projectcircles/infrastructure/files/file_info_dtos.dart';

part 'files_history_event.dart';

part 'files_history_state.dart';

part 'files_history_bloc.freezed.dart';

@injectable
class FilesHistoryBloc extends Bloc<FilesHistoryEvent, FilesHistoryState> {
  final AppDatabase _database;

  FilesHistoryBloc(this._database)
      : super(FilesHistoryState(failureOrFilesInfoOption: none())) {
    // TODO: Check viability of using a stream instead
    /*fileTransferItemsStreamSubscription ??= _database
        .fileTransferItemDao.watchAllFileTransferItems
        .listen((List<FileTransferItem> data) {
          logger.d("Got Files History Database Stream Data");
      final List<FileInfo> filesInfo = [];
      for (final item in data) {
        final FileInfo info = FileInfoDto.fromFileTransferItem(item).toDomain();
        filesInfo.add(info);
      }
      add(FilesHistoryEvent.addItems(items: filesInfo));
    });*/
    _database.fileTransferItemDao.getAllFileTransferItems.then((items) {
      final List<FileInfo> filesInfo = [];
      for (final item in items) {
        final FileInfo info = FileInfoDto.fromFileTransferItem(item).toDomain();
        filesInfo.add(info);
      }
      add(FilesHistoryEvent.addItems(items: filesInfo));
    });
  }

  StreamSubscription fileTransferItemsStreamSubscription;

  @override
  Stream<FilesHistoryState> mapEventToState(
    FilesHistoryEvent event,
  ) async* {
    yield* event.map(addItems: (e) async* {
      yield state.copyWith(failureOrFilesInfoOption: some(right(e.items)));
    }, exit: (_) async* {
      fileTransferItemsStreamSubscription?.cancel();
    },);
  }
}
