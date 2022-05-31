import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_news_entity.freezed.dart';

/// The entity of UserNews
@freezed
class UserNews with _$UserNews {
  /// Required with custom getters or methods
  const UserNews._();

  /// Creates an [UserNews]
  const factory UserNews({
    required String name,
    required String imageProfile,
  }) = _UserNews;
}
