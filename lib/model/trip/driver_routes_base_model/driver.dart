// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_app/model/driver/driver_base_model/car_model.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
class Driver with _$Driver {
  factory Driver({
    int? id,
    String? name,
    String? email,
    String? phone,
    @JsonKey(name: 'avg_rating') String? avgRating,
    String? distance,
    CarModel? car,
    @JsonKey(name: 'driver_name') String? driverName,
    @JsonKey(name: 'license_number') String? licenseNumber,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}
