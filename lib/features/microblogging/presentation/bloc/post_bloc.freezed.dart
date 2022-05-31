// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getNews,
    required TResult Function(String post) savePost,
    required TResult Function(Post post) deletePost,
    required TResult Function(Post post, String content) editPost,
    required TResult Function() refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
    required TResult Function(_GetNews value) getNews,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_DeletePost value) deletePost,
    required TResult Function(_EditPost value) editPost,
    required TResult Function(_Refreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;
}

/// @nodoc
abstract class _$$_GetPostsCopyWith<$Res> {
  factory _$$_GetPostsCopyWith(
          _$_GetPosts value, $Res Function(_$_GetPosts) then) =
      __$$_GetPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPostsCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$_GetPostsCopyWith<$Res> {
  __$$_GetPostsCopyWithImpl(
      _$_GetPosts _value, $Res Function(_$_GetPosts) _then)
      : super(_value, (v) => _then(v as _$_GetPosts));

  @override
  _$_GetPosts get _value => super._value as _$_GetPosts;
}

/// @nodoc

class _$_GetPosts with DiagnosticableTreeMixin implements _GetPosts {
  const _$_GetPosts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.getPosts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PostEvent.getPosts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getNews,
    required TResult Function(String post) savePost,
    required TResult Function(Post post) deletePost,
    required TResult Function(Post post, String content) editPost,
    required TResult Function() refreshed,
  }) {
    return getPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
  }) {
    return getPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
    required TResult Function(_GetNews value) getNews,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_DeletePost value) deletePost,
    required TResult Function(_EditPost value) editPost,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return getPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
  }) {
    return getPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts(this);
    }
    return orElse();
  }
}

abstract class _GetPosts implements PostEvent {
  const factory _GetPosts() = _$_GetPosts;
}

/// @nodoc
abstract class _$$_GetNewsCopyWith<$Res> {
  factory _$$_GetNewsCopyWith(
          _$_GetNews value, $Res Function(_$_GetNews) then) =
      __$$_GetNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetNewsCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$_GetNewsCopyWith<$Res> {
  __$$_GetNewsCopyWithImpl(_$_GetNews _value, $Res Function(_$_GetNews) _then)
      : super(_value, (v) => _then(v as _$_GetNews));

  @override
  _$_GetNews get _value => super._value as _$_GetNews;
}

/// @nodoc

class _$_GetNews with DiagnosticableTreeMixin implements _GetNews {
  const _$_GetNews();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.getNews()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PostEvent.getNews'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getNews,
    required TResult Function(String post) savePost,
    required TResult Function(Post post) deletePost,
    required TResult Function(Post post, String content) editPost,
    required TResult Function() refreshed,
  }) {
    return getNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
  }) {
    return getNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (getNews != null) {
      return getNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
    required TResult Function(_GetNews value) getNews,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_DeletePost value) deletePost,
    required TResult Function(_EditPost value) editPost,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return getNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
  }) {
    return getNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (getNews != null) {
      return getNews(this);
    }
    return orElse();
  }
}

abstract class _GetNews implements PostEvent {
  const factory _GetNews() = _$_GetNews;
}

/// @nodoc
abstract class _$$_SavePostCopyWith<$Res> {
  factory _$$_SavePostCopyWith(
          _$_SavePost value, $Res Function(_$_SavePost) then) =
      __$$_SavePostCopyWithImpl<$Res>;
  $Res call({String post});
}

/// @nodoc
class __$$_SavePostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$_SavePostCopyWith<$Res> {
  __$$_SavePostCopyWithImpl(
      _$_SavePost _value, $Res Function(_$_SavePost) _then)
      : super(_value, (v) => _then(v as _$_SavePost));

  @override
  _$_SavePost get _value => super._value as _$_SavePost;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_SavePost(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SavePost with DiagnosticableTreeMixin implements _SavePost {
  const _$_SavePost(this.post);

  @override
  final String post;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.savePost(post: $post)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.savePost'))
      ..add(DiagnosticsProperty('post', post));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePost &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$_SavePostCopyWith<_$_SavePost> get copyWith =>
      __$$_SavePostCopyWithImpl<_$_SavePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getNews,
    required TResult Function(String post) savePost,
    required TResult Function(Post post) deletePost,
    required TResult Function(Post post, String content) editPost,
    required TResult Function() refreshed,
  }) {
    return savePost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
  }) {
    return savePost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
    required TResult Function(_GetNews value) getNews,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_DeletePost value) deletePost,
    required TResult Function(_EditPost value) editPost,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
  }) {
    return savePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(this);
    }
    return orElse();
  }
}

abstract class _SavePost implements PostEvent {
  const factory _SavePost(final String post) = _$_SavePost;

  String get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SavePostCopyWith<_$_SavePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePostCopyWith<$Res> {
  factory _$$_DeletePostCopyWith(
          _$_DeletePost value, $Res Function(_$_DeletePost) then) =
      __$$_DeletePostCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$_DeletePostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$_DeletePostCopyWith<$Res> {
  __$$_DeletePostCopyWithImpl(
      _$_DeletePost _value, $Res Function(_$_DeletePost) _then)
      : super(_value, (v) => _then(v as _$_DeletePost));

  @override
  _$_DeletePost get _value => super._value as _$_DeletePost;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_DeletePost(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_DeletePost with DiagnosticableTreeMixin implements _DeletePost {
  const _$_DeletePost(this.post);

  @override
  final Post post;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.deletePost(post: $post)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.deletePost'))
      ..add(DiagnosticsProperty('post', post));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePost &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$_DeletePostCopyWith<_$_DeletePost> get copyWith =>
      __$$_DeletePostCopyWithImpl<_$_DeletePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getNews,
    required TResult Function(String post) savePost,
    required TResult Function(Post post) deletePost,
    required TResult Function(Post post, String content) editPost,
    required TResult Function() refreshed,
  }) {
    return deletePost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
  }) {
    return deletePost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
    required TResult Function(_GetNews value) getNews,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_DeletePost value) deletePost,
    required TResult Function(_EditPost value) editPost,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return deletePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
  }) {
    return deletePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(this);
    }
    return orElse();
  }
}

abstract class _DeletePost implements PostEvent {
  const factory _DeletePost(final Post post) = _$_DeletePost;

  Post get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeletePostCopyWith<_$_DeletePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditPostCopyWith<$Res> {
  factory _$$_EditPostCopyWith(
          _$_EditPost value, $Res Function(_$_EditPost) then) =
      __$$_EditPostCopyWithImpl<$Res>;
  $Res call({Post post, String content});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$_EditPostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$_EditPostCopyWith<$Res> {
  __$$_EditPostCopyWithImpl(
      _$_EditPost _value, $Res Function(_$_EditPost) _then)
      : super(_value, (v) => _then(v as _$_EditPost));

  @override
  _$_EditPost get _value => super._value as _$_EditPost;

  @override
  $Res call({
    Object? post = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_EditPost(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_EditPost with DiagnosticableTreeMixin implements _EditPost {
  const _$_EditPost(this.post, this.content);

  @override
  final Post post;
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.editPost(post: $post, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.editPost'))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPost &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_EditPostCopyWith<_$_EditPost> get copyWith =>
      __$$_EditPostCopyWithImpl<_$_EditPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getNews,
    required TResult Function(String post) savePost,
    required TResult Function(Post post) deletePost,
    required TResult Function(Post post, String content) editPost,
    required TResult Function() refreshed,
  }) {
    return editPost(post, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
  }) {
    return editPost?.call(post, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (editPost != null) {
      return editPost(post, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
    required TResult Function(_GetNews value) getNews,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_DeletePost value) deletePost,
    required TResult Function(_EditPost value) editPost,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return editPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
  }) {
    return editPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (editPost != null) {
      return editPost(this);
    }
    return orElse();
  }
}

abstract class _EditPost implements PostEvent {
  const factory _EditPost(final Post post, final String content) = _$_EditPost;

  Post get post => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EditPostCopyWith<_$_EditPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshedCopyWith<$Res> {
  factory _$$_RefreshedCopyWith(
          _$_Refreshed value, $Res Function(_$_Refreshed) then) =
      __$$_RefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshedCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$_RefreshedCopyWith<$Res> {
  __$$_RefreshedCopyWithImpl(
      _$_Refreshed _value, $Res Function(_$_Refreshed) _then)
      : super(_value, (v) => _then(v as _$_Refreshed));

  @override
  _$_Refreshed get _value => super._value as _$_Refreshed;
}

/// @nodoc

class _$_Refreshed with DiagnosticableTreeMixin implements _Refreshed {
  const _$_Refreshed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.refreshed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PostEvent.refreshed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getNews,
    required TResult Function(String post) savePost,
    required TResult Function(Post post) deletePost,
    required TResult Function(Post post, String content) editPost,
    required TResult Function() refreshed,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getNews,
    TResult Function(String post)? savePost,
    TResult Function(Post post)? deletePost,
    TResult Function(Post post, String content)? editPost,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
    required TResult Function(_GetNews value) getNews,
    required TResult Function(_SavePost value) savePost,
    required TResult Function(_DeletePost value) deletePost,
    required TResult Function(_EditPost value) editPost,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    TResult Function(_GetNews value)? getNews,
    TResult Function(_SavePost value)? savePost,
    TResult Function(_DeletePost value)? deletePost,
    TResult Function(_EditPost value)? editPost,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements PostEvent {
  const factory _Refreshed() = _$_Refreshed;
}

/// @nodoc
mixin _$PostState {
  PostStatus get status => throw _privateConstructorUsedError;
  List<News> get news => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  String get post => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call(
      {PostStatus status,
      List<News> news,
      List<Post> posts,
      String post,
      String error});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? news = freezed,
    Object? posts = freezed,
    Object? post = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$$_PostStateCopyWith(
          _$_PostState value, $Res Function(_$_PostState) then) =
      __$$_PostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PostStatus status,
      List<News> news,
      List<Post> posts,
      String post,
      String error});
}

/// @nodoc
class __$$_PostStateCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$$_PostStateCopyWith<$Res> {
  __$$_PostStateCopyWithImpl(
      _$_PostState _value, $Res Function(_$_PostState) _then)
      : super(_value, (v) => _then(v as _$_PostState));

  @override
  _$_PostState get _value => super._value as _$_PostState;

  @override
  $Res call({
    Object? status = freezed,
    Object? news = freezed,
    Object? posts = freezed,
    Object? post = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_PostState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      news: news == freezed
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostState with DiagnosticableTreeMixin implements _PostState {
  const _$_PostState(
      {this.status = PostStatus.initial,
      final List<News> news = const [],
      final List<Post> posts = const [],
      this.post = '',
      this.error = ''})
      : _news = news,
        _posts = posts;

  @override
  @JsonKey()
  final PostStatus status;
  final List<News> _news;
  @override
  @JsonKey()
  List<News> get news {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  final List<Post> _posts;
  @override
  @JsonKey()
  List<Post> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final String post;
  @override
  @JsonKey()
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState(status: $status, news: $news, posts: $posts, post: $post, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('news', news))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_news),
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      __$$_PostStateCopyWithImpl<_$_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {final PostStatus status,
      final List<News> news,
      final List<Post> posts,
      final String post,
      final String error}) = _$_PostState;

  @override
  PostStatus get status => throw _privateConstructorUsedError;
  @override
  List<News> get news => throw _privateConstructorUsedError;
  @override
  List<Post> get posts => throw _privateConstructorUsedError;
  @override
  String get post => throw _privateConstructorUsedError;
  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      throw _privateConstructorUsedError;
}
