// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {@required String username,
      @required String email,
      @required @JsonKey(name: 'user_id') String userId,
      List<int> password,
      @required String avatar,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken}) {
    return _UserDto(
      username: username,
      email: email,
      userId: userId,
      password: password,
      avatar: avatar,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}

// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

mixin _$UserDto {
  String get username;
  String get email;
  @JsonKey(name: 'user_id')
  String get userId;
  List<int> get password;
  String get avatar;
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String email,
      @JsonKey(name: 'user_id') String userId,
      List<int> password,
      String avatar,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object username = freezed,
    Object email = freezed,
    Object userId = freezed,
    Object password = freezed,
    Object avatar = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      userId: userId == freezed ? _value.userId : userId as String,
      password: password == freezed ? _value.password : password as List<int>,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String email,
      @JsonKey(name: 'user_id') String userId,
      List<int> password,
      String avatar,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object username = freezed,
    Object email = freezed,
    Object userId = freezed,
    Object password = freezed,
    Object avatar = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_UserDto(
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      userId: userId == freezed ? _value.userId : userId as String,
      password: password == freezed ? _value.password : password as List<int>,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

@JsonSerializable()
class _$_UserDto extends _UserDto with DiagnosticableTreeMixin {
  const _$_UserDto(
      {@required this.username,
      @required this.email,
      @required @JsonKey(name: 'user_id') this.userId,
      this.password,
      @required this.avatar,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken})
      : assert(username != null),
        assert(email != null),
        assert(userId != null),
        assert(avatar != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final List<int> password;
  @override
  final String avatar;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDto(username: $username, email: $email, userId: $userId, password: $password, avatar: $avatar, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {@required String username,
      @required String email,
      @required @JsonKey(name: 'user_id') String userId,
      List<int> password,
      @required String avatar,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  List<int> get password;
  @override
  String get avatar;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
