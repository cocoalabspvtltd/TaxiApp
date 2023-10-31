// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ownerDriverRequestModel.g.dart';
part 'ownerDriverRequestModel.freezed.dart';

@freezed
class OwnerDriverRequestModel with _$OwnerDriverRequestModel {
  factory OwnerDriverRequestModel({
    int? id,
    @JsonKey(name: 'trip_id') int? tripId,
    @JsonKey(name: 'name') String? driverId,
    @JsonKey(name: 'phone') String? requestableId,
    @JsonKey(name: 'requestable_type') String? requestableType,
    String? status,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<OwnerDriverRequestModel>? pooledTrips,
    @JsonKey(name: 'pool') Map? pool,


  }) = _OwnerDriverRequestModel;

  factory OwnerDriverRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerDriverRequestModelFromJson(json);
}
