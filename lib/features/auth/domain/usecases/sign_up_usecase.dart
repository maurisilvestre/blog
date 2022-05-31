import 'package:dartz/dartz.dart';
import 'package:microblogging/core/error/failure.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';

abstract class ISignUpUsecase {
  Future<Either<Failure, User>> call(SignUp signUp);
}

class SignUpUsecase implements ISignUpUsecase {
  /// The repository of [SignUp]
  final IAuthRepository repository;

  /// Creates a [SignUpUsecase]
  SignUpUsecase(this.repository);

  @override
  Future<Either<Failure, User>> call(SignUp signUp) async {
    return await repository.signUp(signUp);
  }
}
