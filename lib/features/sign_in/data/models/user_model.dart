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
  }) =>
      UserModel(
        userId ?? this.userId,
        username ?? this.username,
        email ?? this.email,
        avatarPath ?? this.avatarPath,
      );
}
