// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trip _$$_TripFromJson(Map<String, dynamic> json) => _$_Trip(
      poolTripId: json['pool_trip_id'] as int?,
      startLat: json['start_lat'],
      startLong: json['start_long'],
      endLat: json['end_lat'],
      endLong: json['end_long'],
      laravelThroughKey: json['laravel_through_key'] as int?,
    );

Map<String, dynamic> _$$_TripToJson(_$_Trip instance) => <String, dynamic>{
      'pool_trip_id': instance.poolTripId,
      'start_lat': instance.startLat,
      'start_long': instance.startLong,
      'end_lat': instance.endLat,
      'end_long': instance.endLong,
      'laravel_through_key': instance.laravelThroughKey,
    };
