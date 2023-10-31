// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantBaseModel _$$_RestaurantBaseModelFromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      page: json['page'] as String?,
      total: json['total'] as int?,
      lastPage: json['last_page'] as int?,
      restaurants: (json['restaurants'] as List<dynamic>?)
          ?.map((e) => RestaurantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookings: (json['bookings'] as List<dynamic>?)
          ?.map(
              (e) => BookingRestaurantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      food_items: (json['food_items'] as List<dynamic>?)
          ?.map((e) => FoodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantBaseModelToJson(
        _$_RestaurantBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'page': instance.page,
      'total': instance.total,
      'last_page': instance.lastPage,
      'restaurants': instance.restaurants,
      'bookings': instance.bookings,
      'food_items': instance.food_items,
    };
