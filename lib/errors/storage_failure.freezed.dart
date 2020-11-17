// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'storage_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StorageFailureTearOff {
  const _$StorageFailureTearOff();

  FieldsInvalid<T> fieldsInvalid<T>({@required T failureObject}) {
    return FieldsInvalid<T>(
      failureObject: failureObject,
    );
  }

  UnsaveableDraft<T> unsaveableDraft<T>({@required T failureObject}) {
    return UnsaveableDraft<T>(
      failureObject: failureObject,
    );
  }

  InsertFailure<T> insertFailure<T>({@required T failureObject}) {
    return InsertFailure<T>(
      failureObject: failureObject,
    );
  }

  UpdateFailure<T> updateFailure<T>({@required T failureObject}) {
    return UpdateFailure<T>(
      failureObject: failureObject,
    );
  }

  DeleteFailure<T> deleteFailure<T>({@required T failureObject}) {
    return DeleteFailure<T>(
      failureObject: failureObject,
    );
  }

  GetFailure<T> getFailure<T>() {
    return GetFailure<T>();
  }

  ServerFailure<T> serverFailure<T>() {
    return ServerFailure<T>();
  }

  NetworkFailure<T> networkFailure<T>() {
    return NetworkFailure<T>();
  }
}

// ignore: unused_element
const $StorageFailure = _$StorageFailureTearOff();

mixin _$StorageFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  });
}

abstract class $StorageFailureCopyWith<T, $Res> {
  factory $StorageFailureCopyWith(
          StorageFailure<T> value, $Res Function(StorageFailure<T>) then) =
      _$StorageFailureCopyWithImpl<T, $Res>;
}

class _$StorageFailureCopyWithImpl<T, $Res>
    implements $StorageFailureCopyWith<T, $Res> {
  _$StorageFailureCopyWithImpl(this._value, this._then);

  final StorageFailure<T> _value;
  // ignore: unused_field
  final $Res Function(StorageFailure<T>) _then;
}

abstract class $FieldsInvalidCopyWith<T, $Res> {
  factory $FieldsInvalidCopyWith(
          FieldsInvalid<T> value, $Res Function(FieldsInvalid<T>) then) =
      _$FieldsInvalidCopyWithImpl<T, $Res>;
  $Res call({T failureObject});
}

class _$FieldsInvalidCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $FieldsInvalidCopyWith<T, $Res> {
  _$FieldsInvalidCopyWithImpl(
      FieldsInvalid<T> _value, $Res Function(FieldsInvalid<T>) _then)
      : super(_value, (v) => _then(v as FieldsInvalid<T>));

  @override
  FieldsInvalid<T> get _value => super._value as FieldsInvalid<T>;

  @override
  $Res call({
    Object failureObject = freezed,
  }) {
    return _then(FieldsInvalid<T>(
      failureObject:
          failureObject == freezed ? _value.failureObject : failureObject as T,
    ));
  }
}

class _$FieldsInvalid<T> implements FieldsInvalid<T> {
  _$FieldsInvalid({@required this.failureObject})
      : assert(failureObject != null);

  @override
  final T failureObject;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.fieldsInvalid(failureObject: $failureObject, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FieldsInvalid<T> &&
            (identical(other.failureObject, failureObject) ||
                const DeepCollectionEquality()
                    .equals(other.failureObject, failureObject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureObject);

  @override
  $FieldsInvalidCopyWith<T, FieldsInvalid<T>> get copyWith =>
      _$FieldsInvalidCopyWithImpl<T, FieldsInvalid<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return fieldsInvalid(failureObject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fieldsInvalid != null) {
      return fieldsInvalid(failureObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return fieldsInvalid(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fieldsInvalid != null) {
      return fieldsInvalid(this);
    }
    return orElse();
  }
}

abstract class FieldsInvalid<T> implements StorageFailure<T> {
  factory FieldsInvalid({@required T failureObject}) = _$FieldsInvalid<T>;

  T get failureObject;
  $FieldsInvalidCopyWith<T, FieldsInvalid<T>> get copyWith;
}

abstract class $UnsaveableDraftCopyWith<T, $Res> {
  factory $UnsaveableDraftCopyWith(
          UnsaveableDraft<T> value, $Res Function(UnsaveableDraft<T>) then) =
      _$UnsaveableDraftCopyWithImpl<T, $Res>;
  $Res call({T failureObject});
}

class _$UnsaveableDraftCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $UnsaveableDraftCopyWith<T, $Res> {
  _$UnsaveableDraftCopyWithImpl(
      UnsaveableDraft<T> _value, $Res Function(UnsaveableDraft<T>) _then)
      : super(_value, (v) => _then(v as UnsaveableDraft<T>));

  @override
  UnsaveableDraft<T> get _value => super._value as UnsaveableDraft<T>;

  @override
  $Res call({
    Object failureObject = freezed,
  }) {
    return _then(UnsaveableDraft<T>(
      failureObject:
          failureObject == freezed ? _value.failureObject : failureObject as T,
    ));
  }
}

class _$UnsaveableDraft<T> implements UnsaveableDraft<T> {
  _$UnsaveableDraft({@required this.failureObject})
      : assert(failureObject != null);

  @override
  final T failureObject;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.unsaveableDraft(failureObject: $failureObject, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsaveableDraft<T> &&
            (identical(other.failureObject, failureObject) ||
                const DeepCollectionEquality()
                    .equals(other.failureObject, failureObject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureObject);

  @override
  $UnsaveableDraftCopyWith<T, UnsaveableDraft<T>> get copyWith =>
      _$UnsaveableDraftCopyWithImpl<T, UnsaveableDraft<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return unsaveableDraft(failureObject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unsaveableDraft != null) {
      return unsaveableDraft(failureObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return unsaveableDraft(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unsaveableDraft != null) {
      return unsaveableDraft(this);
    }
    return orElse();
  }
}

abstract class UnsaveableDraft<T> implements StorageFailure<T> {
  factory UnsaveableDraft({@required T failureObject}) = _$UnsaveableDraft<T>;

  T get failureObject;
  $UnsaveableDraftCopyWith<T, UnsaveableDraft<T>> get copyWith;
}

abstract class $InsertFailureCopyWith<T, $Res> {
  factory $InsertFailureCopyWith(
          InsertFailure<T> value, $Res Function(InsertFailure<T>) then) =
      _$InsertFailureCopyWithImpl<T, $Res>;
  $Res call({T failureObject});
}

class _$InsertFailureCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $InsertFailureCopyWith<T, $Res> {
  _$InsertFailureCopyWithImpl(
      InsertFailure<T> _value, $Res Function(InsertFailure<T>) _then)
      : super(_value, (v) => _then(v as InsertFailure<T>));

  @override
  InsertFailure<T> get _value => super._value as InsertFailure<T>;

  @override
  $Res call({
    Object failureObject = freezed,
  }) {
    return _then(InsertFailure<T>(
      failureObject:
          failureObject == freezed ? _value.failureObject : failureObject as T,
    ));
  }
}

class _$InsertFailure<T> implements InsertFailure<T> {
  _$InsertFailure({@required this.failureObject})
      : assert(failureObject != null);

  @override
  final T failureObject;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.insertFailure(failureObject: $failureObject, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsertFailure<T> &&
            (identical(other.failureObject, failureObject) ||
                const DeepCollectionEquality()
                    .equals(other.failureObject, failureObject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureObject);

  @override
  $InsertFailureCopyWith<T, InsertFailure<T>> get copyWith =>
      _$InsertFailureCopyWithImpl<T, InsertFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return insertFailure(failureObject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertFailure != null) {
      return insertFailure(failureObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return insertFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertFailure != null) {
      return insertFailure(this);
    }
    return orElse();
  }
}

abstract class InsertFailure<T> implements StorageFailure<T> {
  factory InsertFailure({@required T failureObject}) = _$InsertFailure<T>;

  T get failureObject;
  $InsertFailureCopyWith<T, InsertFailure<T>> get copyWith;
}

abstract class $UpdateFailureCopyWith<T, $Res> {
  factory $UpdateFailureCopyWith(
          UpdateFailure<T> value, $Res Function(UpdateFailure<T>) then) =
      _$UpdateFailureCopyWithImpl<T, $Res>;
  $Res call({T failureObject});
}

class _$UpdateFailureCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $UpdateFailureCopyWith<T, $Res> {
  _$UpdateFailureCopyWithImpl(
      UpdateFailure<T> _value, $Res Function(UpdateFailure<T>) _then)
      : super(_value, (v) => _then(v as UpdateFailure<T>));

  @override
  UpdateFailure<T> get _value => super._value as UpdateFailure<T>;

  @override
  $Res call({
    Object failureObject = freezed,
  }) {
    return _then(UpdateFailure<T>(
      failureObject:
          failureObject == freezed ? _value.failureObject : failureObject as T,
    ));
  }
}

class _$UpdateFailure<T> implements UpdateFailure<T> {
  _$UpdateFailure({@required this.failureObject})
      : assert(failureObject != null);

  @override
  final T failureObject;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.updateFailure(failureObject: $failureObject, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFailure<T> &&
            (identical(other.failureObject, failureObject) ||
                const DeepCollectionEquality()
                    .equals(other.failureObject, failureObject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureObject);

  @override
  $UpdateFailureCopyWith<T, UpdateFailure<T>> get copyWith =>
      _$UpdateFailureCopyWithImpl<T, UpdateFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return updateFailure(failureObject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(failureObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateFailure<T> implements StorageFailure<T> {
  factory UpdateFailure({@required T failureObject}) = _$UpdateFailure<T>;

  T get failureObject;
  $UpdateFailureCopyWith<T, UpdateFailure<T>> get copyWith;
}

abstract class $DeleteFailureCopyWith<T, $Res> {
  factory $DeleteFailureCopyWith(
          DeleteFailure<T> value, $Res Function(DeleteFailure<T>) then) =
      _$DeleteFailureCopyWithImpl<T, $Res>;
  $Res call({T failureObject});
}

class _$DeleteFailureCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $DeleteFailureCopyWith<T, $Res> {
  _$DeleteFailureCopyWithImpl(
      DeleteFailure<T> _value, $Res Function(DeleteFailure<T>) _then)
      : super(_value, (v) => _then(v as DeleteFailure<T>));

  @override
  DeleteFailure<T> get _value => super._value as DeleteFailure<T>;

  @override
  $Res call({
    Object failureObject = freezed,
  }) {
    return _then(DeleteFailure<T>(
      failureObject:
          failureObject == freezed ? _value.failureObject : failureObject as T,
    ));
  }
}

class _$DeleteFailure<T> implements DeleteFailure<T> {
  _$DeleteFailure({@required this.failureObject})
      : assert(failureObject != null);

  @override
  final T failureObject;

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.deleteFailure(failureObject: $failureObject, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure<T> &&
            (identical(other.failureObject, failureObject) ||
                const DeepCollectionEquality()
                    .equals(other.failureObject, failureObject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureObject);

  @override
  $DeleteFailureCopyWith<T, DeleteFailure<T>> get copyWith =>
      _$DeleteFailureCopyWithImpl<T, DeleteFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return deleteFailure(failureObject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(failureObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure<T> implements StorageFailure<T> {
  factory DeleteFailure({@required T failureObject}) = _$DeleteFailure<T>;

  T get failureObject;
  $DeleteFailureCopyWith<T, DeleteFailure<T>> get copyWith;
}

abstract class $GetFailureCopyWith<T, $Res> {
  factory $GetFailureCopyWith(
          GetFailure<T> value, $Res Function(GetFailure<T>) then) =
      _$GetFailureCopyWithImpl<T, $Res>;
}

class _$GetFailureCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $GetFailureCopyWith<T, $Res> {
  _$GetFailureCopyWithImpl(
      GetFailure<T> _value, $Res Function(GetFailure<T>) _then)
      : super(_value, (v) => _then(v as GetFailure<T>));

  @override
  GetFailure<T> get _value => super._value as GetFailure<T>;
}

class _$GetFailure<T> implements GetFailure<T> {
  _$GetFailure();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.getFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return getFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFailure != null) {
      return getFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return getFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFailure != null) {
      return getFailure(this);
    }
    return orElse();
  }
}

abstract class GetFailure<T> implements StorageFailure<T> {
  factory GetFailure() = _$GetFailure<T>;
}

abstract class $ServerFailureCopyWith<T, $Res> {
  factory $ServerFailureCopyWith(
          ServerFailure<T> value, $Res Function(ServerFailure<T>) then) =
      _$ServerFailureCopyWithImpl<T, $Res>;
}

class _$ServerFailureCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $ServerFailureCopyWith<T, $Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure<T> _value, $Res Function(ServerFailure<T>) _then)
      : super(_value, (v) => _then(v as ServerFailure<T>));

  @override
  ServerFailure<T> get _value => super._value as ServerFailure<T>;
}

class _$ServerFailure<T> implements ServerFailure<T> {
  _$ServerFailure();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements StorageFailure<T> {
  factory ServerFailure() = _$ServerFailure<T>;
}

abstract class $NetworkFailureCopyWith<T, $Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure<T> value, $Res Function(NetworkFailure<T>) then) =
      _$NetworkFailureCopyWithImpl<T, $Res>;
}

class _$NetworkFailureCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res>
    implements $NetworkFailureCopyWith<T, $Res> {
  _$NetworkFailureCopyWithImpl(
      NetworkFailure<T> _value, $Res Function(NetworkFailure<T>) _then)
      : super(_value, (v) => _then(v as NetworkFailure<T>));

  @override
  NetworkFailure<T> get _value => super._value as NetworkFailure<T>;
}

class _$NetworkFailure<T> implements NetworkFailure<T> {
  _$NetworkFailure();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          fieldsInvalid: (value) => 'Check fields values and retry.',
          unsaveableDraft: (value) => 'Check fields values and retry.',
          insertFailure: (value) => 'Error due adding.',
          updateFailure: (value) => 'Error due updating.',
          deleteFailure: (value) => 'Error due deleting.',
          getFailure: (value) => 'Error due getting.',
          serverFailure: (value) => 'Unhandled error.',
          networkFailure: (value) => 'Check internet connection and retry.');
    }
    return _message;
  }

  @override
  String toString() {
    return 'StorageFailure<$T>.networkFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NetworkFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fieldsInvalid(T failureObject),
    @required Result unsaveableDraft(T failureObject),
    @required Result insertFailure(T failureObject),
    @required Result updateFailure(T failureObject),
    @required Result deleteFailure(T failureObject),
    @required Result getFailure(),
    @required Result serverFailure(),
    @required Result networkFailure(),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fieldsInvalid(T failureObject),
    Result unsaveableDraft(T failureObject),
    Result insertFailure(T failureObject),
    Result updateFailure(T failureObject),
    Result deleteFailure(T failureObject),
    Result getFailure(),
    Result serverFailure(),
    Result networkFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fieldsInvalid(FieldsInvalid<T> value),
    @required Result unsaveableDraft(UnsaveableDraft<T> value),
    @required Result insertFailure(InsertFailure<T> value),
    @required Result updateFailure(UpdateFailure<T> value),
    @required Result deleteFailure(DeleteFailure<T> value),
    @required Result getFailure(GetFailure<T> value),
    @required Result serverFailure(ServerFailure<T> value),
    @required Result networkFailure(NetworkFailure<T> value),
  }) {
    assert(fieldsInvalid != null);
    assert(unsaveableDraft != null);
    assert(insertFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(getFailure != null);
    assert(serverFailure != null);
    assert(networkFailure != null);
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fieldsInvalid(FieldsInvalid<T> value),
    Result unsaveableDraft(UnsaveableDraft<T> value),
    Result insertFailure(InsertFailure<T> value),
    Result updateFailure(UpdateFailure<T> value),
    Result deleteFailure(DeleteFailure<T> value),
    Result getFailure(GetFailure<T> value),
    Result serverFailure(ServerFailure<T> value),
    Result networkFailure(NetworkFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure<T> implements StorageFailure<T> {
  factory NetworkFailure() = _$NetworkFailure<T>;
}
