// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripModel _$$_TripModelFromJson(Map<String, dynamic> json) => _$_TripModel(
      id: json['id'] as int?,
      tripNo: json['trip_no'] as String?,
      from: json['from'],
      to: json['to'],
      date: json['date'],
      status: json['status'] as String?,
      driverStatus: json['driver_status'],
      driverId: json['driver_id'],
      locationPoint: json['location_point'] as String?,
      userID: json['user_id'] as int?,
      distance: json['distance'] as String?,
      name: json['name'] as String?,
      startLat: json['start_lat'] as String?,
      startLong: json['start_long'] as String?,
      endLat: json['end_lat'] as String?,
      endLong: json['end_long'] as String?,
      poolId: json['pool_id'] as int?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_TripModelToJson(_$_TripModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trip_no': instance.tripNo,
      'from': instance.from,
      'to': instance.to,
      'date': instance.date,
      'status': instance.status,
      'driver_status': instance.driverStatus,
      'driver_id': instance.driverId,
      'location_point': instance.locationPoint,
      'user_id': instance.userID,
      'distance': instance.distance,
      'name': instance.name,
      'start_lat': instance.startLat,
      'start_long': instance.startLong,
      'end_lat': instance.endLat,
      'end_long': instance.endLong,
      'pool_id': instance.poolId,
      'phone': instance.phone,
    };
