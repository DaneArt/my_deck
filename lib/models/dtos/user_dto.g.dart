// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    username: json['username'] as String,
    email: json['email'] as String,
    userId: json['user_id'] as String,
    password: (json['password'] as List)?.map((e) => e as int)?.toList(),
    avatar: json['avatar'] as String,
    accessToken: json['access_token'] as String,
    refreshToken: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'user_id': instance.userId,
      'password': instance.password,
      'avatar': instance.avatar,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
