import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/models/entitites/user.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/models/value_objects/username.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    @required String username,
    @required String email,
    @JsonKey(name: 'user_id') @required String userId,
    List<int> password,
    @required String avatar,
    @JsonKey(name: 'access_token') String accessToken,
    @JsonKey(name: 'refresh_token') String refreshToken,
  }) = _UserDto;

  MDEUser toDomain() => MDEUser(
        avatar: MDImageFile(uniqueId: UniqueId.fromString(avatar)),
        email: EmailAddress(email),
        subscribers: [],
        subscribes: [],
        userId: UniqueId.fromString(userId),
        username: Username(username),
      );

  factory UserDto.fromDomain(MDEUser domain) => UserDto(
      avatar: domain.avatar.uniqueId.getOrCrash,
      email: domain.email.getOrCrash,
      password: [],
      userId: domain.userId.getOrCrash,
      username: domain.username.getOrCrash,
      accessToken: '',
      refreshToken: '');

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_UserDtoToJson(this);
}
