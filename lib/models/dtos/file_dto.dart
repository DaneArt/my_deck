import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

part 'file_dto.freezed.dart';
part 'file_dto.g.dart';

enum ContentType { TEXT, AUDIO, IMAGE }

@freezed
abstract class MDFileDto implements _$MDFileDto {
  const MDFileDto._();

  const factory MDFileDto(
      {@required String id,
      @required @ContentTypeConverter() ContentType type,
      @JsonKey(ignore: true) @required File file}) = _MyDeckFileDto;

  factory MDFileDto.fromDomain(MDFile domain) {
    if (domain is ImageFile) {
      return MDFileDto(
          id: domain.uniqueId.getOrCrash,
          type: ContentType.IMAGE,
          file: domain.getFileOrCrash());
    } else {
      return MDFileDto(
          id: domain.uniqueId.getOrCrash,
          type: ContentType.TEXT,
          file: domain.getFileOrCrash());
    }
  }

  factory MDFileDto.fromJson(Map<String, Object> json) =>
      _$MDFileDtoFromJson(json);

  MDFile toDomain() {
    if (type == ContentType.IMAGE) {
      return ImageFile(file: file, uniqueId: UniqueId.fromString(id));
    } else {
      return TextFile(file: file, uniqueId: UniqueId.fromString(id));
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
