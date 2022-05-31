// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// The model of [User], which is used by [IMicrobloggingApiDatasource]
@freezed
class UserModel with _$UserModel {
  /// Required with custom getters or methods
  const UserModel._();

  /// Creates an [UserModel]
  const factory UserModel({
    required String email,
    required String name,
    @JsonKey(name: 'profile_picture') required String imageProfile,
    String? password,
  }) = _UserModel;

  /// Maps a json-string to model
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// Maps the model to an entity
  User toEntity() {
    return User(
      email: email,
      name: name,
      imageProfile: imageProfile,
      password: password ?? "",
    );
  }
}
