// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserNewsModel _$UserNewsModelFromJson(Map<String, dynamic> json) {
  return _UserNewsModel.fromJson(json);
}

/// @nodoc
mixin _$UserNewsModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String get imageProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNewsModelCopyWith<UserNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNewsModelCopyWith<$Res> {
  factory $UserNewsModelCopyWith(
          UserNewsModel value, $Res Function(UserNewsModel) then) =
      _$UserNewsModelCopyWithImpl<$Res>;
  $Res call(
      {String name, @JsonKey(name: 'profile_picture') String imageProfile});
}

/// @nodoc
class _$UserNewsModelCopyWithImpl<$Res>
    implements $UserNewsModelCopyWith<$Res> {
  _$UserNewsModelCopyWithImpl(this._value, this._then);

  final UserNewsModel _value;
  // ignore: unused_field
  final $Res Function(UserNewsModel) _then;

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
abstract class _$$_UserNewsModelCopyWith<$Res>
    implements $UserNewsModelCopyWith<$Res> {
  factory _$$_UserNewsModelCopyWith(
          _$_UserNewsModel value, $Res Function(_$_UserNewsModel) then) =
      __$$_UserNewsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, @JsonKey(name: 'profile_picture') String imageProfile});
}

/// @nodoc
class __$$_UserNewsModelCopyWithImpl<$Res>
    extends _$UserNewsModelCopyWithImpl<$Res>
    implements _$$_UserNewsModelCopyWith<$Res> {
  __$$_UserNewsModelCopyWithImpl(
      _$_UserNewsModel _value, $Res Function(_$_UserNewsModel) _then)
      : super(_value, (v) => _then(v as _$_UserNewsModel));

  @override
  _$_UserNewsModel get _value => super._value as _$_UserNewsModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageProfile = freezed,
  }) {
    return _then(_$_UserNewsModel(
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
@JsonSerializable()
class _$_UserNewsModel extends _UserNewsModel {
  const _$_UserNewsModel(
      {required this.name,
      @JsonKey(name: 'profile_picture') required this.imageProfile})
      : super._();

  factory _$_UserNewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserNewsModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'profile_picture')
  final String imageProfile;

  @override
  String toString() {
    return 'UserNewsModel(name: $name, imageProfile: $imageProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNewsModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.imageProfile, imageProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageProfile));

  @JsonKey(ignore: true)
  @override
  _$$_UserNewsModelCopyWith<_$_UserNewsModel> get copyWith =>
      __$$_UserNewsModelCopyWithImpl<_$_UserNewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserNewsModelToJson(this);
  }
}

abstract class _UserNewsModel extends UserNewsModel {
  const factory _UserNewsModel(
      {required final String name,
      @JsonKey(name: 'profile_picture')
          required final String imageProfile}) = _$_UserNewsModel;
  const _UserNewsModel._() : super._();

  factory _UserNewsModel.fromJson(Map<String, dynamic> json) =
      _$_UserNewsModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profile_picture')
  String get imageProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserNewsModelCopyWith<_$_UserNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
