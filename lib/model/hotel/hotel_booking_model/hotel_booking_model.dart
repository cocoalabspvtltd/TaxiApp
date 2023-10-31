// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_app/model/hotel/hotel_model/room.dart';

import 'guest.dart';

part 'hotel_booking_model.g.dart';
part 'hotel_booking_model.freezed.dart';

@freezed
class HotelBookingModel with _$HotelBookingModel {
  factory HotelBookingModel({
    int? id,
    @JsonKey(name: 'check_in') String? checkIn,
    @JsonKey(name: 'check_out') String? checkOut,
    @JsonKey(name: 'room_id') int? roomId,
    @JsonKey(name: 'hotel_id') int? hotelId,
    @JsonKey(name: 'hotel_name') String? hotelName,
    @JsonKey(name: 'hotel_phone') String? hotelPhone,
    String? image,
    String? status,
    Room? room,
    List<Guest>? guests,
  }) = _HotelBookingModel;

  factory HotelBookingModel.fromJson(Map<String, dynamic> json) =>
      _$HotelBookingModelFromJson(json);
}
