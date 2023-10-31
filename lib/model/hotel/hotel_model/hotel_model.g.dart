// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelModel _$$_HotelModelFromJson(Map<String, dynamic> json) =>
    _$_HotelModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      hotelName: json['hotel_name'] as String?,
      address: json['address'] as String?,
      type: json['type'] as String?,
      image: json['image'] as String?,
      hotelPhone: json['hotel_phone'] as String?,
      state: json['state'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      locationPoint: json['location_point'] as String?,
      area: json['area'],
      isActive: json['is_active'] as bool?,
      status: json['status'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
      avgRating: json['avg_rating'] as String?,
    );

Map<String, dynamic> _$$_HotelModelToJson(_$_HotelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'hotel_name': instance.hotelName,
      'address': instance.address,
      'type': instance.type,
      'image': instance.image,
      'hotel_phone': instance.hotelPhone,
      'state': instance.state,
      'district': instance.district,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location_point': instance.locationPoint,
      'area': instance.area,
      'is_active': instance.isActive,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'rooms': instance.rooms,
      'avg_rating': instance.avgRating,
    };
