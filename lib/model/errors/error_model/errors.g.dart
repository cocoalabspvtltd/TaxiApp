// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Errors _$$_ErrorsFromJson(Map<String, dynamic> json) => _$_Errors(
      name: (json['name'] as List<dynamic>?)?.map((e) => e as String).toList(),
      nickName: (json['nick_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gender:
          (json['gender'] as List<dynamic>?)?.map((e) => e as String).toList(),
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      referralCode: (json['referral_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      regNumber: (json['reg_number'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      seats:
          (json['seats'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      otp: (json['otp'] as List<dynamic>?)?.map((e) => e as String).toList(),
      roomId:
          (json['room_id'] as List<dynamic>?)?.map((e) => e as String).toList(),
      checkIn: (json['check_in'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      checkOut: (json['check_out'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      driver:
          (json['driver'] as List<dynamic>?)?.map((e) => e as String).toList(),
      driverLicenseNumber: (json['driver.license_number'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      driverDocuments: (json['driver.documents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      driverExpDate: (json['driver.exp_date'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      from: (json['from'] as List<dynamic>?)?.map((e) => e as String).toList(),
      to: (json['to'] as List<dynamic>?)?.map((e) => e as String).toList(),
      date: (json['date'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startLat: (json['start_lat'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      endLat:
          (json['end_lat'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startLong: (json['start_long'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      endLong: (json['end_long'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      restaurantPhone: (json['restaurant.phone'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      restaurantImage: (json['restaurant.image'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'name': instance.name,
      'nick_name': instance.nickName,
      'email': instance.email,
      'gender': instance.gender,
      'phone': instance.phone,
      'password': instance.password,
      'location': instance.location,
      'referral_code': instance.referralCode,
      'reg_number': instance.regNumber,
      'seats': instance.seats,
      'category': instance.category,
      'otp': instance.otp,
      'room_id': instance.roomId,
      'check_in': instance.checkIn,
      'check_out': instance.checkOut,
      'driver': instance.driver,
      'driver.license_number': instance.driverLicenseNumber,
      'driver.documents': instance.driverDocuments,
      'driver.exp_date': instance.driverExpDate,
      'from': instance.from,
      'to': instance.to,
      'date': instance.date,
      'start_lat': instance.startLat,
      'end_lat': instance.endLat,
      'start_long': instance.startLong,
      'end_long': instance.endLong,
      'restaurant.phone': instance.restaurantPhone,
      'restaurant.image': instance.restaurantImage,
    };
