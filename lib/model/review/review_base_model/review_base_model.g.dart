// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewBaseModel _$$_ReviewBaseModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_ReviewBaseModelToJson(_$_ReviewBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'reviews': instance.reviews,
    };
