// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

/// The model of [Message], which is used by [IMicrobloggingApiDatasource]
@freezed
class MessageModel with _$MessageModel {
  /// Required with custom getters or methods
  const MessageModel._();

  /// Creates an [MessageModel]
  const factory MessageModel({
    required String content,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _MessageModel;

  /// Maps a json-string to model
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  /// Maps the model to an entity
  Message toEntity() {
    return Message(
      content: content,
      createdAt: createdAt,
    );
  }
}
