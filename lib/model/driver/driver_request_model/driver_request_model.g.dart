// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverRequestModel _$$_DriverRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_DriverRequestModel(
      id: json['id'] as int?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      locationPoint: json['location_point'] as String?,
      startLat: json['start_lat'] as String?,
      startLong: json['start_long'] as String?,
      name: json['name'] as String?,
      phoneNo: json['phone'] as String?,
      userId: json['user_id'] as int?,
      distance: json['distance'] as String?,
      status: json['status'] as String?,
      pool: json['pool'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_DriverRequestModelToJson(
        _$_DriverRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'location_point': instance.locationPoint,
      'start_lat': instance.startLat,
      'start_long': instance.startLong,
      'name': instance.name,
      'phone': instance.phoneNo,
      'user_id': instance.userId,
      'distance': instance.distance,
      'status': instance.status,
      'pool': instance.pool,
    };
