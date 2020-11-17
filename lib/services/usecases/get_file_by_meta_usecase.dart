import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class GetFileByMetaUseCase
    implements UseCase<StorageFailure<File>, File, Params> {
  final FileRepository fileRepository;

  GetFileByMetaUseCase({@required this.fileRepository});

  @override
  Future<Either<StorageFailure<File>, File>> call(Params params) {
    return fileRepository.getFileByMeta(params.id, params.fileType);
  }
}

class Params {
  final UniqueId id;
  final FileType fileType;

  Params({@required this.id, @required this.fileType});
}
