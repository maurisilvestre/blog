// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      id: json['id'] as String,
      user: UserPostModel.fromJson(json['user'] as Map<String, dynamic>),
      message: MessageModel.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'message': instance.message,
    };
