// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      nickName: json['nick_name'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'],
      isActive: json['is_active'] as bool?,
      isAdmin: json['is_admin'] as bool?,
      isTraveller: json['is_traveller'] as bool?,
      isDriver: json['is_driver'] as bool?,
      isHotel: json['is_hotel'] as bool?,
      isRestaurant: json['is_restaurant'] as bool?,
      isCrm: json['is_crm'] as bool?,
      gcmId: json['gcm_id'],
      status: json['status'] as bool?,
      currentTeamId: json['current_team_id'],
      profilePic: json['profile_pic'],
      profilePhotoPath: json['profile_photo_path'],
      socialId: json['social_id'],
      socialType: json['social_type'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      twoFactorSecret: json['two_factor_secret'],
      twoFactorRecoveryCodes: json['two_factor_recovery_codes'],
      twoFactorConfirmedAt: json['two_factor_confirmed_at'],
      otp: json['otp'] as int?,
      otpTimestamp: json['otp_timestamp'] as String?,
      referralCode: json['referral_code'] as String?,
      referralPoints: json['referral_points'] as int?,
      referredBy: json['referred_by'] as int?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'nick_name': instance.nickName,
      'phone': instance.phone,
      'gender': instance.gender,
      'dob': instance.dob,
      'is_active': instance.isActive,
      'is_admin': instance.isAdmin,
      'is_traveller': instance.isTraveller,
      'is_driver': instance.isDriver,
      'is_hotel': instance.isHotel,
      'is_restaurant': instance.isRestaurant,
      'is_crm': instance.isCrm,
      'gcm_id': instance.gcmId,
      'status': instance.status,
      'current_team_id': instance.currentTeamId,
      'profile_pic': instance.profilePic,
      'profile_photo_path': instance.profilePhotoPath,
      'social_id': instance.socialId,
      'social_type': instance.socialType,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'two_factor_secret': instance.twoFactorSecret,
      'two_factor_recovery_codes': instance.twoFactorRecoveryCodes,
      'two_factor_confirmed_at': instance.twoFactorConfirmedAt,
      'otp': instance.otp,
      'otp_timestamp': instance.otpTimestamp,
      'referral_code': instance.referralCode,
      'referral_points': instance.referralPoints,
      'referred_by': instance.referredBy,
    };
