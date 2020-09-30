import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/datasources/file_local_datasource.dart';
import 'package:mydeck/services/datasources/file_network_datasource.dart';
import 'package:mydeck/utils/network_connection.dart';

abstract class FileRepository {
  Future<Option<StorageFailure>> addFile(MDFile file);
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
  Future<Option<StorageFailure>> addFile(MDFile file) async {
    try {
      await fileLocalDataSource.addFile(await MDFileDto.fromDomain(file));
      if (await networkConnection.isConnected) {
        fileNetworkDataSource.addFile(await MDFileDto.fromDomain(file));
      }
      return none();
    } on NetworkException {
      return some(StorageFailure.networkFailure());
    } on CacheException {
      return some(StorageFailure.insertFailure());
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
            await fileNetworkDataSource.getFileById(id.getOrCrash);
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
      return left(StorageFailure.insertFailure());
    }
  }
}
