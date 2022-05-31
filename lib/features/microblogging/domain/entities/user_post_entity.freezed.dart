// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPost {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get imageProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPostCopyWith<UserPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostCopyWith<$Res> {
  factory $UserPostCopyWith(UserPost value, $Res Function(UserPost) then) =
      _$UserPostCopyWithImpl<$Res>;
  $Res call({String name, String email, String imageProfile});
}

/// @nodoc
class _$UserPostCopyWithImpl<$Res> implements $UserPostCopyWith<$Res> {
  _$UserPostCopyWithImpl(this._value, this._then);

  final UserPost _value;
  // ignore: unused_field
  final $Res Function(UserPost) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? imageProfile = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: imageProfile == freezed
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserPostCopyWith<$Res> implements $UserPostCopyWith<$Res> {
  factory _$$_UserPostCopyWith(
          _$_UserPost value, $Res Function(_$_UserPost) then) =
      __$$_UserPostCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String imageProfile});
}

/// @nodoc
class __$$_UserPostCopyWithImpl<$Res> extends _$UserPostCopyWithImpl<$Res>
    implements _$$_UserPostCopyWith<$Res> {
  __$$_UserPostCopyWithImpl(
      _$_UserPost _value, $Res Function(_$_UserPost) _then)
      : super(_value, (v) => _then(v as _$_UserPost));

  @override
  _$_UserPost get _value => super._value as _$_UserPost;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? imageProfile = freezed,
  }) {
    return _then(_$_UserPost(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: imageProfile == freezed
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserPost extends _UserPost {
  const _$_UserPost(
      {required this.name, required this.email, required this.imageProfile})
      : super._();

  @override
  final String name;
  @override
  final String email;
  @override
  final String imageProfile;

  @override
  String toString() {
    return 'UserPost(name: $name, email: $email, imageProfile: $imageProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPost &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.imageProfile, imageProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(imageProfile));

  @JsonKey(ignore: true)
  @override
  _$$_UserPostCopyWith<_$_UserPost> get copyWith =>
      __$$_UserPostCopyWithImpl<_$_UserPost>(this, _$identity);
}

abstract class _UserPost extends UserPost {
  const factory _UserPost(
      {required final String name,
      required final String email,
      required final String imageProfile}) = _$_UserPost;
  const _UserPost._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get imageProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserPostCopyWith<_$_UserPost> get copyWith =>
      throw _privateConstructorUsedError;
}
