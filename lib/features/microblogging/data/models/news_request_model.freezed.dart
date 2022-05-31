// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsRequestModel _$NewsRequestModelFromJson(Map<String, dynamic> json) {
  return _NewsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$NewsRequestModel {
  List<NewsModel> get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsRequestModelCopyWith<NewsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsRequestModelCopyWith<$Res> {
  factory $NewsRequestModelCopyWith(
          NewsRequestModel value, $Res Function(NewsRequestModel) then) =
      _$NewsRequestModelCopyWithImpl<$Res>;
  $Res call({List<NewsModel> news});
}

/// @nodoc
class _$NewsRequestModelCopyWithImpl<$Res>
    implements $NewsRequestModelCopyWith<$Res> {
  _$NewsRequestModelCopyWithImpl(this._value, this._then);

  final NewsRequestModel _value;
  // ignore: unused_field
  final $Res Function(NewsRequestModel) _then;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_NewsRequestModelCopyWith<$Res>
    implements $NewsRequestModelCopyWith<$Res> {
  factory _$$_NewsRequestModelCopyWith(
          _$_NewsRequestModel value, $Res Function(_$_NewsRequestModel) then) =
      __$$_NewsRequestModelCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsModel> news});
}

/// @nodoc
class __$$_NewsRequestModelCopyWithImpl<$Res>
    extends _$NewsRequestModelCopyWithImpl<$Res>
    implements _$$_NewsRequestModelCopyWith<$Res> {
  __$$_NewsRequestModelCopyWithImpl(
      _$_NewsRequestModel _value, $Res Function(_$_NewsRequestModel) _then)
      : super(_value, (v) => _then(v as _$_NewsRequestModel));

  @override
  _$_NewsRequestModel get _value => super._value as _$_NewsRequestModel;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(_$_NewsRequestModel(
      news: news == freezed
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsRequestModel extends _NewsRequestModel {
  const _$_NewsRequestModel({required final List<NewsModel> news})
      : _news = news,
        super._();

  factory _$_NewsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsRequestModelFromJson(json);

  final List<NewsModel> _news;
  @override
  List<NewsModel> get news {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  String toString() {
    return 'NewsRequestModel(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsRequestModel &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_news));

  @JsonKey(ignore: true)
  @override
  _$$_NewsRequestModelCopyWith<_$_NewsRequestModel> get copyWith =>
      __$$_NewsRequestModelCopyWithImpl<_$_NewsRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsRequestModelToJson(this);
  }
}

abstract class _NewsRequestModel extends NewsRequestModel {
  const factory _NewsRequestModel({required final List<NewsModel> news}) =
      _$_NewsRequestModel;
  const _NewsRequestModel._() : super._();

  factory _NewsRequestModel.fromJson(Map<String, dynamic> json) =
      _$_NewsRequestModel.fromJson;

  @override
  List<NewsModel> get news => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NewsRequestModelCopyWith<_$_NewsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
