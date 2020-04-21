import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<FailureType, ReturnType, Params> {
  Future<Either<FailureType, ReturnType>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
