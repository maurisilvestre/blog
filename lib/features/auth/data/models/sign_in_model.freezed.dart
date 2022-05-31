// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInModel _$SignInModelFromJson(Map<String, dynamic> json) {
  return _SignInModel.fromJson(json);
}

/// @nodoc
mixin _$SignInModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInModelCopyWith<SignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInModelCopyWith<$Res> {
  factory $SignInModelCopyWith(
          SignInModel value, $Res Function(SignInModel) then) =
      _$SignInModelCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInModelCopyWithImpl<$Res> implements $SignInModelCopyWith<$Res> {
  _$SignInModelCopyWithImpl(this._value, this._then);

  final SignInModel _value;
  // ignore: unused_field
  final $Res Function(SignInModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInModelCopyWith<$Res>
    implements $SignInModelCopyWith<$Res> {
  factory _$$_SignInModelCopyWith(
          _$_SignInModel value, $Res Function(_$_SignInModel) then) =
      __$$_SignInModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInModelCopyWithImpl<$Res> extends _$SignInModelCopyWithImpl<$Res>
    implements _$$_SignInModelCopyWith<$Res> {
  __$$_SignInModelCopyWithImpl(
      _$_SignInModel _value, $Res Function(_$_SignInModel) _then)
      : super(_value, (v) => _then(v as _$_SignInModel));

  @override
  _$_SignInModel get _value => super._value as _$_SignInModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInModel extends _SignInModel {
  const _$_SignInModel({required this.email, required this.password})
      : super._();

  factory _$_SignInModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignInModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInModelCopyWith<_$_SignInModel> get copyWith =>
      __$$_SignInModelCopyWithImpl<_$_SignInModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInModelToJson(this);
  }
}

abstract class _SignInModel extends SignInModel {
  const factory _SignInModel(
      {required final String email,
      required final String password}) = _$_SignInModel;
  const _SignInModel._() : super._();

  factory _SignInModel.fromJson(Map<String, dynamic> json) =
      _$_SignInModel.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInModelCopyWith<_$_SignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}
