import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/get_file_by_meta_usecase.dart';

import 'package:mydeck/utils/dependency_injection.dart';

abstract class MDEFile {
  File _file;
  final UniqueId uniqueId;

  MDEFile({this.uniqueId, File file}) {
    _file = file;
  }

  File getFileOrCrash() {
    if (_file == null) throw CacheException();
    return _file;
  }

  Future<Either<StorageFailure<File>, File>> getFileValue() async {
    if (_file != null && _file.existsSync()) {
      return right(_file);
    } else {
      final storageFile = await sl.get<GetFileByMetaUseCase>().call(Params(
          id: uniqueId,
          fileType: this is MDImageFile ? FileType.IMAGE : FileType.TEXT));

      return storageFile.fold((failure) => left(failure), (value) {
        _file = value;
        return right(_file);
      });
    }
  }
}

class MDImageFile extends MDEFile {
  MDImageFile({@required UniqueId uniqueId, File file})
      : super(uniqueId: uniqueId,file: file);
}

class MDTextFile extends MDEFile {
  //cached text need for not creating file for every single change of text
  String _text;

  Future<Either<StorageFailure<String>, String>> get cachedTextValue async {
    if (_text == null) {
      final result = await getFileValue();
      
      return result.fold((l) => left(StorageFailure.getFailure()), (r)  {
        _text = r.readAsStringSync();
        return right(_text);
      });
    }
    return right(_text);
  }

  String get cachedTextOrNull {
    if (_text == null && _file != null) {
      _text = _file.readAsStringSync();
    }
    return _text;
  }
  String get cachedTextOrCrash {
    if (_text == null ) {
      throw CacheException();
    }
    return _text;
  }

  void changeText(String value) {
    _text = value;
  }

  MDTextFile({
    @required UniqueId uniqueId,
    String text,
    File file,
  })  : _text = text,
        super(uniqueId: uniqueId, file: file);
}
