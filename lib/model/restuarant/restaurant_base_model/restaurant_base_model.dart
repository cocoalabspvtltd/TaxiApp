// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_app/model/restuarant/booking/booking_restaurant_model.dart';
import 'package:new_app/model/restuarant/food/food_model.dart';

import 'restaurant_model.dart';

part 'restaurant_base_model.freezed.dart';
part 'restaurant_base_model.g.dart';

@freezed
class RestaurantBaseModel with _$RestaurantBaseModel {
  factory RestaurantBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    String? page,
    int? total,
    @JsonKey(name: 'last_page') int? lastPage,
    List<RestaurantModel>? restaurants,
    List<BookingRestaurantModel>? bookings,
    List<FoodModel>? food_items,
  }) = _RestaurantBaseModel;

  factory RestaurantBaseModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantBaseModelFromJson(json);
}
