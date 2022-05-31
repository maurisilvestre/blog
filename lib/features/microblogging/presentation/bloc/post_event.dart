part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.getPosts() = _GetPosts;
  const factory PostEvent.getNews() = _GetNews;
  const factory PostEvent.savePost(String post) = _SavePost;
  const factory PostEvent.deletePost(Post post) = _DeletePost;
  const factory PostEvent.editPost(Post post, String content) = _EditPost;
  const factory PostEvent.refreshed() = _Refreshed;
}
