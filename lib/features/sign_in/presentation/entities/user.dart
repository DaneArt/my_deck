import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String userId;
  final String userName;
  final String email;
  final File avatar;
  final List<User> subscribers;
  final List<User> subscribes;

  User(
      {@required this.userName,
      @required this.email,
      @required this.avatar,
      @required this.subscribers,
      @required this.subscribes,
      @required this.userId});

  @override
  List<Object> get props =>
      [userName, email, avatar, subscribers, subscribes, userId];
}
