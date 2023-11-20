import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_app/model/profile/profile_user_model.dart';




part 'profile_base_model.freezed.dart';
part 'profile_base_model.g.dart';

@freezed
class ProfileBaseModel with _$ProfileBaseModel {
  factory ProfileBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    ProfileUserModel? user,
  }) = _ProfileBaseModel;

  factory ProfileBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileBaseModelFromJson(json);
}