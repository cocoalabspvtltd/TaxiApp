// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'room.dart';

part 'hotel_model.g.dart';
part 'hotel_model.freezed.dart';

@freezed
class HotelModel with _$HotelModel {
  factory HotelModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'hotel_name') String? hotelName,
    String? address,
    String? type,
    String? image,
    @JsonKey(name: 'hotel_phone') String? hotelPhone,
    String? state,
    String? district,
    String? city,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'location_point') String? locationPoint,
    dynamic area,
    @JsonKey(name: 'is_active') bool? isActive,
    dynamic status,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<Room>? rooms,
    @JsonKey(name: 'avg_rating') String? avgRating,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}
