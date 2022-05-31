// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      user: UserNewsModel.fromJson(json['user'] as Map<String, dynamic>),
      message: MessageModel.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'message': instance.message,
    };
