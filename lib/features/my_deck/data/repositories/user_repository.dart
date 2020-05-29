import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/failures.dart';
import 'package:mydeck/features/my_deck/data/datasources/my_deck_network_datasource.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

abstract class UserRepository {
  Future<Either<StorageFailure, UserModel>> findUserById(String userId);
}

class UserRepositoryImpl implements UserRepository {
  final MyDeckNetworkDataSource networkDataSource;

  UserRepositoryImpl({@required this.networkDataSource});
  @override
  Future<Either<StorageFailure, UserModel>> findUserById(String userId) async {
    try {
      final user = await networkDataSource.getUserById(userId);
      return right(user);
    } catch (e) {
      return left(StorageFailure.getFromServerFailure());
    }
  }
}
