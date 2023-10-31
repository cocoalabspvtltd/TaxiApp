// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'errors.freezed.dart';
part 'errors.g.dart';

@freezed
class Errors with _$Errors {
  factory Errors({
    List<String>? name,
    @JsonKey(name: 'nick_name') List<String>? nickName,
    List<String>? email,
    List<String>? gender,
    List<String>? phone,
    List<String>? password,
    List<String>? location,
    @JsonKey(name: 'referral_code') List<String>? referralCode,
    @JsonKey(name: 'reg_number') List<String>? regNumber,
    List<String>? seats,
    List<String>? category,
    List<String>? otp,
    @JsonKey(name: 'room_id') List<String>? roomId,
    @JsonKey(name: 'check_in') List<String>? checkIn,
    @JsonKey(name: 'check_out') List<String>? checkOut,
    List<String>? driver,
    @JsonKey(name: 'driver.license_number') List<String>? driverLicenseNumber,
    @JsonKey(name: 'driver.documents') List<String>? driverDocuments,
    @JsonKey(name: 'driver.exp_date') List<String>? driverExpDate,

    // trip create error model

    List<String>? from,
    List<String>? to,
    List<String>? date,
    @JsonKey(name: 'start_lat') List<String>? startLat,
    @JsonKey(name: 'end_lat') List<String>? endLat,
    @JsonKey(name: 'start_long') List<String>? startLong,
    @JsonKey(name: 'end_long') List<String>? endLong,
    @JsonKey(name: 'restaurant.phone') List<String>? restaurantPhone,
    @JsonKey(name: 'restaurant.image') List<String>? restaurantImage,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
