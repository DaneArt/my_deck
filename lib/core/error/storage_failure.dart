import 'package:freezed_annotation/freezed_annotation.dart';

part "storage_failure.freezed.dart";

@freezed
abstract class StorageFailure<T> with _$StorageFailure<T> {
  //addDeckScreen failure
  const factory StorageFailure.fieldsInvalid() = FieldsInvalid<T>;
  const factory StorageFailure.unsaveableDraft() = UnsaveableDraft<T>;

  //local failures
  const factory StorageFailure.insertFailure({@required T failureObject}) =
      InsertFailure<T>;
  const factory StorageFailure.updateFailure({@required T failureObject}) =
      UpdateFailure<T>;
  const factory StorageFailure.deleteFailure({@required T failureObject}) =
      DeleteFailure<T>;
  const factory StorageFailure.getFailure() = GetFailure<T>;

  //network failures
  const factory StorageFailure.insertToServerFailure({
    @required T failureObject,
  }) = InsertToServerFailure<T>;
  const factory StorageFailure.updateToServerFailure({
    @required T failureObject,
  }) = UpdateToServerFailure<T>;
  const factory StorageFailure.deleteFromServerFailure({
    @required T failureObject,
  }) = DeleteFromServerFailure<T>;
  const factory StorageFailure.getFromServerFailure() = GetFromServerFailure<T>;
  const factory StorageFailure.serverFailure() = ServerFailure<T>;
  const factory StorageFailure.networkFailure() = NetworkFailure<T>;
}
