import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/services/datasources/file_local_datasource.dart';
import 'package:mydeck/services/datasources/file_network_datasource.dart';
import 'package:mydeck/utils/network_connection.dart';

abstract class FileRepository {
  Future<Option<StorageFailure>> addFile(MDEFile file);
  Future<Option<StorageFailure>> deleteFile(MDEFile file);
  Future<Option<StorageFailure>> deleteFiles(List<MDEFile> file);
  Future<Option<StorageFailure>> updateFiles(List<MDEFile> file);
  Future<Option<StorageFailure>> addFiles(List<MDEFile> file);
  Future<Either<StorageFailure<File>, File>> getFileByMeta(
      UniqueId id, FileType contentType);
}

class FileRepositoryImpl implements FileRepository {
  final NetworkConnection networkConnection;
  final FileLocalDataSource fileLocalDataSource;
  final FileNetworkDataSource fileNetworkDataSource;

  FileRepositoryImpl(this.networkConnection, this.fileLocalDataSource,
      this.fileNetworkDataSource);

  @override
  Future<Option<StorageFailure>> addFile(MDEFile file) async {
    try {
      await fileLocalDataSource.addFile(MDFileDto.fromDomain(file));
      if (await networkConnection.isConnected) {
        await fileNetworkDataSource.addFile(MDFileDto.fromDomain(file));
      }
      return none();
    } on NetworkException {
      return some(StorageFailure.networkFailure());
    } on CacheException {
      return some(StorageFailure.insertFailure(failureObject: file));
    }
  }

  @override
  Future<Either<StorageFailure<File>, File>> getFileByMeta(
      UniqueId id, FileType contentType) async {
    try {
      final localFile =
          await fileLocalDataSource.getFileByMeta(id.getOrCrash, contentType);
      if (localFile == null && await networkConnection.isConnected) {
        Logger().d('FileRepository: no cached file but can get it from net');
        final networkFile =
            await fileNetworkDataSource.getFileById(id.getOrCrash, contentType);
        return right(networkFile.file);
      } else if (localFile != null) {
        Logger()
            .d('FileRepository: no network connection but file got from cache');
        return right(localFile.file);
      } else {
        Logger()
            .e('FileRepository: no network connection and file did not cached');
        return left(StorageFailure.networkFailure());
      }
    } on NetworkException {
      Logger().e('FileRepository: NetworkException');
      return left(StorageFailure.networkFailure());
    } on CacheException {
      Logger().e('FileRepository: CacheException');
      return left(StorageFailure.getFailure());
    }
  }

  @override
  Future<Option<StorageFailure>> addFiles(List<MDEFile> files) async {
    try {
      await fileLocalDataSource
          .addFiles(files.map((file) => MDFileDto.fromDomain(file)).toList());
      if (await networkConnection.isConnected) {
        await fileNetworkDataSource
            .addFiles(files.map((file) => MDFileDto.fromDomain(file)).toList());
      }
      return none();
    } on NetworkException {
      return some(StorageFailure.networkFailure());
    } on CacheException {
      return some(StorageFailure.insertFailure(failureObject: files));
    }
  }

  @override
  Future<Option<StorageFailure>> deleteFile(MDEFile file) async {
    try {
      fileLocalDataSource.deleteFile(MDFileDto.fromDomain(file));

      return none();
    } on NetworkException {
      return Some(StorageFailure.deleteFailure(failureObject: file));
    } on CacheException {
      return Some(StorageFailure.deleteFailure(failureObject: file));
    }
  }

  @override
  Future<Option<StorageFailure>> deleteFiles(List<MDEFile> file) async {
    try {
      fileLocalDataSource
          .deleteFiles(file.map((e) => MDFileDto.fromDomain(e)).toList());

      return none();
    } on NetworkException {
      return Some(StorageFailure.deleteFailure(failureObject: file));
    } on CacheException {
      return Some(StorageFailure.deleteFailure(failureObject: file));
    }
  }

  @override
  Future<Option<StorageFailure>> updateFiles(List<MDEFile> file) async {
    try {
      if (await networkConnection.isConnected)
        fileNetworkDataSource
            .updateFiles(file.map((e) => MDFileDto.fromDomain(e)).toList());

      return none();
    } on NetworkException {
      return Some(StorageFailure.deleteFailure(failureObject: file));
    } on CacheException {
      return Some(StorageFailure.deleteFailure(failureObject: file));
    }
  }
}
