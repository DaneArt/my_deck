// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardContentDto _$_$_CardContentDtoFromJson(Map<String, dynamic> json) {
  return _$_CardContentDto(
    id: json['id'] as String,
    type: const ContentTypeConverter().fromJson(json['type']),
  );
}

Map<String, dynamic> _$_$_CardContentDtoToJson(_$_CardContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': const ContentTypeConverter().toJson(instance.type),
    };
