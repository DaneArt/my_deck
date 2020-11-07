import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/models/value_objects/username.dart';

import 'mde_file.dart';

part 'user.freezed.dart';

@freezed
abstract class MDEUser implements _$MDEUser {
  const MDEUser._();

  factory MDEUser(
      {@required Username username,
      @required EmailAddress email,
      @required MDImageFile avatar,
      @required List<MDEUser> subscribers,
      @required List<MDEUser> subscribes,
      @required UniqueId userId}) = _MDEUser;
}
