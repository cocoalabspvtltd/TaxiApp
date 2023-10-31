// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'driver.dart';

part 'driver_routes_base_model.freezed.dart';
part 'driver_routes_base_model.g.dart';

@freezed
class DriverRoutesBaseModel with _$DriverRoutesBaseModel {
  factory DriverRoutesBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    List<Driver>? drivers,
  }) = _DriverRoutesBaseModel;

  factory DriverRoutesBaseModel.fromJson(Map<String, dynamic> json) =>
      _$DriverRoutesBaseModelFromJson(json);
}
