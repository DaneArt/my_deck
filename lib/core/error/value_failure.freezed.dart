// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  LongPassword<T> longPassword<T>({@required T failedValue}) {
    return LongPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidLogin<T> invalidLogin<T>({@required T failedValue}) {
    return InvalidLogin<T>(
      failedValue: failedValue,
    );
  }

  LongLogin<T> longLogin<T>({@required T failedValue}) {
    return LongLogin<T>(
      failedValue: failedValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({@required T failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  FileDoesNotExists<T> fileDoesNotExists<T>({@required T failedValue}) {
    return FileDoesNotExists<T>(
      failedValue: failedValue,
    );
  }

  ShortDeckTitle<T> shortDeckTitle<T>({@required T failedValue}) {
    return ShortDeckTitle<T>(
      failedValue: failedValue,
    );
  }

  InvalidDeckTitle<T> invalidDeckTitle<T>({@required T failedValue}) {
    return InvalidDeckTitle<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidEmail<T> implements InvalidEmail<T> {
  _$InvalidEmail({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortPassword<T> implements ShortPassword<T> {
  _$ShortPassword({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

abstract class $LongPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $LongPasswordCopyWith(
          LongPassword<T> value, $Res Function(LongPassword<T>) then) =
      _$LongPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$LongPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $LongPasswordCopyWith<T, $Res> {
  _$LongPasswordCopyWithImpl(
      LongPassword<T> _value, $Res Function(LongPassword<T>) _then)
      : super(_value, (v) => _then(v as LongPassword<T>));

  @override
  LongPassword<T> get _value => super._value as LongPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(LongPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$LongPassword<T> implements LongPassword<T> {
  _$LongPassword({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.longPassword(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LongPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $LongPasswordCopyWith<T, LongPassword<T>> get copyWith =>
      _$LongPasswordCopyWithImpl<T, LongPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return longPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (longPassword != null) {
      return longPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return longPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (longPassword != null) {
      return longPassword(this);
    }
    return orElse();
  }
}

abstract class LongPassword<T> implements ValueFailure<T> {
  factory LongPassword({@required T failedValue}) = _$LongPassword<T>;

  @override
  T get failedValue;
  @override
  $LongPasswordCopyWith<T, LongPassword<T>> get copyWith;
}

abstract class $InvalidLoginCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidLoginCopyWith(
          InvalidLogin<T> value, $Res Function(InvalidLogin<T>) then) =
      _$InvalidLoginCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidLoginCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidLoginCopyWith<T, $Res> {
  _$InvalidLoginCopyWithImpl(
      InvalidLogin<T> _value, $Res Function(InvalidLogin<T>) _then)
      : super(_value, (v) => _then(v as InvalidLogin<T>));

  @override
  InvalidLogin<T> get _value => super._value as InvalidLogin<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidLogin<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidLogin<T> implements InvalidLogin<T> {
  _$InvalidLogin({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidLogin(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidLogin<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidLoginCopyWith<T, InvalidLogin<T>> get copyWith =>
      _$InvalidLoginCopyWithImpl<T, InvalidLogin<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidLogin(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidLogin != null) {
      return invalidLogin(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidLogin != null) {
      return invalidLogin(this);
    }
    return orElse();
  }
}

abstract class InvalidLogin<T> implements ValueFailure<T> {
  factory InvalidLogin({@required T failedValue}) = _$InvalidLogin<T>;

  @override
  T get failedValue;
  @override
  $InvalidLoginCopyWith<T, InvalidLogin<T>> get copyWith;
}

abstract class $LongLoginCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $LongLoginCopyWith(
          LongLogin<T> value, $Res Function(LongLogin<T>) then) =
      _$LongLoginCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$LongLoginCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $LongLoginCopyWith<T, $Res> {
  _$LongLoginCopyWithImpl(
      LongLogin<T> _value, $Res Function(LongLogin<T>) _then)
      : super(_value, (v) => _then(v as LongLogin<T>));

  @override
  LongLogin<T> get _value => super._value as LongLogin<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(LongLogin<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$LongLogin<T> implements LongLogin<T> {
  _$LongLogin({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.longLogin(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LongLogin<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $LongLoginCopyWith<T, LongLogin<T>> get copyWith =>
      _$LongLoginCopyWithImpl<T, LongLogin<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return longLogin(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (longLogin != null) {
      return longLogin(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return longLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (longLogin != null) {
      return longLogin(this);
    }
    return orElse();
  }
}

abstract class LongLogin<T> implements ValueFailure<T> {
  factory LongLogin({@required T failedValue}) = _$LongLogin<T>;

  @override
  T get failedValue;
  @override
  $LongLoginCopyWith<T, LongLogin<T>> get copyWith;
}

abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidPassword<T> implements InvalidPassword<T> {
  _$InvalidPassword({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  factory InvalidPassword({@required T failedValue}) = _$InvalidPassword<T>;

  @override
  T get failedValue;
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

abstract class $FileDoesNotExistsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $FileDoesNotExistsCopyWith(FileDoesNotExists<T> value,
          $Res Function(FileDoesNotExists<T>) then) =
      _$FileDoesNotExistsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$FileDoesNotExistsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $FileDoesNotExistsCopyWith<T, $Res> {
  _$FileDoesNotExistsCopyWithImpl(
      FileDoesNotExists<T> _value, $Res Function(FileDoesNotExists<T>) _then)
      : super(_value, (v) => _then(v as FileDoesNotExists<T>));

  @override
  FileDoesNotExists<T> get _value => super._value as FileDoesNotExists<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(FileDoesNotExists<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$FileDoesNotExists<T> implements FileDoesNotExists<T> {
  _$FileDoesNotExists({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.fileDoesNotExists(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileDoesNotExists<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $FileDoesNotExistsCopyWith<T, FileDoesNotExists<T>> get copyWith =>
      _$FileDoesNotExistsCopyWithImpl<T, FileDoesNotExists<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return fileDoesNotExists(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fileDoesNotExists != null) {
      return fileDoesNotExists(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return fileDoesNotExists(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fileDoesNotExists != null) {
      return fileDoesNotExists(this);
    }
    return orElse();
  }
}

abstract class FileDoesNotExists<T> implements ValueFailure<T> {
  factory FileDoesNotExists({@required T failedValue}) = _$FileDoesNotExists<T>;

  @override
  T get failedValue;
  @override
  $FileDoesNotExistsCopyWith<T, FileDoesNotExists<T>> get copyWith;
}

abstract class $ShortDeckTitleCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortDeckTitleCopyWith(
          ShortDeckTitle<T> value, $Res Function(ShortDeckTitle<T>) then) =
      _$ShortDeckTitleCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortDeckTitleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortDeckTitleCopyWith<T, $Res> {
  _$ShortDeckTitleCopyWithImpl(
      ShortDeckTitle<T> _value, $Res Function(ShortDeckTitle<T>) _then)
      : super(_value, (v) => _then(v as ShortDeckTitle<T>));

  @override
  ShortDeckTitle<T> get _value => super._value as ShortDeckTitle<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortDeckTitle<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortDeckTitle<T> implements ShortDeckTitle<T> {
  _$ShortDeckTitle({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.shortDeckTitle(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortDeckTitle<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortDeckTitleCopyWith<T, ShortDeckTitle<T>> get copyWith =>
      _$ShortDeckTitleCopyWithImpl<T, ShortDeckTitle<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return shortDeckTitle(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortDeckTitle != null) {
      return shortDeckTitle(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return shortDeckTitle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortDeckTitle != null) {
      return shortDeckTitle(this);
    }
    return orElse();
  }
}

abstract class ShortDeckTitle<T> implements ValueFailure<T> {
  factory ShortDeckTitle({@required T failedValue}) = _$ShortDeckTitle<T>;

  @override
  T get failedValue;
  @override
  $ShortDeckTitleCopyWith<T, ShortDeckTitle<T>> get copyWith;
}

abstract class $InvalidDeckTitleCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidDeckTitleCopyWith(
          InvalidDeckTitle<T> value, $Res Function(InvalidDeckTitle<T>) then) =
      _$InvalidDeckTitleCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidDeckTitleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidDeckTitleCopyWith<T, $Res> {
  _$InvalidDeckTitleCopyWithImpl(
      InvalidDeckTitle<T> _value, $Res Function(InvalidDeckTitle<T>) _then)
      : super(_value, (v) => _then(v as InvalidDeckTitle<T>));

  @override
  InvalidDeckTitle<T> get _value => super._value as InvalidDeckTitle<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidDeckTitle<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidDeckTitle<T> implements InvalidDeckTitle<T> {
  _$InvalidDeckTitle({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          invalidEmail: (value) => 'Email is incorrect.',
          shortPassword: (value) =>
              'Password must be longer than 8 characters.',
          invalidLogin: (value) =>
              "Login could contain letters, numbers, '.' or '_'.",
          longLogin: (value) => 'Login must be shorter than 30 characters.',
          invalidPassword: (value) =>
              'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
          longPassword: (value) =>
              'Password must be shorter than 24 characters.',
          fileDoesNotExists: (value) => "File doesn't exists.",
          invalidDeckTitle: (value) =>
              "Title could contain letters, numbers, '.' or '_'.",
          shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDeckTitle(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidDeckTitle<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidDeckTitleCopyWith<T, InvalidDeckTitle<T>> get copyWith =>
      _$InvalidDeckTitleCopyWithImpl<T, InvalidDeckTitle<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result longPassword(T failedValue),
    @required Result invalidLogin(T failedValue),
    @required Result longLogin(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result fileDoesNotExists(T failedValue),
    @required Result shortDeckTitle(T failedValue),
    @required Result invalidDeckTitle(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidDeckTitle(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result longPassword(T failedValue),
    Result invalidLogin(T failedValue),
    Result longLogin(T failedValue),
    Result invalidPassword(T failedValue),
    Result fileDoesNotExists(T failedValue),
    Result shortDeckTitle(T failedValue),
    Result invalidDeckTitle(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDeckTitle != null) {
      return invalidDeckTitle(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result longPassword(LongPassword<T> value),
    @required Result invalidLogin(InvalidLogin<T> value),
    @required Result longLogin(LongLogin<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result fileDoesNotExists(FileDoesNotExists<T> value),
    @required Result shortDeckTitle(ShortDeckTitle<T> value),
    @required Result invalidDeckTitle(InvalidDeckTitle<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(longPassword != null);
    assert(invalidLogin != null);
    assert(longLogin != null);
    assert(invalidPassword != null);
    assert(fileDoesNotExists != null);
    assert(shortDeckTitle != null);
    assert(invalidDeckTitle != null);
    return invalidDeckTitle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result longPassword(LongPassword<T> value),
    Result invalidLogin(InvalidLogin<T> value),
    Result longLogin(LongLogin<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result fileDoesNotExists(FileDoesNotExists<T> value),
    Result shortDeckTitle(ShortDeckTitle<T> value),
    Result invalidDeckTitle(InvalidDeckTitle<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDeckTitle != null) {
      return invalidDeckTitle(this);
    }
    return orElse();
  }
}

abstract class InvalidDeckTitle<T> implements ValueFailure<T> {
  factory InvalidDeckTitle({@required T failedValue}) = _$InvalidDeckTitle<T>;

  @override
  T get failedValue;
  @override
  $InvalidDeckTitleCopyWith<T, InvalidDeckTitle<T>> get copyWith;
}
