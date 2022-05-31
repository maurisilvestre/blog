// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'news_request_model.freezed.dart';
part 'news_request_model.g.dart';

/// The model of [News], which is used by [IMicrobloggingApiDatasource]
@freezed
class NewsRequestModel with _$NewsRequestModel {
  /// Required with custom getters or methods
  const NewsRequestModel._();

  /// Creates an [NewsRequestModel]
  const factory NewsRequestModel({
    required List<NewsModel> news,
  }) = _NewsRequestModel;

  /// Maps a json-string to model
  factory NewsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NewsRequestModelFromJson(json);
}
