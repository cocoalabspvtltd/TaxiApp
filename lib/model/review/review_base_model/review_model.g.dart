// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewModel _$$_ReviewModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      userId: json['user_id'] as int?,
      rating: json['rating'] as int?,
      comment: json['comment'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_ReviewModelToJson(_$_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_id': instance.userId,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt?.toIso8601String(),
      'time': instance.time,
    };
