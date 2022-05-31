import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'post_entity.freezed.dart';

/// The entity of Post
@freezed
class Post with _$Post {
  /// Creates an [Post]
  const factory Post({
    required String id,
    required UserPost user,
    required Message message,
  }) = _Post;
}
