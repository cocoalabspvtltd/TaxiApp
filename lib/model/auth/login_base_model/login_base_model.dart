// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart';

part 'login_base_model.freezed.dart';
part 'login_base_model.g.dart';

@freezed
class LoginBaseModel with _$LoginBaseModel {
  factory LoginBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    UserModel? user,
    String? token,
  }) = _LoginBaseModel;

  factory LoginBaseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginBaseModelFromJson(json);
}
