// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantModel _$$_RestaurantModelFromJson(Map<String, dynamic> json) =>
    _$_RestaurantModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      type: json['type'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      locationPoint: json['location_point'] as String?,
      distance: json['distance'] as String?,
      time: json['time'] as String?,
      image: json['image'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      state: json['state'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      isActive: json['is_active'] as bool?,
      foods: json['foods'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_RestaurantModelToJson(_$_RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'type': instance.type,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location_point': instance.locationPoint,
      'distance': instance.distance,
      'time': instance.time,
      'image': instance.image,
      'date': instance.date,
      'status': instance.status,
      'state': instance.state,
      'district': instance.district,
      'city': instance.city,
      'is_active': instance.isActive,
      'foods': instance.foods,
    };
