// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as int?,
      hotelId: json['hotel_id'] as int?,
      type: json['type'] as String?,
      bedType: json['bed_type'] as String?,
      price: json['price'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'],
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotelId,
      'type': instance.type,
      'bed_type': instance.bedType,
      'price': instance.price,
      'images': instance.images,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
    };
