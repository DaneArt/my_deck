import 'dart:io';

import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/utils/file_extensions.dart';
import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:path_provider/path_provider.dart';

abstract class FileLocalDataSource {
  Future<MyDeckFileDto> getFileByMeta(MyDeckFileDto meta);
  Future<void> addFile(MyDeckFileDto file);
}

class FileLocalDataSourceImpl implements FileLocalDataSource {
  @override
  Future<void> addFile(MyDeckFileDto file) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      file.file.copy("${dir.path}/files/${file.id}");
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<MyDeckFileDto> getFileByMeta(MyDeckFileDto meta) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final f = File("${dir.path}/files/${meta.id}.${meta.type.extension()}");
      return f.existsSync()
          ? MyDeckFileDto(
              file: f,
              id: meta.id,
              type:
                  f.extension == "image" ? ContentType.IMAGE : ContentType.TEXT)
          : null;
    } catch (e) {
      throw CacheException();
    }
  }
}
