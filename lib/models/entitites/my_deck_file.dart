import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/repositories/fille_repository.dart';
import 'package:meta/meta.dart';

import 'package:mydeck/utils/dependency_injection.dart';
import 'package:path_provider/path_provider.dart';

abstract class MyDeckFile {
  final UniqueId uniqueId;
  Either<StorageFailure, File> file;

  MyDeckFile(this.uniqueId, File file) {
    if (file == null || !file.existsSync()) {
      _loadFile();
    } else {
      this.file = right(file);
    }
  }

  void _loadFile() async {
    file = await sl.get<FileRepository>().getFileById(uniqueId);
  }
}

class ImageFile extends MyDeckFile {
  ImageFile({@required UniqueId uniqueId, File file}) : super(uniqueId, file);
}

class TextFile extends MyDeckFile {
  TextFile({@required UniqueId uniqueId, File file}) : super(uniqueId, file);

  void updateText(String value) {
    file.fold((failure) {
      getApplicationDocumentsDirectory().then((dir) {
        file = right(File("${dir.path}/files/${uniqueId.getOrCrash}.txt"));
      });
    }, (exFile) {});
  }
}
