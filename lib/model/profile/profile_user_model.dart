import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_user_model.freezed.dart';
part 'profile_user_model.g.dart';

@freezed
class ProfileUserModel with _$ProfileUserModel{
  factory ProfileUserModel({
    int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') dynamic emailVerifiedAt,
    @JsonKey(name: 'nick_name') String? nickName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'dob') dynamic dob,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'is_admin') bool? isAdmin,
    @JsonKey(name: 'is_traveller') bool? isTraveller,
    @JsonKey(name: 'is_driver') bool? isDriver,
    @JsonKey(name: 'is_hotel') bool? isHotel,
    @JsonKey(name: 'is_restaurant') bool? isRestaurant,
    @JsonKey(name: 'is_crm') bool? isCrm,
    @JsonKey(name: 'gcm_id') dynamic gcmId,
    bool? status,
    @JsonKey(name: 'current_team_id') dynamic currentTeamId,
    @JsonKey(name: 'profile_pic') dynamic profilePic,
    @JsonKey(name: 'profile_photo_path') dynamic profilePhotoPath,
    @JsonKey(name: 'social_id') dynamic socialId,
    @JsonKey(name: 'social_type') dynamic socialType,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'two_factor_secret') dynamic twoFactorSecret,
    @JsonKey(name: 'two_factor_recovery_codes') dynamic twoFactorRecoveryCodes,
    @JsonKey(name: 'two_factor_confirmed_at') dynamic twoFactorConfirmedAt,
    int? otp,
    @JsonKey(name: 'otp_timestamp') String? otpTimestamp,
    @JsonKey(name: 'referral_code') String? referralCode,
    @JsonKey(name: 'referral_points') int? referralPoints,
    @JsonKey(name: 'referred_by') int? referredBy,
  }) = _ProfileUserModel;

  factory ProfileUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserModelFromJson(json);
}