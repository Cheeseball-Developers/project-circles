import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/infrastructure/files/file_info_dtos.dart';

part 'app_database.g.dart';

class FileTransferItems extends Table {
  IntColumn get hash => integer()();

  TextColumn get name => text().withLength(min: 1)();

  TextColumn get path => text().withLength(min: 1)();

  IntColumn get bytesSize => integer()();

  BlobColumn get thumbnail => blob()();

  DateTimeColumn get transferDateTime => dateTime()();
}

@Singleton()
@UseMoor(tables: [FileTransferItems], daos: [FileTransferItemDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 0;
}

@UseDao(tables: [FileTransferItems])
class FileTransferItemDao extends DatabaseAccessor<AppDatabase>
    with _$FileTransferItemDaoMixin {
  FileTransferItemDao(AppDatabase db) : super(db);

  final Logger logger = Logger();

  Stream<List<FileTransferItem>> get watchAllFileTransferItems =>
      select(fileTransferItems).watch();

  Future<List<FileTransferItem>> get getAllFileTransferItems =>
      select(fileTransferItems).get();

  void addFileTransferItem(FileTransferItem item) {
    logger.d("Inserting Item");
    into(fileTransferItems).insert(item);
  }
}
