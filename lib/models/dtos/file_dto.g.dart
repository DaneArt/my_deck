// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyDeckFileDto _$_$_MyDeckFileDtoFromJson(Map<String, dynamic> json) {
  return _$_MyDeckFileDto(
    id: json['id'] as String,
    type: const ContentTypeConverter().fromJson(json['type']),
  );
}

Map<String, dynamic> _$_$_MyDeckFileDtoToJson(_$_MyDeckFileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': const ContentTypeConverter().toJson(instance.type),
    };
