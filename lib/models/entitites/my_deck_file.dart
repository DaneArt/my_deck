import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/repositories/file_repository.dart';

import 'package:mydeck/utils/dependency_injection.dart';

abstract class MDFile {
  final UniqueId uniqueId;

  File _file;

  Future<Either<StorageFailure, File>> getFileValue() async {
    if (_file != null && _file.existsSync()) {
      return right(_file);
    } else {
      final storageFile = await sl.get<FileRepository>().getFileByMeta(
          uniqueId, this is ImageFile ? ContentType.IMAGE : ContentType.TEXT);
      return storageFile.fold((failure) => left(failure), (value) {
        _file = value;
        return right(_file);
      });
    }
  }

  File getFileOrCrash() {
    if (_file == null) throw CacheException();
    return _file;
  }

  MDFile({this.uniqueId, File file}) {
    if (file != null) {
      _file = file;
    }
  }
}

class ImageFile extends MDFile {
  ImageFile({@required UniqueId uniqueId, File file})
      : super(uniqueId: uniqueId, file: file);
}

class TextFile extends MDFile {
  TextFile({@required UniqueId uniqueId, File file})
      : super(uniqueId: uniqueId, file: file);
}
