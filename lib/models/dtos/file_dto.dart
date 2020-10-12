import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/utils/file_factory.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mydeck/utils/md_multipart_file.dart';

part 'file_dto.freezed.dart';
part 'file_dto.g.dart';

enum FileType { TEXT, AUDIO, IMAGE }

@freezed
abstract class MDFileDto implements _$MDFileDto {
  const MDFileDto._();

  const factory MDFileDto(
      {@required String id,
      @required @ContentTypeConverter() FileType type,
      @JsonKey(ignore: true) @required File file}) = _MyDeckFileDto;

  factory MDFileDto.fromDomain(MDFile domain) {
    if (domain is ImageFile) {
      return MDFileDto(
          id: domain.uniqueId.getOrCrash,
          type: FileType.IMAGE,
          file: domain.getFileOrCrash());
    } else {
      return MDFileDto(
        id: domain.uniqueId.getOrCrash,
        type: FileType.TEXT,
        file: TextFileFactory().create(domain.uniqueId.getOrCrash)
          ..writeAsStringSync((domain as TextFile).text),
      );
    }
  }

  factory MDFileDto.fromJson(Map<String, Object> json) =>
      _$MDFileDtoFromJson(json);

  MDFile toDomain() {
    if (type == FileType.IMAGE) {
      return ImageFile(file: file, uniqueId: UniqueId.fromString(id));
    } else {
      return TextFile(
          text: file.existsSync() ? file.readAsStringSync() : "",
          uniqueId: UniqueId.fromString(id));
    }
  }

 Map<String, Object> toFormData()  {
    return {
      'id': this.id,
      'type': this.type == FileType.IMAGE ? 'image' : 'text',
      'file':  MultipartFile.fromFileSync(this.file.path,
          filename: this.id + '.' + this.file.path.split('.').last,
          contentType: MediaType.parse(
              this.type == FileType.IMAGE ? 'image/png' : 'text/plain'))
    };
  }
}

class ContentTypeConverter implements JsonConverter<FileType, Object> {
  const ContentTypeConverter();

  @override
  FileType fromJson(Object json) {
    switch (json) {
      case "image":
        return FileType.IMAGE;
        break;
      case "audio":
        return FileType.AUDIO;
        break;
      default:
        return FileType.TEXT;
        break;
    }
  }

  @override
  Object toJson(FileType type) {
    switch (type) {
      case FileType.IMAGE:
        return "image";
        break;
      case FileType.AUDIO:
        return "audio";
        break;
      default:
        return "text";
        break;
    }
  }
}
