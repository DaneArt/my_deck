
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/utils/file_extensions.dart';
import 'package:mydeck/utils/file_factory.dart';

import '../../main.dart';

abstract class FileLocalDataSource {
  Future<MDFileDto> getFileByMeta(String id, FileType contentType);
  Future<void> addFile(MDFileDto file);
  Future<void> deleteFile(MDFileDto file);
  Future<void> deleteFiles(List<MDFileDto> file);
  Future<void> addFiles(List<MDFileDto> files);
}

class FileLocalDataSourceImpl implements FileLocalDataSource {
  final ImageFileFactory _imageFileFactory;
  final TextFileFactory _textFileFactory;

  FileLocalDataSourceImpl(this._imageFileFactory, this._textFileFactory);

  @override
  Future<void> addFile(MDFileDto file) async {
    try {
      final dir = App.appDirectory;
      file.file.copy(
          "${dir.path}/files/${UniqueId().getOrCrash}.${file.type == FileType.IMAGE ? "jpg" : "txt"}");
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<MDFileDto> getFileByMeta(String id, FileType contentType) async {
    try {
      final file = contentType == FileType.IMAGE
          ? _imageFileFactory.create(id)
          : _textFileFactory.create(id);
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

  @override
  Future<void> addFiles(List<MDFileDto> files) async {
    try {
      for (var file in files) {
        await addFile(file);
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteFile(MDFileDto file) {
    try {
      return file.file.existsSync()? file.file.delete():null;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteFiles(List<MDFileDto> file) {
    try {
      for (MDFileDto f in file) {
        deleteFile(f);
      }
    } catch (e) {
      throw CacheException();
    }
  }
}
