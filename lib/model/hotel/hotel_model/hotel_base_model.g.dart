// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelBaseModel _$$_HotelBaseModelFromJson(Map<String, dynamic> json) =>
    _$_HotelBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      total: json['total'] as int?,
      page: json['page'] as String?,
      lastPage: json['last_page'] as int?,
      hotels: (json['hotels'] as List<dynamic>?)
              ?.map((e) => HotelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_HotelBaseModelToJson(_$_HotelBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'total': instance.total,
      'page': instance.page,
      'last_page': instance.lastPage,
      'hotels': instance.hotels,
    };
