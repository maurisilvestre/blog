// Mocks generated by Mockito 5.2.0 from annotations
// in microblogging/test/lib/auth/domain/usecases/login_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i2;
import 'package:microblogging/core/error/failure.dart' as _i6;
import 'package:microblogging/features/auth/domain/entities/entities.dart'
    as _i3;
import 'package:microblogging/features/auth/domain/repositories/auth_repository.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeUser_1 extends _i1.Fake implements _i3.User {}

/// A class which mocks [IAuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthRepository extends _i1.Mock implements _i4.IAuthRepository {
  MockIAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<bool> isLogged() =>
      (super.noSuchMethod(Invocation.method(#isLogged, []),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, _i3.User>> signIn(_i3.SignIn? signIn) =>
      (super.noSuchMethod(Invocation.method(#signIn, [signIn]),
              returnValue: Future<_i2.Either<_i6.Failure, _i3.User>>.value(
                  _FakeEither_0<_i6.Failure, _i3.User>()))
          as _i5.Future<_i2.Either<_i6.Failure, _i3.User>>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, _i3.User>> signUp(_i3.SignUp? signUp) =>
      (super.noSuchMethod(Invocation.method(#signUp, [signUp]),
              returnValue: Future<_i2.Either<_i6.Failure, _i3.User>>.value(
                  _FakeEither_0<_i6.Failure, _i3.User>()))
          as _i5.Future<_i2.Either<_i6.Failure, _i3.User>>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, void>> signOut() =>
      (super.noSuchMethod(Invocation.method(#signOut, []),
              returnValue: Future<_i2.Either<_i6.Failure, void>>.value(
                  _FakeEither_0<_i6.Failure, void>()))
          as _i5.Future<_i2.Either<_i6.Failure, void>>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, _i3.User>> getUserCredentials() =>
      (super.noSuchMethod(Invocation.method(#getUserCredentials, []),
              returnValue: Future<_i2.Either<_i6.Failure, _i3.User>>.value(
                  _FakeEither_0<_i6.Failure, _i3.User>()))
          as _i5.Future<_i2.Either<_i6.Failure, _i3.User>>);
  @override
  _i5.Future<_i3.User> getUser() =>
      (super.noSuchMethod(Invocation.method(#getUser, []),
              returnValue: Future<_i3.User>.value(_FakeUser_1()))
          as _i5.Future<_i3.User>);
}