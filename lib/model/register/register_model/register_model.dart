// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  factory RegisterModel({
    String? name,
    @JsonKey(name: 'nick_name') String? nickName,
    String? email,
    int? phone,
    String? password,
    @JsonKey(name: 'password_confirmation') String? passwordConfirmation,
    String? gender,
    @JsonKey(name: 'referral_code') String? referralCode,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
