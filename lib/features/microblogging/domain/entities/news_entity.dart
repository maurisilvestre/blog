import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'news_entity.freezed.dart';

/// The entity of News
@freezed
class News with _$News {
  /// Creates an [News]
  const factory News({
    required UserNews user,
    required Message message,
  }) = _News;
}
