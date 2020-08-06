import 'dart:io';

import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/utils/file_extensions.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/utils/file_factory.dart';
import 'package:path_provider/path_provider.dart';

abstract class FileLocalDataSource {
  Future<MDFileDto> getFileByMeta(String id, FileType contentType);
  Future<void> addFile(MDFileDto file);
}

class FileLocalDataSourceImpl implements FileLocalDataSource {
  @override
  Future<void> addFile(MDFileDto file) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      file.file.copy("${dir.path}/files/${file.id}");
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<MDFileDto> getFileByMeta(String id, FileType contentType) async {
    try {
      final file = contentType == FileType.IMAGE
          ? await ImageFileFactory().create(id)
          : await TextFileFactory().create(id);
      return file.existsSync()
          ? MDFileDto(
              file: file,
              id: id,
              type: file.isImage ? FileType.IMAGE : FileType.TEXT)
          : null;
    } catch (e) {
      throw CacheException();
    }
  }
}
