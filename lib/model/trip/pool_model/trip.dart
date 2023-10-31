// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  factory Trip({
    @JsonKey(name: 'pool_trip_id') int? poolTripId,
    @JsonKey(name: 'start_lat') dynamic startLat,
    @JsonKey(name: 'start_long') dynamic startLong,
    @JsonKey(name: 'end_lat') dynamic endLat,
    @JsonKey(name: 'end_long') dynamic endLong,
    @JsonKey(name: 'laravel_through_key') int? laravelThroughKey,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
