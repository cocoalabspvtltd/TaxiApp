// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Guest _$$_GuestFromJson(Map<String, dynamic> json) => _$_Guest(
      bookingId: json['booking_id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_GuestToJson(_$_Guest instance) => <String, dynamic>{
      'booking_id': instance.bookingId,
      'name': instance.name,
      'phone': instance.phone,
      'age': instance.age,
      'gender': instance.gender,
      'address': instance.address,
    };
