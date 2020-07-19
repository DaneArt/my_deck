import 'dart:io';

extension FileExtension on File {
  String get extension => this.path.split("").last;
}
