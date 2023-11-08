// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_requestlist_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverRequsetlistBaseModel _$$_DriverRequsetlistBaseModelFromJson(
        Map<String, dynamic> json) =>
    _$_DriverRequsetlistBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => DriverRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DriverRequsetlistBaseModelToJson(
        _$_DriverRequsetlistBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'requests': instance.requests,
    };
