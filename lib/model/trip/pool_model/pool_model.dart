// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_app/model/trip/driver_routes_base_model/driver.dart';
import 'package:new_app/model/trip/pool_model/pool_members/pool_members.dart';

import 'trip.dart';

part 'pool_model.freezed.dart';
part 'pool_model.g.dart';

@freezed
class PoolModel with _$PoolModel {
  factory PoolModel({
    int? id,
    String? name,
    String? status,
    dynamic from,
    dynamic to,
    dynamic price,
    @JsonKey(name: 'user_count') int? userCount,
    @JsonKey(name: 'pool_id') int? poolId,
    @JsonKey(name: 'user_trip_id') int? userTripId,
    @JsonKey(name: 'start_lat') dynamic startLat,
    @JsonKey(name: 'start_long') dynamic startLong,
    @JsonKey(name: 'end_lat') dynamic endLat,
    @JsonKey(name: 'end_long') dynamic endLong,
    Trip? trip,
    List<PoolMembers>? members,
    Driver? driver,
  }) = _PoolModel;

  factory PoolModel.fromJson(Map<String, dynamic> json) =>
      _$PoolModelFromJson(json);
}
