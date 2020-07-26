import 'dart:io';

import 'package:mydeck/models/dtos/file_dto.dart';

abstract class FileNetworkDataSource {
  Future<MyDeckFileDto> getFileById(String id);
  Future<void> addFile(MyDeckFileDto file);
}

class FileNetworkDataSourceImpl implements FileNetworkDataSource {
  @override
  Future<void> addFile(MyDeckFileDto file) {
    // TODO: implement addFile
    throw UnimplementedError();
  }

  @override
  Future<MyDeckFileDto> getFileById(String id) {
    // TODO: implement getFileById
    throw UnimplementedError();
  }
}
