import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/datasources/file_local_datasource.dart';
import 'package:mydeck/services/datasources/file_network_datasource.dart';
import 'package:mydeck/utils/network_connection.dart';

abstract class FileRepository {
  Future<Option<StorageFailure>> addFile(MDFile file);
  Future<Either<StorageFailure, File>> getFileByMeta(
      UniqueId id, ContentType contentType);
}

class FileRepositoryImpl implements FileRepository {
  final NetworkConnection networkConnection;
  final FileLocalDataSource fileLocalDataSource;
  final FileNetworkDataSource fileNetworkDataSource;

  FileRepositoryImpl(this.networkConnection, this.fileLocalDataSource,
      this.fileNetworkDataSource);

  @override
  Future<Option<StorageFailure>> addFile(MDFile file) async {
    try {
      await fileLocalDataSource.addFile(MDFileDto.fromDomain(file));
      if (await networkConnection.isConnected) {
        fileNetworkDataSource.addFile(MDFileDto.fromDomain(file));
      }
      return none();
    } on NetworkException {
      return some(StorageFailure.networkFailure());
    } on CacheException {
      return some(StorageFailure.insertFailure());
    }
  }

  @override
  Future<Either<StorageFailure, File>> getFileByMeta(
      UniqueId id, ContentType contentType) async {
    try {
      final localFile =
          await fileLocalDataSource.getFileByMeta(id.getOrCrash, contentType);
      if (localFile == null && await networkConnection.isConnected) {
        final networkFile =
            await fileNetworkDataSource.getFileById(id.getOrCrash);
        return right(networkFile.file);
      } else if (localFile != null) {
        return right(localFile.file);
      } else {
        return left(StorageFailure.networkFailure());
      }
    } on NetworkException {
      return left(StorageFailure.networkFailure());
    } on CacheException {
      return left(StorageFailure.insertFailure());
    }
  }
}
