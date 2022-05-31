// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:microblogging/core/services/auth/auth_service.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(
    this._postsRepository,
    this._authService,
  ) : super(const PostState()) {
    on<_GetPosts>(_getPosts);
    on<_GetNews>(_getNews);
    on<_SavePost>(_savePost);
    on<_DeletePost>(_deletePost);
    on<_EditPost>(_editPost);
    on<_Refreshed>(_onRefreshed);
  }

  final IPostRepository _postsRepository;
  final IAuthService _authService;

  Future<void> _getNews(_GetNews event, Emitter<PostState> emit) async {
    emit(state.copyWith(status: PostStatus.loading));
    final result = await _postsRepository.getNews();
    result.fold((l) => emit(state.copyWith(status: PostStatus.failure)),
        (news) => emit(state.copyWith(news: news, status: PostStatus.success)));
  }

  Future<void> _getPosts(_GetPosts event, Emitter<PostState> emit) async {
    emit(state.copyWith(status: PostStatus.loading));
    final result = await _postsRepository.getPosts();
    result.fold(
        (l) => emit(state.copyWith(status: PostStatus.failure)),
        (posts) =>
            emit(state.copyWith(posts: posts, status: PostStatus.success)));
  }

  Future<void> _savePost(_SavePost event, Emitter<PostState> emit) async {
    var uuid = const Uuid();

    emit(state.copyWith(status: PostStatus.loading));

    var user = await getUser();
    final result = await _postsRepository.savePost(Post(
        id: uuid.v4(),
        user: UserPost(
          name: user!.name,
          email: user.email,
          imageProfile: user.imageProfile,
        ),
        message: Message(content: event.post, createdAt: DateTime.now())));

    result.fold(
        (l) => emit(state.copyWith(status: PostStatus.failure)),
        (posts) =>
            emit(state.copyWith(status: PostStatus.success, posts: posts)));
  }

  Future<void> _deletePost(_DeletePost event, Emitter<PostState> emit) async {
    emit(state.copyWith(status: PostStatus.loading));
    var user = await getUser();

    if (event.post.user.email == user!.email) {
      final result = await _postsRepository.deletePost(event.post);

      result.fold(
          (l) => emit(state.copyWith(status: PostStatus.failure)),
          (posts) =>
              {emit(state.copyWith(status: PostStatus.success, posts: posts))});
    }
  }

  Future<void> _editPost(_EditPost event, Emitter<PostState> emit) async {
    emit(state.copyWith(status: PostStatus.loading));

    final result = await _postsRepository.savePost(event.post.copyWith(
        message: event.post.message.copyWith(content: event.content)));

    result.fold(
        (l) => emit(state.copyWith(status: PostStatus.failure)),
        (posts) =>
            {emit(state.copyWith(status: PostStatus.success, posts: posts))});
  }

  Future<UserPost?> getUser() async {
    var resultUser = await _authService.getUserCredentials();

    return resultUser.fold(
        (l) => null,
        (r) => UserPost(
            name: r.name, email: r.email, imageProfile: r.imageProfile));
  }

  Future<void> _onRefreshed(_Refreshed event, Emitter<PostState> emit) async {}
}
