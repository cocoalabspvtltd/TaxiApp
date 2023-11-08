import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'driver_request_model.freezed.dart';
part 'driver_request_model.g.dart';

@freezed
class DriverRequestModel with _$DriverRequestModel {
  factory DriverRequestModel({
    int? id,
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'location_point') String? locationPoint,
    @JsonKey(name: 'start_lat') String? startLat,
    @JsonKey(name: 'start_long') String? startLong,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'phone') String? phoneNo,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'distance') String? distance,
    String? status,
    @JsonKey(name: 'pool') Map<String, dynamic>? pool, // Change the type to Map<String, dynamic> or create a separate class for 'pool'.
  }) = _DriverRequestModel;

  factory DriverRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DriverRequestModelFromJson(json);
}
