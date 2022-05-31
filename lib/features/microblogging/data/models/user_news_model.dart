// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'user_news_model.freezed.dart';
part 'user_news_model.g.dart';

/// The model of [User], which is used by [IMicrobloggingApiDatasource]
@freezed
class UserNewsModel with _$UserNewsModel {
  /// Required with custom getters or methods
  const UserNewsModel._();

  /// Creates an [UserNewsModel]
  const factory UserNewsModel({
    required String name,
    @JsonKey(name: 'profile_picture') required String imageProfile,
  }) = _UserNewsModel;

  /// Maps a json-string to model
  factory UserNewsModel.fromJson(Map<String, dynamic> json) =>
      _$UserNewsModelFromJson(json);

  /// Maps the model to an entity
  UserNews toEntity() {
    return UserNews(name: name, imageProfile: imageProfile);
  }
}
