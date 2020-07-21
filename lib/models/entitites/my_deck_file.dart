import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:path_provider/path_provider.dart';

part 'my_deck_file.freezed.dart';

@freezed
abstract class MyDeckFile with _$MyDeckFile {
  factory MyDeckFile.text({@required File text, @required UniqueId uniqueId}) =
      TextFile;

  factory MyDeckFile.image(
      {@required File image, @required UniqueId uniqueId}) = ImageFile;
}
