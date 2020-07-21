import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_failure.freezed.dart';

@freezed
abstract class StorageFailure<T> with _$StorageFailure<T> {
  //addDeckScreen failure
  const factory StorageFailure.fieldsInvalid({T failureObject}) =
      FieldsInvalid<T>;
  const factory StorageFailure.unsaveableDraft({T failureObject}) =
      UnsaveableDraft<T>;

  //local failures
  const factory StorageFailure.insertFailure({T failureObject}) =
      InsertFailure<T>;
  const factory StorageFailure.updateFailure({T failureObject}) =
      UpdateFailure<T>;
  const factory StorageFailure.deleteFailure({T failureObject}) =
      DeleteFailure<T>;
  const factory StorageFailure.getFailure({T failureObject}) = GetFailure<T>;

  //network failures
  const factory StorageFailure.insertToServerFailure({
    T failureObject,
  }) = InsertToServerFailure<T>;
  const factory StorageFailure.updateToServerFailure({
    T failureObject,
  }) = UpdateToServerFailure<T>;
  const factory StorageFailure.deleteFromServerFailure({
    T failureObject,
  }) = DeleteFromServerFailure<T>;
  const factory StorageFailure.getFromServerFailure({T failureObject}) =
      GetFromServerFailure<T>;
  const factory StorageFailure.serverFailure({T failureObject}) =
      ServerFailure<T>;
  const factory StorageFailure.networkFailure({String message}) =
      NetworkFailure<T>;
}
