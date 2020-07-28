import 'dart:io';

import 'package:path_provider/path_provider.dart';

abstract class MDFileFactory {
  Future<File> create(String id);
}

class ImageFileFactory implements MDFileFactory {
  @override
  Future<File> create(String id) async {
    final dir = await getApplicationDocumentsDirectory();
    final dirPath = '${dir.path}/files';
    Directory(dirPath).createSync(recursive: true);
    return File('$dirPath/$id.jpg');
  }
}

class TextFileFactory implements MDFileFactory {
  @override
  Future<File> create(String id) async {
    final dir = await getApplicationDocumentsDirectory();
    final dirPath = '${dir.path}/files';
    Directory(dirPath).createSync(recursive: true);
    return File('$dirPath/$id.txt');
  }
}
