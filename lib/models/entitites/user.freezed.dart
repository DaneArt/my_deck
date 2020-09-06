// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required Username username,
      @required EmailAddress email,
      @required ImageFile avatar,
      @required List<User> subscribers,
      @required List<User> subscribes,
      @required UniqueId userId}) {
    return _User(
      username: username,
      email: email,
      avatar: avatar,
      subscribers: subscribers,
      subscribes: subscribes,
      userId: userId,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  Username get username;
  EmailAddress get email;
  ImageFile get avatar;
  List<User> get subscribers;
  List<User> get subscribes;
  UniqueId get userId;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress email,
      ImageFile avatar,
      List<User> subscribers,
      List<User> subscribes,
      UniqueId userId});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object username = freezed,
    Object email = freezed,
    Object avatar = freezed,
    Object subscribers = freezed,
    Object subscribes = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as Username,
      email: email == freezed ? _value.email : email as EmailAddress,
      avatar: avatar == freezed ? _value.avatar : avatar as ImageFile,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<User>,
      subscribes:
          subscribes == freezed ? _value.subscribes : subscribes as List<User>,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress email,
      ImageFile avatar,
      List<User> subscribers,
      List<User> subscribes,
      UniqueId userId});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object username = freezed,
    Object email = freezed,
    Object avatar = freezed,
    Object subscribers = freezed,
    Object subscribes = freezed,
    Object userId = freezed,
  }) {
    return _then(_User(
      username: username == freezed ? _value.username : username as Username,
      email: email == freezed ? _value.email : email as EmailAddress,
      avatar: avatar == freezed ? _value.avatar : avatar as ImageFile,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<User>,
      subscribes:
          subscribes == freezed ? _value.subscribes : subscribes as List<User>,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
    ));
  }
}

class _$_User extends _User {
  _$_User(
      {@required this.username,
      @required this.email,
      @required this.avatar,
      @required this.subscribers,
      @required this.subscribes,
      @required this.userId})
      : assert(username != null),
        assert(email != null),
        assert(avatar != null),
        assert(subscribers != null),
        assert(subscribes != null),
        assert(userId != null),
        super._();

  @override
  final Username username;
  @override
  final EmailAddress email;
  @override
  final ImageFile avatar;
  @override
  final List<User> subscribers;
  @override
  final List<User> subscribes;
  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'User(username: $username, email: $email, avatar: $avatar, subscribers: $subscribers, subscribes: $subscribes, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.subscribers, subscribers) ||
                const DeepCollectionEquality()
                    .equals(other.subscribers, subscribers)) &&
            (identical(other.subscribes, subscribes) ||
                const DeepCollectionEquality()
                    .equals(other.subscribes, subscribes)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(subscribers) ^
      const DeepCollectionEquality().hash(subscribes) ^
      const DeepCollectionEquality().hash(userId);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  _User._() : super._();
  factory _User(
      {@required Username username,
      @required EmailAddress email,
      @required ImageFile avatar,
      @required List<User> subscribers,
      @required List<User> subscribes,
      @required UniqueId userId}) = _$_User;

  @override
  Username get username;
  @override
  EmailAddress get email;
  @override
  ImageFile get avatar;
  @override
  List<User> get subscribers;
  @override
  List<User> get subscribes;
  @override
  UniqueId get userId;
  @override
  _$UserCopyWith<_User> get copyWith;
}
