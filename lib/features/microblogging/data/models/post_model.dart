import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'models.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

/// The model of [Post], which is used by [IMicrobloggingApiDatasource]
@freezed
class PostModel with _$PostModel {
  /// Required with custom getters or methods
  const PostModel._();

  /// Creates an [PostModel]
  const factory PostModel({
    required String id,
    required UserPostModel user,
    required MessageModel message,
  }) = _PostModel;

  /// Maps a json-string to model
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  /// Maps the model to an entity
  Post toEntity() {
    return Post(
      id: id,
      user: user.toEntity(),
      message: message.toEntity(),
    );
  }
}
