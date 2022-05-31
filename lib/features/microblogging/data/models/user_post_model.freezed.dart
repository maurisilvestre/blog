// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPostModel _$UserPostModelFromJson(Map<String, dynamic> json) {
  return _UserPostModel.fromJson(json);
}

/// @nodoc
mixin _$UserPostModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get imageProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPostModelCopyWith<UserPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostModelCopyWith<$Res> {
  factory $UserPostModelCopyWith(
          UserPostModel value, $Res Function(UserPostModel) then) =
      _$UserPostModelCopyWithImpl<$Res>;
  $Res call({String name, String email, String imageProfile});
}

/// @nodoc
class _$UserPostModelCopyWithImpl<$Res>
    implements $UserPostModelCopyWith<$Res> {
  _$UserPostModelCopyWithImpl(this._value, this._then);

  final UserPostModel _value;
  // ignore: unused_field
  final $Res Function(UserPostModel) _then;

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
abstract class _$$_UserPostModelCopyWith<$Res>
    implements $UserPostModelCopyWith<$Res> {
  factory _$$_UserPostModelCopyWith(
          _$_UserPostModel value, $Res Function(_$_UserPostModel) then) =
      __$$_UserPostModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String imageProfile});
}

/// @nodoc
class __$$_UserPostModelCopyWithImpl<$Res>
    extends _$UserPostModelCopyWithImpl<$Res>
    implements _$$_UserPostModelCopyWith<$Res> {
  __$$_UserPostModelCopyWithImpl(
      _$_UserPostModel _value, $Res Function(_$_UserPostModel) _then)
      : super(_value, (v) => _then(v as _$_UserPostModel));

  @override
  _$_UserPostModel get _value => super._value as _$_UserPostModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? imageProfile = freezed,
  }) {
    return _then(_$_UserPostModel(
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
@JsonSerializable()
class _$_UserPostModel extends _UserPostModel {
  const _$_UserPostModel(
      {required this.name, required this.email, required this.imageProfile})
      : super._();

  factory _$_UserPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserPostModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String imageProfile;

  @override
  String toString() {
    return 'UserPostModel(name: $name, email: $email, imageProfile: $imageProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPostModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.imageProfile, imageProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(imageProfile));

  @JsonKey(ignore: true)
  @override
  _$$_UserPostModelCopyWith<_$_UserPostModel> get copyWith =>
      __$$_UserPostModelCopyWithImpl<_$_UserPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPostModelToJson(this);
  }
}

abstract class _UserPostModel extends UserPostModel {
  const factory _UserPostModel(
      {required final String name,
      required final String email,
      required final String imageProfile}) = _$_UserPostModel;
  const _UserPostModel._() : super._();

  factory _UserPostModel.fromJson(Map<String, dynamic> json) =
      _$_UserPostModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get imageProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserPostModelCopyWith<_$_UserPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
