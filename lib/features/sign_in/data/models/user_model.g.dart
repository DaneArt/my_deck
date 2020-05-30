// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    json['user_id'] as String,
    json['user_name'] as String,
    json['email'] as String,
    json['avatar_path'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.username,
      'email': instance.email,
      'avatar_path': instance.avatarPath,
    };
