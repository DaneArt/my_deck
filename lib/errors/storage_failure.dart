import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_failure.freezed.dart';

@freezed
abstract class StorageFailure<T> with _$StorageFailure<T> {
  //addDeckScreen failure
  factory StorageFailure.fieldsInvalid({@required T failureObject}) =
      FieldsInvalid<T>;
  factory StorageFailure.unsaveableDraft({@required T failureObject}) =
      UnsaveableDraft<T>;

  //local failures
  factory StorageFailure.insertFailure({@required T failureObject}) =
      InsertFailure<T>;
  factory StorageFailure.updateFailure({@required T failureObject}) =
      UpdateFailure<T>;
  factory StorageFailure.deleteFailure({@required T failureObject}) =
      DeleteFailure<T>;
  factory StorageFailure.getFailure() = GetFailure<T>;

  factory StorageFailure.serverFailure() = ServerFailure<T>;
  factory StorageFailure.networkFailure() = NetworkFailure<T>;

  @late
  String get message => this.map(
      fieldsInvalid: (value) => 'Check fields values and retry.',
      unsaveableDraft: (value) => 'Check fields values and retry.',
      insertFailure: (value) => 'Error due adding.',
      updateFailure: (value) => 'Error due updating.',
      deleteFailure: (value) => 'Error due deleting.',
      getFailure: (value) => 'Error due getting.',
      serverFailure: (value) => 'Unhandled error.',
      networkFailure: (value) => 'Check internet connection and retry.');
}
