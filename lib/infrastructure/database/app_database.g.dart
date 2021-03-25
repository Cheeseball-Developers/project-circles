// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FileTransferItem extends DataClass
    implements Insertable<FileTransferItem> {
  final int hash;
  final String name;
  final String path;
  final int bytesSize;
  final Uint8List thumbnail;
  final DateTime transferDateTime;
  FileTransferItem(
      {required this.hash,
      required this.name,
      required this.path,
      required this.bytesSize,
      required this.thumbnail,
      required this.transferDateTime});
  factory FileTransferItem.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FileTransferItem(
      hash: intType.mapFromDatabaseResponse(data['${effectivePrefix}hash'])!,
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      path: stringType.mapFromDatabaseResponse(data['${effectivePrefix}path'])!,
      bytesSize: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}bytes_size'])!,
      thumbnail: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}thumbnail'])!,
      transferDateTime: dateTimeType.mapFromDatabaseResponse(
          data['${effectivePrefix}transfer_date_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['hash'] = Variable<int>(hash);
    map['name'] = Variable<String>(name);
    map['path'] = Variable<String>(path);
    map['bytes_size'] = Variable<int>(bytesSize);
    map['thumbnail'] = Variable<Uint8List>(thumbnail);
    map['transfer_date_time'] = Variable<DateTime>(transferDateTime);
    return map;
  }

  FileTransferItemsCompanion toCompanion(bool nullToAbsent) {
    return FileTransferItemsCompanion(
      hash: Value(hash),
      name: Value(name),
      path: Value(path),
      bytesSize: Value(bytesSize),
      thumbnail: Value(thumbnail),
      transferDateTime: Value(transferDateTime),
    );
  }

  factory FileTransferItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FileTransferItem(
      hash: serializer.fromJson<int>(json['hash']),
      name: serializer.fromJson<String>(json['name']),
      path: serializer.fromJson<String>(json['path']),
      bytesSize: serializer.fromJson<int>(json['bytesSize']),
      thumbnail: serializer.fromJson<Uint8List>(json['thumbnail']),
      transferDateTime: serializer.fromJson<DateTime>(json['transferDateTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'hash': serializer.toJson<int>(hash),
      'name': serializer.toJson<String>(name),
      'path': serializer.toJson<String>(path),
      'bytesSize': serializer.toJson<int>(bytesSize),
      'thumbnail': serializer.toJson<Uint8List>(thumbnail),
      'transferDateTime': serializer.toJson<DateTime>(transferDateTime),
    };
  }

  FileTransferItem copyWith(
          {int? hash,
          String? name,
          String? path,
          int? bytesSize,
          Uint8List? thumbnail,
          DateTime? transferDateTime}) =>
      FileTransferItem(
        hash: hash ?? this.hash,
        name: name ?? this.name,
        path: path ?? this.path,
        bytesSize: bytesSize ?? this.bytesSize,
        thumbnail: thumbnail ?? this.thumbnail,
        transferDateTime: transferDateTime ?? this.transferDateTime,
      );
  @override
  String toString() {
    return (StringBuffer('FileTransferItem(')
          ..write('hash: $hash, ')
          ..write('name: $name, ')
          ..write('path: $path, ')
          ..write('bytesSize: $bytesSize, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('transferDateTime: $transferDateTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      hash.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              path.hashCode,
              $mrjc(bytesSize.hashCode,
                  $mrjc(thumbnail.hashCode, transferDateTime.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is FileTransferItem &&
          other.hash == this.hash &&
          other.name == this.name &&
          other.path == this.path &&
          other.bytesSize == this.bytesSize &&
          other.thumbnail == this.thumbnail &&
          other.transferDateTime == this.transferDateTime);
}

class FileTransferItemsCompanion extends UpdateCompanion<FileTransferItem> {
  final Value<int> hash;
  final Value<String> name;
  final Value<String> path;
  final Value<int> bytesSize;
  final Value<Uint8List> thumbnail;
  final Value<DateTime> transferDateTime;
  const FileTransferItemsCompanion({
    this.hash = const Value.absent(),
    this.name = const Value.absent(),
    this.path = const Value.absent(),
    this.bytesSize = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.transferDateTime = const Value.absent(),
  });
  FileTransferItemsCompanion.insert({
    required int hash,
    required String name,
    required String path,
    required int bytesSize,
    required Uint8List thumbnail,
    required DateTime transferDateTime,
  })   : hash = Value(hash),
        name = Value(name),
        path = Value(path),
        bytesSize = Value(bytesSize),
        thumbnail = Value(thumbnail),
        transferDateTime = Value(transferDateTime);
  static Insertable<FileTransferItem> custom({
    Expression<int>? hash,
    Expression<String>? name,
    Expression<String>? path,
    Expression<int>? bytesSize,
    Expression<Uint8List>? thumbnail,
    Expression<DateTime>? transferDateTime,
  }) {
    return RawValuesInsertable({
      if (hash != null) 'hash': hash,
      if (name != null) 'name': name,
      if (path != null) 'path': path,
      if (bytesSize != null) 'bytes_size': bytesSize,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (transferDateTime != null) 'transfer_date_time': transferDateTime,
    });
  }

  FileTransferItemsCompanion copyWith(
      {Value<int>? hash,
      Value<String>? name,
      Value<String>? path,
      Value<int>? bytesSize,
      Value<Uint8List>? thumbnail,
      Value<DateTime>? transferDateTime}) {
    return FileTransferItemsCompanion(
      hash: hash ?? this.hash,
      name: name ?? this.name,
      path: path ?? this.path,
      bytesSize: bytesSize ?? this.bytesSize,
      thumbnail: thumbnail ?? this.thumbnail,
      transferDateTime: transferDateTime ?? this.transferDateTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (hash.present) {
      map['hash'] = Variable<int>(hash.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (bytesSize.present) {
      map['bytes_size'] = Variable<int>(bytesSize.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<Uint8List>(thumbnail.value);
    }
    if (transferDateTime.present) {
      map['transfer_date_time'] = Variable<DateTime>(transferDateTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FileTransferItemsCompanion(')
          ..write('hash: $hash, ')
          ..write('name: $name, ')
          ..write('path: $path, ')
          ..write('bytesSize: $bytesSize, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('transferDateTime: $transferDateTime')
          ..write(')'))
        .toString();
  }
}

class $FileTransferItemsTable extends FileTransferItems
    with TableInfo<$FileTransferItemsTable, FileTransferItem> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FileTransferItemsTable(this._db, [this._alias]);
  final VerificationMeta _hashMeta = const VerificationMeta('hash');
  @override
  late final GeneratedIntColumn hash = _constructHash();
  GeneratedIntColumn _constructHash() {
    return GeneratedIntColumn(
      'hash',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedTextColumn path = _constructPath();
  GeneratedTextColumn _constructPath() {
    return GeneratedTextColumn('path', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _bytesSizeMeta = const VerificationMeta('bytesSize');
  @override
  late final GeneratedIntColumn bytesSize = _constructBytesSize();
  GeneratedIntColumn _constructBytesSize() {
    return GeneratedIntColumn(
      'bytes_size',
      $tableName,
      false,
    );
  }

  final VerificationMeta _thumbnailMeta = const VerificationMeta('thumbnail');
  @override
  late final GeneratedBlobColumn thumbnail = _constructThumbnail();
  GeneratedBlobColumn _constructThumbnail() {
    return GeneratedBlobColumn(
      'thumbnail',
      $tableName,
      false,
    );
  }

  final VerificationMeta _transferDateTimeMeta =
      const VerificationMeta('transferDateTime');
  @override
  late final GeneratedDateTimeColumn transferDateTime =
      _constructTransferDateTime();
  GeneratedDateTimeColumn _constructTransferDateTime() {
    return GeneratedDateTimeColumn(
      'transfer_date_time',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [hash, name, path, bytesSize, thumbnail, transferDateTime];
  @override
  $FileTransferItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'file_transfer_items';
  @override
  final String actualTableName = 'file_transfer_items';
  @override
  VerificationContext validateIntegrity(Insertable<FileTransferItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('hash')) {
      context.handle(
          _hashMeta, hash.isAcceptableOrUnknown(data['hash']!, _hashMeta));
    } else if (isInserting) {
      context.missing(_hashMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('bytes_size')) {
      context.handle(_bytesSizeMeta,
          bytesSize.isAcceptableOrUnknown(data['bytes_size']!, _bytesSizeMeta));
    } else if (isInserting) {
      context.missing(_bytesSizeMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    if (data.containsKey('transfer_date_time')) {
      context.handle(
          _transferDateTimeMeta,
          transferDateTime.isAcceptableOrUnknown(
              data['transfer_date_time']!, _transferDateTimeMeta));
    } else if (isInserting) {
      context.missing(_transferDateTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FileTransferItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FileTransferItem.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $FileTransferItemsTable createAlias(String alias) {
    return $FileTransferItemsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FileTransferItemsTable fileTransferItems =
      $FileTransferItemsTable(this);
  late final FileTransferItemDao fileTransferItemDao =
      FileTransferItemDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [fileTransferItems];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$FileTransferItemDaoMixin on DatabaseAccessor<AppDatabase> {
  $FileTransferItemsTable get fileTransferItems =>
      attachedDatabase.fileTransferItems;
}
