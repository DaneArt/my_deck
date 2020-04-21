// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    json['user_Id'] as String,
    json['userName'] as String,
    json['email'] as String,
    json['avatar_Path'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_Id': instance.userId,
      'userName': instance.username,
      'email': instance.email,
      'avatar_Path': instance.avatarPath,
    };
