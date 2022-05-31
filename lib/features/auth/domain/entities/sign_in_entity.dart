import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_entity.freezed.dart';

/// The entity of SignIn
@freezed
class SignIn with _$SignIn {
  /// Creates an [SignIn]
  const factory SignIn({
    required String email,
    required String password,
  }) = _SignIn;
}
