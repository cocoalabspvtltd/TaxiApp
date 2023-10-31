// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  factory TripModel({
    int? id,
    @JsonKey(name: 'trip_no') String? tripNo,
    dynamic from,
    dynamic to,
    dynamic date,
    String? status,
    @JsonKey(name: 'driver_status') dynamic driverStatus,
    @JsonKey(name: 'driver_id') dynamic driverId,
    @JsonKey(name: 'location_point') String? locationPoint,
    @JsonKey(name: 'user_id') int? userID,
    String? distance,
    String? name,
    @JsonKey(name: 'start_lat') String? startLat,
    @JsonKey(name: 'start_long') String? startLong,
    @JsonKey(name: 'end_lat') String? endLat,
    @JsonKey(name: 'end_long') String? endLong,
    @JsonKey(name: 'pool_id') int? poolId,
    @JsonKey(name: 'phone') String? phone,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
}
