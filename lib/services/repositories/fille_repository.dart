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
  Future<Option<StorageFailure>> addFile(MyDeckFile file);
  Future<Either<StorageFailure, MyDeckFile>> getFileById(UniqueId id);
}

class FileRepositoryImpl implements FileRepository {
  final NetworkConnection networkConnection;
  final FileLocalDataSource fileLocalDataSource;
  final FileNetworkDataSource fileNetworkDataSource;

  FileRepositoryImpl(this.networkConnection, this.fileLocalDataSource,
      this.fileNetworkDataSource);

  @override
  Future<Option<StorageFailure>> addFile(MyDeckFile file) async {
    try {
      await fileLocalDataSource.addFile(MyDeckFileDto.fromDomain(file));
      if (await networkConnection.isConnected) {
        fileNetworkDataSource.addFile(MyDeckFileDto.fromDomain(file));
      }
      return none();
    } on NetworkException {
      return some(StorageFailure.networkFailure());
    } on CacheException {
      return some(StorageFailure.insertFailure());
    }
  }

  @override
  Future<Either<StorageFailure, MyDeckFile>> getFileById(UniqueId id) async {
    var cachedFile = await fileLocalDataSource.getFileById(id.getOrCrash);
    if (cachedFile == null && await networkConnection.isConnected) {
      cachedFile = await fileNetworkDataSource.getFileById(id.getOrCrash);
      return cachedFile == null
          ? left(StorageFailure.getFailure())
          : right(cachedFile.toDomain());
    } else if (cachedFile != null) {
      networkConnection.isConnected.then((connected) async {
        if (connected) {
          final netFile =
              await fileNetworkDataSource.getFileById(id.getOrCrash);
          fileLocalDataSource.addFile(netFile);
        }
      });
      return right(cachedFile.toDomain());
    } else {
      return left(StorageFailure.getFailure());
    }
  }
}
