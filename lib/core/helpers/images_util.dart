import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagesUtil {
  static Future<File> pickImageFromGallery() => ImagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxHeight: 1000,
        maxWidth: 1000,   
      );

  static Future<File> pickImageFromCamera() => ImagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 85,
        maxHeight: 1000,
        maxWidth: 1000,
      );
}
