import 'package:dartz/dartz.dart';
import 'package:microblogging/core/error/failure.dart';

import '../repositories/repositories.dart';

abstract class ISignOutUsecase {
  Future<Either<Failure, void>> call();
}

class SignOutUsecase implements ISignOutUsecase {
  /// The repository of [SignOut]
  final IAuthRepository repository;

  /// Creates a [SignOutUsecase]
  SignOutUsecase(this.repository);

  @override
  Future<Either<Failure, void>> call() async {
    return await repository.signOut();
  }
}
