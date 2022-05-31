// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserNews {
  String get name => throw _privateConstructorUsedError;
  String get imageProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNewsCopyWith<UserNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNewsCopyWith<$Res> {
  factory $UserNewsCopyWith(UserNews value, $Res Function(UserNews) then) =
      _$UserNewsCopyWithImpl<$Res>;
  $Res call({String name, String imageProfile});
}

/// @nodoc
class _$UserNewsCopyWithImpl<$Res> implements $UserNewsCopyWith<$Res> {
  _$UserNewsCopyWithImpl(this._value, this._then);

  final UserNews _value;
  // ignore: unused_field
  final $Res Function(UserNews) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageProfile = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: imageProfile == freezed
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserNewsCopyWith<$Res> implements $UserNewsCopyWith<$Res> {
  factory _$$_UserNewsCopyWith(
          _$_UserNews value, $Res Function(_$_UserNews) then) =
      __$$_UserNewsCopyWithImpl<$Res>;
  @override
  $Res call({String name, String imageProfile});
}

/// @nodoc
class __$$_UserNewsCopyWithImpl<$Res> extends _$UserNewsCopyWithImpl<$Res>
    implements _$$_UserNewsCopyWith<$Res> {
  __$$_UserNewsCopyWithImpl(
      _$_UserNews _value, $Res Function(_$_UserNews) _then)
      : super(_value, (v) => _then(v as _$_UserNews));

  @override
  _$_UserNews get _value => super._value as _$_UserNews;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageProfile = freezed,
  }) {
    return _then(_$_UserNews(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: imageProfile == freezed
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNews extends _UserNews {
  const _$_UserNews({required this.name, required this.imageProfile})
      : super._();

  @override
  final String name;
  @override
  final String imageProfile;

  @override
  String toString() {
    return 'UserNews(name: $name, imageProfile: $imageProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNews &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.imageProfile, imageProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageProfile));

  @JsonKey(ignore: true)
  @override
  _$$_UserNewsCopyWith<_$_UserNews> get copyWith =>
      __$$_UserNewsCopyWithImpl<_$_UserNews>(this, _$identity);
}

abstract class _UserNews extends UserNews {
  const factory _UserNews(
      {required final String name,
      required final String imageProfile}) = _$_UserNews;
  const _UserNews._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserNewsCopyWith<_$_UserNews> get copyWith =>
      throw _privateConstructorUsedError;
}
