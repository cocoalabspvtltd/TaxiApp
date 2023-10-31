// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_app/model/driver/driver_base_model/car_model.dart';

part 'vechicle_model.g.dart';
part 'vechicle_model.freezed.dart';

@freezed
class VehicleModel with _$VehicleModel {
  factory VehicleModel({
    int? id,
    @JsonKey(name: 'user_id')
        int? userId,
    @JsonKey(name: 'license_number')
        String? licenseNumber,
    @JsonKey(name: 'exp_date')
        String? expDate,
    String? documents,
    dynamic latitude,
    dynamic longitude,
    @JsonKey(name: 'current_location')
        dynamic currentLocation,
    @JsonKey(name: 'location_point')
        dynamic locationPoint,
    dynamic area,
    @JsonKey(name: 'is_active')
        bool? isActive,
    bool? status,
    @JsonKey(name: 'deleted_at')
        dynamic deletedAt,
    @JsonKey(name: 'created_at')
        DateTime? createdAt,
    @JsonKey(name: 'updated_at')
        DateTime? updatedAt,
    @JsonKey(name: 'license_picture')
        String? licensePicture,
    @JsonKey(name: 'taxi_permit')
        String? taxiPermit,
    @JsonKey(
      name: 'car',
    )
        CarModel? car,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}
