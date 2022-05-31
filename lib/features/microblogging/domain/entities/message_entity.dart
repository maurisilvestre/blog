import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

/// The entity of Message
@freezed
class Message with _$Message {
  /// Creates an [Message]
  const factory Message({
    required String content,
    required DateTime createdAt,
  }) = _Message;
}
