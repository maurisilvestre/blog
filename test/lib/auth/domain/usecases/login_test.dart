import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:microblogging/features/auth/domain/entities/entities.dart';
import 'package:microblogging/features/auth/domain/repositories/repositories.dart';
import 'package:microblogging/features/auth/domain/usecases/usecases.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_test.mocks.dart';

@GenerateMocks([IAuthRepository])
void main() {
  late SignInUsecase usecase;
  late MockIAuthRepository repository;

  setUp(() {
    repository = MockIAuthRepository();
    usecase = SignInUsecase(repository);
  });

  late SignIn tLogin =
      const SignIn(email: 'maurisilvestre@gmail.com', password: '123456');
  late User tUser = const UserDetailed(
    email: 'maurisilvestre@gmail.com',
    name: 'Mauri Silvestre do Couto',
    imageProfile:
        'https://lh3.googleusercontent.com/a-/AOh14Gh5CLK-CWTQPcs6vlB489Ze7mtaidrtJ5e40AM2lEM=s576-p-rw-no',
    password: '123456',
  );

  test(
    'Should call respository successfully',
    () async {
      when(repository.signIn(any)).thenAnswer((_) async => Right(tUser));

      final result = await usecase.call(tLogin);

      expect(result, Right(tUser));

      verify(repository.signIn(tLogin));

      verifyNoMoreInteractions(repository);
    },
  );
}
