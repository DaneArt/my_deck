import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../main.dart';

abstract class MDFileFactory {
  File create(String id);
}

class ImageFileFactory implements MDFileFactory {
  @override
  File create(String id) {
    final dir = App.appDirectory;
    final dirPath = '${dir.path}/files';
    Directory(dirPath).createSync(recursive: true);
    return File('$dirPath/$id.jpg');
  }
}

class TextFileFactory implements MDFileFactory {
  @override
  File create(String id) {
    final dir = App.appDirectory;
    final dirPath = '${dir.path}/files';
    Directory(dirPath).createSync(recursive: true);
    return File('$dirPath/$id.txt');
  }

}
