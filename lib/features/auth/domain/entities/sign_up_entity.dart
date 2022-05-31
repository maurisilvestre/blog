import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_entity.freezed.dart';

/// The entity of SignUp
@freezed
class SignUp with _$SignUp {
  /// Creates an [SignUp]
  const factory SignUp({
    required String email,
    required String name,
    required String imageProfile,
    required String password,
  }) = _SignUp;
}
