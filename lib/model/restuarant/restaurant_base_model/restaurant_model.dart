// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.g.dart';
part 'restaurant_model.freezed.dart';

@freezed
class RestaurantModel with _$RestaurantModel {
  factory RestaurantModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? name,
    String? phone,
    String? address,
    String? type,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'location_point') String? locationPoint,
    String? distance,
    String? time,
    String? image,
    String? date,
    String? status,
    String? state,
    String? district,
    String? city,
    @JsonKey(name: 'is_active') bool? isActive,
    List<dynamic>? foods,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}
