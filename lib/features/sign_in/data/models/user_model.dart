import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(nullable: false)
class UserModel {
  @JsonKey(name: 'user_Id')
  final String userId;
  @JsonKey(name: 'userName')
  final String username;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'avatar_Path')
  final String avatarPath;

  UserModel(this.userId, this.username, this.email, this.avatarPath);

  static UserModel fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copyWith({
    String userId,
    String username,
    String email,
    String avatarPath,
  }) {
    return UserModel(
      userId ?? this.userId,
      username ?? this.username,
      email ?? this.email,
      avatarPath ?? this.avatarPath,
    );
  }

  @override
  String toString() {
    return 'UserModel(userId: $userId, username: $username, email: $email, avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserModel &&
        o.userId == userId &&
        o.username == username &&
        o.email == email &&
        o.avatarPath == avatarPath;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        username.hashCode ^
        email.hashCode ^
        avatarPath.hashCode;
  }
}
