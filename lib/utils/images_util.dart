import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagesUtil {
  static Future<PickedFile> pickImageFromGallery() => ImagePicker().getImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxHeight: 1000,
        maxWidth: 1000,   
      );

  static Future<PickedFile> pickImageFromCamera() => ImagePicker().getImage(
        source: ImageSource.camera,
        imageQuality: 85,
        maxHeight: 1000,
        maxWidth: 1000,
      );
}
