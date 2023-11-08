import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'driver_request_model.dart';

part 'driver_requestlist_base_model.freezed.dart';
part 'driver_requestlist_base_model.g.dart';

@freezed
class DriverRequsetlistBaseModel with _$DriverRequsetlistBaseModel {
  factory DriverRequsetlistBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    List<DriverRequestModel>? requests,
  }) = _DriverRequsetlistBaseModel;

  factory DriverRequsetlistBaseModel.fromJson(Map<String, dynamic> json) =>
      _$DriverRequsetlistBaseModelFromJson(json);
}
