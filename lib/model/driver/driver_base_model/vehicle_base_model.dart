// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'vechicle_model.dart';

part 'vehicle_base_model.g.dart';
part 'vehicle_base_model.freezed.dart';

@freezed
class VehicleBaseModel with _$VehicleBaseModel {
  factory VehicleBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    VehicleModel? driver,
  }) = _VehicleBaseModel;

  factory VehicleBaseModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleBaseModelFromJson(json);
}
