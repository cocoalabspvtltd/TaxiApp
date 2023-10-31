// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleBaseModel _$$_VehicleBaseModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      driver: json['driver'] == null
          ? null
          : VehicleModel.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleBaseModelToJson(_$_VehicleBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'driver': instance.driver,
    };
