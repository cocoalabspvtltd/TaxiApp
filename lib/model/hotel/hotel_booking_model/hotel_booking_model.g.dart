// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelBookingModel _$$_HotelBookingModelFromJson(Map<String, dynamic> json) =>
    _$_HotelBookingModel(
      id: json['id'] as int?,
      checkIn: json['check_in'] as String?,
      checkOut: json['check_out'] as String?,
      roomId: json['room_id'] as int?,
      hotelId: json['hotel_id'] as int?,
      hotelName: json['hotel_name'] as String?,
      hotelPhone: json['hotel_phone'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      locationPoint: json['location_point'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      room: json['room'] == null
          ? null
          : Room.fromJson(json['room'] as Map<String, dynamic>),
      guests: (json['guests'] as List<dynamic>?)
          ?.map((e) => Guest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HotelBookingModelToJson(
        _$_HotelBookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'check_in': instance.checkIn,
      'check_out': instance.checkOut,
      'room_id': instance.roomId,
      'hotel_id': instance.hotelId,
      'hotel_name': instance.hotelName,
      'hotel_phone': instance.hotelPhone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location_point': instance.locationPoint,
      'image': instance.image,
      'status': instance.status,
      'room': instance.room,
      'guests': instance.guests,
    };
