import 'package:dartz/dartz.dart';
import 'package:microblogging/core/error/failure.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';

abstract class ISignInUsecase {
  Future<Either<Failure, User>> call(SignIn login);
}

class SignInUsecase implements ISignInUsecase {
  /// The repository of [SignIn]
  final IAuthRepository repository;

  /// Creates a [SignInUsecase]
  SignInUsecase(this.repository);

  @override
  Future<Either<Failure, User>> call(SignIn login) async {
    return await repository.signIn(login);
  }
}
