import 'package:flutter_test/flutter_test.dart';
import 'package:microblogging/features/auth/data/models/models.dart';
import 'package:microblogging/features/auth/domain/entities/entities.dart';

void main() {
  late UserModel tUserModel = const UserModel(
    email: 'maurisilvestre@gmail.com',
    name: 'Mauri Silvestre do Couto',
    imageProfile:
        'https://lh3.googleusercontent.com/a-/AOh14Gh5CLK-CWTQPcs6vlB489Ze7mtaidrtJ5e40AM2lEM=s576-p-rw-no',
    password: '123456',
  );

  test(
    'should be a subclass of User entity',
    () async {
      // assert
      expect(tUserModel.toEntity(), isA<User>());
    },
  );
}
