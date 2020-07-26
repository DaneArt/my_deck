import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

part 'file_dto.freezed.dart';
part 'file_dto.g.dart';

enum ContentType { TEXT, AUDIO, IMAGE }

@freezed
abstract class MyDeckFileDto implements _$MyDeckFileDto {
  const MyDeckFileDto._();

  const factory MyDeckFileDto(
      {@required String id,
      @required @ContentTypeConverter() ContentType type,
      @JsonKey(ignore: true) @required File file}) = _MyDeckFileDto;

  factory MyDeckFileDto.fromDomain(MyDeckFile domain) {
    if (domain is ImageFile) {
      return MyDeckFileDto(
          id: domain.uniqueId.getOrCrash,
          type: ContentType.IMAGE,
          file: domain.image);
    } else {
      return MyDeckFileDto(
          id: domain.uniqueId.getOrCrash,
          type: ContentType.TEXT,
          file: (domain as TextFile).text);
    }
  }

  factory MyDeckFileDto.fromJson(Map<String, Object> json) =>
      _$MyDeckFileDtoFromJson(json);

  MyDeckFile toDomain() {
    if (type == ContentType.IMAGE) {
      return MyDeckFile.image(image: file, uniqueId: UniqueId.fromString(id));
    } else {
      return MyDeckFile.text(text: file, uniqueId: UniqueId.fromString(id));
    }
  }
}

class ContentTypeConverter implements JsonConverter<ContentType, Object> {
  const ContentTypeConverter();

  @override
  ContentType fromJson(Object json) {
    switch (json) {
      case "image":
        return ContentType.IMAGE;
        break;
      case "audio":
        return ContentType.AUDIO;
        break;
      default:
        return ContentType.TEXT;
        break;
    }
  }

  @override
  Object toJson(ContentType type) {
    switch (type) {
      case ContentType.IMAGE:
        return "image";
        break;
      case ContentType.AUDIO:
        return "audio";
        break;
      default:
        return "text";
        break;
    }
  }
}
