// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MDEUserTearOff {
  const _$MDEUserTearOff();

  _MDEUser call(
      {@required Username username,
      @required EmailAddress email,
      @required MDImageFile avatar,
      @required List<MDEUser> subscribers,
      @required List<MDEUser> subscribes,
      @required UniqueId userId}) {
    return _MDEUser(
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
const $MDEUser = _$MDEUserTearOff();

mixin _$MDEUser {
  Username get username;
  EmailAddress get email;
  MDImageFile get avatar;
  List<MDEUser> get subscribers;
  List<MDEUser> get subscribes;
  UniqueId get userId;

  $MDEUserCopyWith<MDEUser> get copyWith;
}

abstract class $MDEUserCopyWith<$Res> {
  factory $MDEUserCopyWith(MDEUser value, $Res Function(MDEUser) then) =
      _$MDEUserCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress email,
      MDImageFile avatar,
      List<MDEUser> subscribers,
      List<MDEUser> subscribes,
      UniqueId userId});
}

class _$MDEUserCopyWithImpl<$Res> implements $MDEUserCopyWith<$Res> {
  _$MDEUserCopyWithImpl(this._value, this._then);

  final MDEUser _value;
  // ignore: unused_field
  final $Res Function(MDEUser) _then;

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
      avatar: avatar == freezed ? _value.avatar : avatar as MDImageFile,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<MDEUser>,
      subscribes: subscribes == freezed
          ? _value.subscribes
          : subscribes as List<MDEUser>,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
    ));
  }
}

abstract class _$MDEUserCopyWith<$Res> implements $MDEUserCopyWith<$Res> {
  factory _$MDEUserCopyWith(_MDEUser value, $Res Function(_MDEUser) then) =
      __$MDEUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress email,
      MDImageFile avatar,
      List<MDEUser> subscribers,
      List<MDEUser> subscribes,
      UniqueId userId});
}

class __$MDEUserCopyWithImpl<$Res> extends _$MDEUserCopyWithImpl<$Res>
    implements _$MDEUserCopyWith<$Res> {
  __$MDEUserCopyWithImpl(_MDEUser _value, $Res Function(_MDEUser) _then)
      : super(_value, (v) => _then(v as _MDEUser));

  @override
  _MDEUser get _value => super._value as _MDEUser;

  @override
  $Res call({
    Object username = freezed,
    Object email = freezed,
    Object avatar = freezed,
    Object subscribers = freezed,
    Object subscribes = freezed,
    Object userId = freezed,
  }) {
    return _then(_MDEUser(
      username: username == freezed ? _value.username : username as Username,
      email: email == freezed ? _value.email : email as EmailAddress,
      avatar: avatar == freezed ? _value.avatar : avatar as MDImageFile,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<MDEUser>,
      subscribes: subscribes == freezed
          ? _value.subscribes
          : subscribes as List<MDEUser>,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
    ));
  }
}

class _$_MDEUser extends _MDEUser {
  _$_MDEUser(
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
  final MDImageFile avatar;
  @override
  final List<MDEUser> subscribers;
  @override
  final List<MDEUser> subscribes;
  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'MDEUser(username: $username, email: $email, avatar: $avatar, subscribers: $subscribers, subscribes: $subscribes, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MDEUser &&
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
  _$MDEUserCopyWith<_MDEUser> get copyWith =>
      __$MDEUserCopyWithImpl<_MDEUser>(this, _$identity);
}

abstract class _MDEUser extends MDEUser {
  _MDEUser._() : super._();
  factory _MDEUser(
      {@required Username username,
      @required EmailAddress email,
      @required MDImageFile avatar,
      @required List<MDEUser> subscribers,
      @required List<MDEUser> subscribes,
      @required UniqueId userId}) = _$_MDEUser;

  @override
  Username get username;
  @override
  EmailAddress get email;
  @override
  MDImageFile get avatar;
  @override
  List<MDEUser> get subscribers;
  @override
  List<MDEUser> get subscribes;
  @override
  UniqueId get userId;
  @override
  _$MDEUserCopyWith<_MDEUser> get copyWith;
}
