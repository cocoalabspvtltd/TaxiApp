// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'trip_model.dart';

part 'trip_base_model.freezed.dart';
part 'trip_base_model.g.dart';

@freezed
class TripBaseModel with _$TripBaseModel {
  factory TripBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    List<TripModel>? trips,
    List<TripModel>? users,
  }) = _TripBaseModel;

  factory TripBaseModel.fromJson(Map<String, dynamic> json) =>
      _$TripBaseModelFromJson(json);
}
