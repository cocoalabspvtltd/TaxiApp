// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownerDriverRequestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnerDriverRequestModel _$$_OwnerDriverRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_OwnerDriverRequestModel(
      id: json['id'] as int?,
      tripId: json['trip_id'] as int?,
      driverId: json['name'] as String?,
      requestableId: json['phone'] as String?,
      requestableType: json['requestable_type'] as String?,
      status: json['status'] as String?,
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      pooledTrips: (json['pooledTrips'] as List<dynamic>?)
          ?.map((e) =>
              OwnerDriverRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pool: json['pool'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_OwnerDriverRequestModelToJson(
        _$_OwnerDriverRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trip_id': instance.tripId,
      'name': instance.driverId,
      'phone': instance.requestableId,
      'requestable_type': instance.requestableType,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'pooledTrips': instance.pooledTrips,
      'pool': instance.pool,
    };
