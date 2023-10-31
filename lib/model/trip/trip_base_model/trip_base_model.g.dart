// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripBaseModel _$$_TripBaseModelFromJson(Map<String, dynamic> json) =>
    _$_TripBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      trips: (json['trips'] as List<dynamic>?)
          ?.map((e) => TripModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => TripModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TripBaseModelToJson(_$_TripBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'trips': instance.trips,
      'users': instance.users,
    };
