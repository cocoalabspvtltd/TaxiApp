// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_routes_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverRoutesBaseModel _$$_DriverRoutesBaseModelFromJson(
        Map<String, dynamic> json) =>
    _$_DriverRoutesBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      drivers: (json['drivers'] as List<dynamic>?)
          ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DriverRoutesBaseModelToJson(
        _$_DriverRoutesBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'drivers': instance.drivers,
    };
