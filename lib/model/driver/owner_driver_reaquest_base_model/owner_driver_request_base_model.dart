// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ownerDriverRequestModel.dart';

part 'owner_driver_request_base_model.freezed.dart';
part 'owner_driver_request_base_model.g.dart';

@freezed
class OwnerDriverRequestBaseModel with _$OwnerDriverRequestBaseModel {
  factory OwnerDriverRequestBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    List<OwnerDriverRequestModel>? requests,
  }) = _OwnerDriverRequestBaseModel;

  factory OwnerDriverRequestBaseModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerDriverRequestBaseModelFromJson(json);
}
