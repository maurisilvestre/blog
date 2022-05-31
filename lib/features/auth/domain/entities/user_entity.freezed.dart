// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageProfile => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String email, String name, String imageProfile, String password});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? imageProfile = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: imageProfile == freezed
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$UserDetailedCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserDetailedCopyWith(
          _$UserDetailed value, $Res Function(_$UserDetailed) then) =
      __$$UserDetailedCopyWithImpl<$Res>;
  @override
  $Res call({String email, String name, String imageProfile, String password});
}

/// @nodoc
class __$$UserDetailedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserDetailedCopyWith<$Res> {
  __$$UserDetailedCopyWithImpl(
      _$UserDetailed _value, $Res Function(_$UserDetailed) _then)
      : super(_value, (v) => _then(v as _$UserDetailed));

  @override
  _$UserDetailed get _value => super._value as _$UserDetailed;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? imageProfile = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UserDetailed(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: imageProfile == freezed
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDetailed extends UserDetailed {
  const _$UserDetailed(
      {required this.email,
      required this.name,
      required this.imageProfile,
      required this.password})
      : super._();

  @override
  final String email;
  @override
  final String name;
  @override
  final String imageProfile;
  @override
  final String password;

  @override
  String toString() {
    return 'User(email: $email, name: $name, imageProfile: $imageProfile, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailed &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.imageProfile, imageProfile) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageProfile),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$UserDetailedCopyWith<_$UserDetailed> get copyWith =>
      __$$UserDetailedCopyWithImpl<_$UserDetailed>(this, _$identity);
}

abstract class UserDetailed extends User {
  const factory UserDetailed(
      {required final String email,
      required final String name,
      required final String imageProfile,
      required final String password}) = _$UserDetailed;
  const UserDetailed._() : super._();

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageProfile => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailedCopyWith<_$UserDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}
