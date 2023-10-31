// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pool_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PoolModel _$$_PoolModelFromJson(Map<String, dynamic> json) => _$_PoolModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      from: json['from'],
      to: json['to'],
      price: json['price'],
      userCount: json['user_count'] as int?,
      poolId: json['pool_id'] as int?,
      userTripId: json['user_trip_id'] as int?,
      startLat: json['start_lat'],
      startLong: json['start_long'],
      endLat: json['end_lat'],
      endLong: json['end_long'],
      trip: json['trip'] == null
          ? null
          : Trip.fromJson(json['trip'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => PoolMembers.fromJson(e as Map<String, dynamic>))
          .toList(),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PoolModelToJson(_$_PoolModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'from': instance.from,
      'to': instance.to,
      'price': instance.price,
      'user_count': instance.userCount,
      'pool_id': instance.poolId,
      'user_trip_id': instance.userTripId,
      'start_lat': instance.startLat,
      'start_long': instance.startLong,
      'end_lat': instance.endLat,
      'end_long': instance.endLong,
      'trip': instance.trip,
      'members': instance.members,
      'driver': instance.driver,
    };
