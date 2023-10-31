// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingRestaurantModel _$BookingRestaurantModelFromJson(
        Map<String, dynamic> json) =>
    BookingRestaurantModel(
      json['id'] as int?,
      json['date'] as String?,
      json['time'] as String?,
      json['status'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$BookingRestaurantModelToJson(
        BookingRestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'time': instance.time,
      'status': instance.status,
      'name': instance.name,
    };
