import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projectcircles/domain/circle/user.dart';

part 'file_transaction.freezed.dart';

@freezed
abstract class FileTransaction with _$FileTransaction {
  const FileTransaction._();

  const factory FileTransaction({
    @required String fileName,
    @required DateTime dateTime,
    @required User sender,
    @required List<User> recievers,
  }) = _FileTransaction;
}