import 'package:dartz/dartz.dart';
import 'package:microblogging/core/error/failure.dart';

import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/repositories.dart';
import '../models/models.dart';

class AuthRepositoryImpl implements IAuthRepository {
  IAuthLocalDataSource localDataSource;

  AuthRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, User>> signIn(SignIn signIn) async {
    try {
      var user = await localDataSource.getLastAuth();
      user ??= await localDataSource.signIn(SignInModel(
        email: signIn.email,
        password: signIn.password,
      ));

      localDataSource.cacheAuth(user);
      return Right(user.toEntity());
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      var result = await localDataSource.signOut();

      return Right(result);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, User>> signUp(SignUp signUp) async {
    try {
      var user = UserModel(
        email: signUp.email,
        name: signUp.name,
        imageProfile: signUp.imageProfile,
        password: signUp.password,
      );

      await localDataSource.cacheAuth(user);

      var result = await localDataSource.signUp(user);

      return Right(result.toEntity());
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<bool> isLogged() async {
    return await localDataSource.isLogged();
  }

  @override
  Future<Either<Failure, User>> getUserCredentials() async {
    try {
      var result = await localDataSource.getLastAuth();

      return Right(result!.toEntity());
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<User> getUser() async {
    var result = await localDataSource.getLastAuth();
    return result!.toEntity();
  }
}
