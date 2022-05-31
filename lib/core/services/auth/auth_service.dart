import 'package:dartz/dartz.dart';

import '../../../features/auth/domain/entities/entities.dart';
import '../../../features/auth/domain/repositories/repositories.dart';
import '../../error/failure.dart';
import 'auth.dart';

/// External service that allows you to interact with the authentication
abstract class IAuthService {
  Future<bool> isLogged();
  Future<Either<Failure, User>> signIn(SignIn signIn);
  Future<Either<Failure, User>> signUp(SignUp signUp);
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, User>> getUserCredentials();
  Future<User> getUser();
}

/// Concrete implementation of [IAuthService]
class AuthService implements IAuthService {
  final IAuthRepository _authRepository;
  final AuthNotifier _authNotifier;

  ///
  ///  Create new instance of [AuthService]
  ///
  AuthService(this._authRepository, this._authNotifier);

  @override
  Future<bool> isLogged() {
    return _authRepository.isLogged();
  }

  @override
  Future<Either<Failure, User>> signIn(SignIn signIn) {
    return _authRepository.signIn(signIn);
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    await _authRepository.signOut();
    _authNotifier.add(const AuthEvent.checkAuthentication());

    return Future.delayed(Duration.zero, null);
  }

  @override
  Future<Either<Failure, User>> signUp(SignUp signUp) {
    return _authRepository.signUp(signUp);
  }

  @override
  Future<Either<Failure, User>> getUserCredentials() async {
    return await _authRepository.getUserCredentials();
  }

  @override
  Future<User> getUser() async {
    return await _authRepository.getUser();
  }
}
