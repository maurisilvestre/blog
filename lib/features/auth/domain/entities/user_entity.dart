import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

/// The entity of User
@freezed
class User with _$User {
  /// Required with custom getters or methods
  const User._();

  /// Creates an [User]
  const factory User({
    required String email,
    required String name,
    required String imageProfile,
    required String password,
  }) = UserDetailed;
}
