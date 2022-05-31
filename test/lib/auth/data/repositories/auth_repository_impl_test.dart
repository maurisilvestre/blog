import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:microblogging/features/auth/data/datasources/repositories.dart';
import 'package:microblogging/features/auth/data/models/models.dart';
import 'package:microblogging/features/auth/data/repositories/repositories.dart';
import 'package:microblogging/features/auth/domain/entities/entities.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_impl_test.mocks.dart';

@GenerateMocks([IAuthLocalDataSource])
void main() {
  late AuthRepositoryImpl repository;
  late MockIAuthLocalDataSource mockLocalDataSource;

  setUp(() {
    mockLocalDataSource = MockIAuthLocalDataSource();
    repository = AuthRepositoryImpl(
      localDataSource: mockLocalDataSource,
    );
  });

  group('getConcreteNumberTrivia', () {
    late SignIn tLogin =
        const SignIn(email: 'maurisilvestre@gmail.com', password: '123456');

    late UserModel tUser = const UserModel(
      email: 'maurisilvestre@gmail.com',
      name: 'Mauri Silvestre do Couto',
      imageProfile:
          'https://lh3.googleusercontent.com/a-/AOh14Gh5CLK-CWTQPcs6vlB489Ze7mtaidrtJ5e40AM2lEM=s576-p-rw-no',
      password: '123456',
    );

    test(
      'should return local data when the call to local data source is successful',
      () async {
        // arrange
        when(mockLocalDataSource.getLastAuth()).thenAnswer((_) async => tUser);
        // act
        final result = await repository.signIn(tLogin);
        // assert
        verify(mockLocalDataSource.getLastAuth());
        expect(result, equals(Right(tUser.toEntity())));
      },
    );
  });
}
