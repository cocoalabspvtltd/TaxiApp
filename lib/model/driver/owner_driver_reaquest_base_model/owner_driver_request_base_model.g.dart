// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_driver_request_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnerDriverRequestBaseModel _$$_OwnerDriverRequestBaseModelFromJson(
        Map<String, dynamic> json) =>
    _$_OwnerDriverRequestBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) =>
              OwnerDriverRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OwnerDriverRequestBaseModelToJson(
        _$_OwnerDriverRequestBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'requests': instance.requests,
    };
