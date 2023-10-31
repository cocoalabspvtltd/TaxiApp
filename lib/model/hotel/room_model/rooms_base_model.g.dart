// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomsBaseModel _$$_RoomsBaseModelFromJson(Map<String, dynamic> json) =>
    _$_RoomsBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      total: json['total'] as int?,
      page: json['page'] as String?,
      lastPage: json['last_page'] as int?,
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomsBaseModelToJson(_$_RoomsBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'total': instance.total,
      'page': instance.page,
      'last_page': instance.lastPage,
      'rooms': instance.rooms,
    };
