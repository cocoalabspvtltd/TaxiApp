// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_model.dart';

part 'hotel_base_model.freezed.dart';
part 'hotel_base_model.g.dart';

@freezed
class HotelBaseModel with _$HotelBaseModel {
  factory HotelBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    int? total,
    String? page,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'hotels', defaultValue: []) required List<HotelModel> hotels,
  }) = _HotelBaseModel;

  factory HotelBaseModel.fromJson(Map<String, dynamic> json) =>
      _$HotelBaseModelFromJson(json);
}
