// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsRequestModel _$$_NewsRequestModelFromJson(Map<String, dynamic> json) =>
    _$_NewsRequestModel(
      news: (json['news'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsRequestModelToJson(_$_NewsRequestModel instance) =>
    <String, dynamic>{
      'news': instance.news,
    };
