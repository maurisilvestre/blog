import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import 'models.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

/// The model of [News], which is used by [IMicrobloggingApiDatasource]
@freezed
class NewsModel with _$NewsModel {
  /// Required with custom getters or methods
  const NewsModel._();

  /// Creates an [NewsModel]
  const factory NewsModel({
    required UserNewsModel user,
    required MessageModel message,
  }) = _NewsModel;

  /// Maps a json-string to model
  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  /// Maps the model to an entity
  News toEntity() {
    return News(
      user: user.toEntity(),
      message: message.toEntity(),
    );
  }
}
