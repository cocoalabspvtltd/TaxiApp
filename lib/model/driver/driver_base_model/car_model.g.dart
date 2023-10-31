// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarModel _$$_CarModelFromJson(Map<String, dynamic> json) => _$_CarModel(
      id: json['id'] as int?,
      driverId: json['driver_id'] as int?,
      regNumber: json['reg_number'] as String?,
      carModel: json['car_model'] as String?,
      color: json['color'],
      seats: json['seats'] as int?,
      category: json['category'] as String?,
      latitude: json['latitude'],
      longitude: json['longitude'],
      locationPoint: json['location_point'],
      isActive: json['is_active'] as bool?,
      status: json['status'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_CarModelToJson(_$_CarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driver_id': instance.driverId,
      'reg_number': instance.regNumber,
      'car_model': instance.carModel,
      'color': instance.color,
      'seats': instance.seats,
      'category': instance.category,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location_point': instance.locationPoint,
      'is_active': instance.isActive,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
