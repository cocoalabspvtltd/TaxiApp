// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../hotel_model/room.dart';

part 'rooms_base_model.g.dart';
part 'rooms_base_model.freezed.dart';

@freezed
class RoomsBaseModel with _$RoomsBaseModel {
  factory RoomsBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    int? total,
    String? page,
    @JsonKey(name: 'last_page') int? lastPage,
    List<Room>? rooms,
  }) = _RoomsBaseModel;

  factory RoomsBaseModel.fromJson(Map<String, dynamic> json) =>
      _$RoomsBaseModelFromJson(json);
}
