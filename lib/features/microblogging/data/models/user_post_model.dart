// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'user_post_model.freezed.dart';
part 'user_post_model.g.dart';

/// The model of [User], which is used by [IMicrobloggingApiDatasource]
@freezed
class UserPostModel with _$UserPostModel {
  /// Required with custom getters or methods
  const UserPostModel._();

  /// Creates an [UserPostModel]
  const factory UserPostModel({
    required String name,
    required String email,
    required String imageProfile,
  }) = _UserPostModel;

  /// Maps a json-string to model
  factory UserPostModel.fromJson(Map<String, dynamic> json) =>
      _$UserPostModelFromJson(json);

  /// Maps the model to an entity
  UserPost toEntity() {
    return UserPost(name: name, email: email, imageProfile: imageProfile);
  }
}
