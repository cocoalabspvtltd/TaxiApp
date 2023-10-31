// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Driver _$$_DriverFromJson(Map<String, dynamic> json) => _$_Driver(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      avgRating: json['avg_rating'] as String?,
      distance: json['distance'] as String?,
      car: json['car'] == null
          ? null
          : CarModel.fromJson(json['car'] as Map<String, dynamic>),
      driverName: json['driver_name'] as String?,
      licenseNumber: json['license_number'] as String?,
    );

Map<String, dynamic> _$$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avg_rating': instance.avgRating,
      'distance': instance.distance,
      'car': instance.car,
      'driver_name': instance.driverName,
      'license_number': instance.licenseNumber,
    };
