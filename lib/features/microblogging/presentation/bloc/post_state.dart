part of 'post_bloc.dart';

enum PostStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == PostStatus.initial;
  bool get isLoading => this == PostStatus.loading;
  bool get isSuccess => this == PostStatus.success;
  bool get isFailure => this == PostStatus.failure;
}

@freezed
class PostState with _$PostState {
  const factory PostState({
    @Default(PostStatus.initial) PostStatus status,
    @Default([]) List<News> news,
    @Default([]) List<Post> posts,
    @Default('') String post,
    @Default('') String error,
  }) = _PostState;
}
