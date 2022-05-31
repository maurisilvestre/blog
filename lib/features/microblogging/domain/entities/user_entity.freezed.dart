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
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String name, String imageProfile, String password)
        detailed,
    required TResult Function(String email, String name) simplified,
    required TResult Function(String name, String imageProfile) fromNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailed value) detailed,
    required TResult Function(UserSimplified value) simplified,
    required TResult Function(UserFromNews value) fromNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
    return 'User.detailed(email: $email, name: $name, imageProfile: $imageProfile, password: $password)';
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String name, String imageProfile, String password)
        detailed,
    required TResult Function(String email, String name) simplified,
    required TResult Function(String name, String imageProfile) fromNews,
  }) {
    return detailed(email, name, imageProfile, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
  }) {
    return detailed?.call(email, name, imageProfile, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
    required TResult orElse(),
  }) {
    if (detailed != null) {
      return detailed(email, name, imageProfile, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailed value) detailed,
    required TResult Function(UserSimplified value) simplified,
    required TResult Function(UserFromNews value) fromNews,
  }) {
    return detailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
  }) {
    return detailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
    required TResult orElse(),
  }) {
    if (detailed != null) {
      return detailed(this);
    }
    return orElse();
  }
}

abstract class UserDetailed extends User {
  const factory UserDetailed(
      {required final String email,
      required final String name,
      required final String imageProfile,
      required final String password}) = _$UserDetailed;
  const UserDetailed._() : super._();

  String get email => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  String get imageProfile => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailedCopyWith<_$UserDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSimplifiedCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserSimplifiedCopyWith(
          _$UserSimplified value, $Res Function(_$UserSimplified) then) =
      __$$UserSimplifiedCopyWithImpl<$Res>;
  @override
  $Res call({String email, String name});
}

/// @nodoc
class __$$UserSimplifiedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserSimplifiedCopyWith<$Res> {
  __$$UserSimplifiedCopyWithImpl(
      _$UserSimplified _value, $Res Function(_$UserSimplified) _then)
      : super(_value, (v) => _then(v as _$UserSimplified));

  @override
  _$UserSimplified get _value => super._value as _$UserSimplified;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UserSimplified(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserSimplified extends UserSimplified {
  const _$UserSimplified({required this.email, required this.name}) : super._();

  @override
  final String email;
  @override
  final String name;

  @override
  String toString() {
    return 'User.simplified(email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSimplified &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$UserSimplifiedCopyWith<_$UserSimplified> get copyWith =>
      __$$UserSimplifiedCopyWithImpl<_$UserSimplified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String name, String imageProfile, String password)
        detailed,
    required TResult Function(String email, String name) simplified,
    required TResult Function(String name, String imageProfile) fromNews,
  }) {
    return simplified(email, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
  }) {
    return simplified?.call(email, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
    required TResult orElse(),
  }) {
    if (simplified != null) {
      return simplified(email, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailed value) detailed,
    required TResult Function(UserSimplified value) simplified,
    required TResult Function(UserFromNews value) fromNews,
  }) {
    return simplified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
  }) {
    return simplified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
    required TResult orElse(),
  }) {
    if (simplified != null) {
      return simplified(this);
    }
    return orElse();
  }
}

abstract class UserSimplified extends User {
  const factory UserSimplified(
      {required final String email,
      required final String name}) = _$UserSimplified;
  const UserSimplified._() : super._();

  String get email => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UserSimplifiedCopyWith<_$UserSimplified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserFromNewsCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserFromNewsCopyWith(
          _$UserFromNews value, $Res Function(_$UserFromNews) then) =
      __$$UserFromNewsCopyWithImpl<$Res>;
  @override
  $Res call({String name, String imageProfile});
}

/// @nodoc
class __$$UserFromNewsCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserFromNewsCopyWith<$Res> {
  __$$UserFromNewsCopyWithImpl(
      _$UserFromNews _value, $Res Function(_$UserFromNews) _then)
      : super(_value, (v) => _then(v as _$UserFromNews));

  @override
  _$UserFromNews get _value => super._value as _$UserFromNews;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageProfile = freezed,
  }) {
    return _then(_$UserFromNews(
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

class _$UserFromNews extends UserFromNews {
  const _$UserFromNews({required this.name, required this.imageProfile})
      : super._();

  @override
  final String name;
  @override
  final String imageProfile;

  @override
  String toString() {
    return 'User.fromNews(name: $name, imageProfile: $imageProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFromNews &&
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
  _$$UserFromNewsCopyWith<_$UserFromNews> get copyWith =>
      __$$UserFromNewsCopyWithImpl<_$UserFromNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String name, String imageProfile, String password)
        detailed,
    required TResult Function(String email, String name) simplified,
    required TResult Function(String name, String imageProfile) fromNews,
  }) {
    return fromNews(name, imageProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
  }) {
    return fromNews?.call(name, imageProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String name, String imageProfile, String password)?
        detailed,
    TResult Function(String email, String name)? simplified,
    TResult Function(String name, String imageProfile)? fromNews,
    required TResult orElse(),
  }) {
    if (fromNews != null) {
      return fromNews(name, imageProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDetailed value) detailed,
    required TResult Function(UserSimplified value) simplified,
    required TResult Function(UserFromNews value) fromNews,
  }) {
    return fromNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
  }) {
    return fromNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDetailed value)? detailed,
    TResult Function(UserSimplified value)? simplified,
    TResult Function(UserFromNews value)? fromNews,
    required TResult orElse(),
  }) {
    if (fromNews != null) {
      return fromNews(this);
    }
    return orElse();
  }
}

abstract class UserFromNews extends User {
  const factory UserFromNews(
      {required final String name,
      required final String imageProfile}) = _$UserFromNews;
  const UserFromNews._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  String get imageProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UserFromNewsCopyWith<_$UserFromNews> get copyWith =>
      throw _privateConstructorUsedError;
}
