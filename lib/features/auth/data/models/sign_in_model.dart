import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

/// The model of [SignIn], which is used by [IMicrobloggingApiDatasource]
@freezed
class SignInModel with _$SignInModel {
  /// Required with custom getters or methods
  const SignInModel._();

  /// Creates an [SignInModel]
  const factory SignInModel({
    required String email,
    required String password,
  }) = _SignInModel;

  /// Maps a json-string to model
  factory SignInModel.fromJson(Map<String, dynamic> json) =>
      _$SignInModelFromJson(json);

  /// Maps the model to an entity
  SignIn toEntity() {
    return SignIn(
      email: email,
      password: password,
    );
  }
}
