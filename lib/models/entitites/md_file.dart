import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/get_file_by_meta_usecase.dart';

import 'package:mydeck/utils/dependency_injection.dart';

abstract class MDFile {
  final UniqueId uniqueId;

  MDFile({this.uniqueId});
}

class ImageFile extends MDFile {
  ImageFile({@required UniqueId uniqueId, File file})
      : super(uniqueId: uniqueId);
  File _file;

  Future<Either<StorageFailure<File>, File>> getFileValue() async {
    if (_file != null && _file.existsSync()) {
      return right(_file);
    } else {
      final storageFile = await sl.get<GetFileByMetaUseCase>().call(Params(
          id: uniqueId,
          fileType: this is ImageFile ? FileType.IMAGE : FileType.TEXT));

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
}

class TextFile extends MDFile {
  final String text;
  TextFile({
    @required UniqueId uniqueId,
    this.text,
  }) : super(uniqueId: uniqueId);
}
