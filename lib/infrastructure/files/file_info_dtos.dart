import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:projectcircles/domain/files/file_info.dart';
import 'package:projectcircles/infrastructure/database/app_database.dart';

part 'file_info_dtos.freezed.dart';

@freezed
abstract class FileInfoDto implements _$FileInfoDto {
  const factory FileInfoDto({
    @required int hash,
    @required String name,
    @required String path,
    @required int bytesSize,
    @required Uint8List thumbnail,
    @required DateTime dateTime,
  }) = _FileInfoDto;

  factory FileInfoDto.fromDomain(FileInfo fileInfo) {
    return FileInfoDto(
      hash: fileInfo.hash,
      name: fileInfo.name,
      path: fileInfo.path,
      bytesSize: fileInfo.bytesSize,
      thumbnail: fileInfo.thumbnail,
      dateTime: DateTime.now(),
    );
  }

  factory FileInfoDto.fromFileTransferItem(FileTransferItem item) {
    return FileInfoDto(
      hash: item.hash,
      name: item.name,
      path: item.path,
      bytesSize: item.bytesSize,
      thumbnail: item.thumbnail,
      dateTime: item.transferDateTime,
    );
  }

  const FileInfoDto._();

  FileInfo toDomain() {
    return FileInfo(
      hash: hash,
      name: name,
      path: path,
      bytesSize: bytesSize,
      thumbnail: thumbnail,
    );
  }

  FileTransferItem toFileTransferItem() {
    return FileTransferItem(
      hash: hash,
      name: name,
      path: path,
      bytesSize: bytesSize,
      thumbnail: thumbnail,
      transferDateTime: dateTime,
    );
  }
}
