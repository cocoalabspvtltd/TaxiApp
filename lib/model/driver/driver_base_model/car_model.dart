// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model.g.dart';
part 'car_model.freezed.dart';

@freezed
class CarModel with _$CarModel {
  factory CarModel({
    int? id,
    @JsonKey(name: 'driver_id') int? driverId,
    @JsonKey(name: 'reg_number') String? regNumber,
    @JsonKey(name: 'car_model') String? carModel,
    dynamic color,
    int? seats,
    String? category,
    dynamic latitude,
    dynamic longitude,
    @JsonKey(name: 'location_point') dynamic locationPoint,
    @JsonKey(name: 'is_active') bool? isActive,
    dynamic status,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
