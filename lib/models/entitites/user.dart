import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/username.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  factory User(
      {@required Username username,
      @required EmailAddress email,
      @required ImageFile avatar,
      @required List<User> subscribers,
      @required List<User> subscribes,
      @required UniqueId userId}) = _User;
}
