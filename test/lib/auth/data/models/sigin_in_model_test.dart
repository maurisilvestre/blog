import 'package:flutter_test/flutter_test.dart';
import 'package:microblogging/features/auth/data/models/models.dart';
import 'package:microblogging/features/auth/domain/entities/entities.dart';

void main() {
  late SignInModel tSignInModel =
      const SignInModel(email: 'maurisilvestre@gmail.com', password: '123456');

  test(
    'should be a subclass of Login entity',
    () async {
      // assert
      expect(tSignInModel.toEntity(), isA<SignIn>());
    },
  );
}
