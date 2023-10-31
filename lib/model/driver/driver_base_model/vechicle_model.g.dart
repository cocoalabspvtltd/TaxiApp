// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vechicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      licenseNumber: json['license_number'] as String?,
      expDate: json['exp_date'] as String?,
      documents: json['documents'] as String?,
      latitude: json['latitude'],
      longitude: json['longitude'],
      currentLocation: json['current_location'],
      locationPoint: json['location_point'],
      area: json['area'],
      isActive: json['is_active'] as bool?,
      status: json['status'] as bool?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      licensePicture: json['license_picture'] as String?,
      taxiPermit: json['taxi_permit'] as String?,
      car: json['car'] == null
          ? null
          : CarModel.fromJson(json['car'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'license_number': instance.licenseNumber,
      'exp_date': instance.expDate,
      'documents': instance.documents,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current_location': instance.currentLocation,
      'location_point': instance.locationPoint,
      'area': instance.area,
      'is_active': instance.isActive,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'license_picture': instance.licensePicture,
      'taxi_permit': instance.taxiPermit,
      'car': instance.car,
    };
