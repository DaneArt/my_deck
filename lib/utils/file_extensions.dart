import 'dart:io';

extension FileExtension on File {
  String get extension => this.path.split("").last;
  bool get isImage =>
      this.extension == 'jpg' ||
      this.extension == 'png' ||
      this.extension == 'jpeg' ||
      this.extension == 'webp';
}
