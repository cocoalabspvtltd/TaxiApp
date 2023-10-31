// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
      json['id'] as int?,
      json['name'] as String?,
      json['description'] as String?,
      json['type'] as String?,
      json['price'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'price': instance.price,
      'image': instance.image,
    };
