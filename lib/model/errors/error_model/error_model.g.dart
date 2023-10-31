// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorModel _$$_ErrorModelFromJson(Map<String, dynamic> json) =>
    _$_ErrorModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['status_code'] as int?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorModelToJson(_$_ErrorModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'status_code': instance.statusCode,
      'errors': instance.errors,
    };
