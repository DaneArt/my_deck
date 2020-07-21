import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/my_deck/domain/entities/my_deck_file.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';

part 'file_dto.freezed.dart';
part 'file_dto.g.dart';

enum ContentType { TEXT, AUDIO, IMAGE }

@freezed
abstract class FileDto implements _$FileDto {
  const FileDto._();

  const factory FileDto(
      {@required String id,
      @required @ContentTypeConverter() ContentType type}) = _CardContentDto;

  factory FileDto.fromDomain(MyDeckFile domain) {
    if (domain is ImageFile) {
      return FileDto(id: domain.uniqueId.getOrCrash, type: ContentType.IMAGE);
    } else {
      return FileDto(id: domain.uniqueId.getOrCrash, type: ContentType.TEXT);
    }
  }

  factory FileDto.fromJson(Map<String, Object> json) => _$FileDtoFromJson(json);

  MyDeckFile toDomain() {
    if (type == ContentType.IMAGE) {
      return MyDeckFile.image(image: null, uniqueId: UniqueId.fromString(id));
    } else {
      return MyDeckFile.text(text: null, uniqueId: UniqueId.fromString(id));
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
