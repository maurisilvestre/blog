import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post_entity.freezed.dart';

/// The entity of UserPost
@freezed
class UserPost with _$UserPost {
  /// Required with custom getters or methods
  const UserPost._();

  /// Creates an [UserPost]
  const factory UserPost({
    required String name,
    required String email,
    required String imageProfile,
  }) = _UserPost;
}
