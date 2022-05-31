import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/entities.dart';

abstract class IAuthRepository {
  Future<bool> isLogged();
  Future<Either<Failure, User>> signIn(SignIn signIn);
  Future<Either<Failure, User>> signUp(SignUp signUp);
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, User>> getUserCredentials();
  Future<User> getUser();
}
