// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  dynamic get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'nick_name')
  String? get nickName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  dynamic get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin')
  bool? get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_traveller')
  bool? get isTraveller => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_driver')
  bool? get isDriver => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hotel')
  bool? get isHotel => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_restaurant')
  bool? get isRestaurant => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_crm')
  bool? get isCrm => throw _privateConstructorUsedError;
  @JsonKey(name: 'gcm_id')
  dynamic get gcmId => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_team_id')
  dynamic get currentTeamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pic')
  dynamic get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_photo_path')
  dynamic get profilePhotoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_id')
  dynamic get socialId => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_type')
  dynamic get socialType => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'two_factor_secret')
  dynamic get twoFactorSecret => throw _privateConstructorUsedError;
  @JsonKey(name: 'two_factor_recovery_codes')
  dynamic get twoFactorRecoveryCodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'two_factor_confirmed_at')
  dynamic get twoFactorConfirmedAt => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp_timestamp')
  String? get otpTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_code')
  String? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_points')
  int? get referralPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'referred_by')
  int? get referredBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'name')
          String? name,
      String? email,
      @JsonKey(name: 'email_verified_at')
          dynamic emailVerifiedAt,
      @JsonKey(name: 'nick_name')
          String? nickName,
      String? phone,
      String? gender,
      dynamic dob,
      @JsonKey(name: 'is_active')
          bool? isActive,
      @JsonKey(name: 'is_admin')
          bool? isAdmin,
      @JsonKey(name: 'is_traveller')
          bool? isTraveller,
      @JsonKey(name: 'is_driver')
          bool? isDriver,
      @JsonKey(name: 'is_hotel')
          bool? isHotel,
      @JsonKey(name: 'is_restaurant')
          bool? isRestaurant,
      @JsonKey(name: 'is_crm')
          bool? isCrm,
      @JsonKey(name: 'gcm_id')
          dynamic gcmId,
      bool? status,
      @JsonKey(name: 'current_team_id')
          dynamic currentTeamId,
      @JsonKey(name: 'profile_pic')
          dynamic profilePic,
      @JsonKey(name: 'profile_photo_path')
          dynamic profilePhotoPath,
      @JsonKey(name: 'social_id')
          dynamic socialId,
      @JsonKey(name: 'social_type')
          dynamic socialType,
      @JsonKey(name: 'deleted_at')
          dynamic deletedAt,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'two_factor_secret')
          dynamic twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes')
          dynamic twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at')
          dynamic twoFactorConfirmedAt,
      int? otp,
      @JsonKey(name: 'otp_timestamp')
          String? otpTimestamp,
      @JsonKey(name: 'referral_code')
          String? referralCode,
      @JsonKey(name: 'referral_points')
          int? referralPoints,
      @JsonKey(name: 'referred_by')
          int? referredBy});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? nickName = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
    Object? isTraveller = freezed,
    Object? isDriver = freezed,
    Object? isHotel = freezed,
    Object? isRestaurant = freezed,
    Object? isCrm = freezed,
    Object? gcmId = freezed,
    Object? status = freezed,
    Object? currentTeamId = freezed,
    Object? profilePic = freezed,
    Object? profilePhotoPath = freezed,
    Object? socialId = freezed,
    Object? socialType = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? twoFactorSecret = freezed,
    Object? twoFactorRecoveryCodes = freezed,
    Object? twoFactorConfirmedAt = freezed,
    Object? otp = freezed,
    Object? otpTimestamp = freezed,
    Object? referralCode = freezed,
    Object? referralPoints = freezed,
    Object? referredBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTraveller: freezed == isTraveller
          ? _value.isTraveller
          : isTraveller // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDriver: freezed == isDriver
          ? _value.isDriver
          : isDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHotel: freezed == isHotel
          ? _value.isHotel
          : isHotel // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRestaurant: freezed == isRestaurant
          ? _value.isRestaurant
          : isRestaurant // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCrm: freezed == isCrm
          ? _value.isCrm
          : isCrm // ignore: cast_nullable_to_non_nullable
              as bool?,
      gcmId: freezed == gcmId
          ? _value.gcmId
          : gcmId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentTeamId: freezed == currentTeamId
          ? _value.currentTeamId
          : currentTeamId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePhotoPath: freezed == profilePhotoPath
          ? _value.profilePhotoPath
          : profilePhotoPath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      socialType: freezed == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twoFactorRecoveryCodes: freezed == twoFactorRecoveryCodes
          ? _value.twoFactorRecoveryCodes
          : twoFactorRecoveryCodes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twoFactorConfirmedAt: freezed == twoFactorConfirmedAt
          ? _value.twoFactorConfirmedAt
          : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      otpTimestamp: freezed == otpTimestamp
          ? _value.otpTimestamp
          : otpTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralPoints: freezed == referralPoints
          ? _value.referralPoints
          : referralPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'name')
          String? name,
      String? email,
      @JsonKey(name: 'email_verified_at')
          dynamic emailVerifiedAt,
      @JsonKey(name: 'nick_name')
          String? nickName,
      String? phone,
      String? gender,
      dynamic dob,
      @JsonKey(name: 'is_active')
          bool? isActive,
      @JsonKey(name: 'is_admin')
          bool? isAdmin,
      @JsonKey(name: 'is_traveller')
          bool? isTraveller,
      @JsonKey(name: 'is_driver')
          bool? isDriver,
      @JsonKey(name: 'is_hotel')
          bool? isHotel,
      @JsonKey(name: 'is_restaurant')
          bool? isRestaurant,
      @JsonKey(name: 'is_crm')
          bool? isCrm,
      @JsonKey(name: 'gcm_id')
          dynamic gcmId,
      bool? status,
      @JsonKey(name: 'current_team_id')
          dynamic currentTeamId,
      @JsonKey(name: 'profile_pic')
          dynamic profilePic,
      @JsonKey(name: 'profile_photo_path')
          dynamic profilePhotoPath,
      @JsonKey(name: 'social_id')
          dynamic socialId,
      @JsonKey(name: 'social_type')
          dynamic socialType,
      @JsonKey(name: 'deleted_at')
          dynamic deletedAt,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'two_factor_secret')
          dynamic twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes')
          dynamic twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at')
          dynamic twoFactorConfirmedAt,
      int? otp,
      @JsonKey(name: 'otp_timestamp')
          String? otpTimestamp,
      @JsonKey(name: 'referral_code')
          String? referralCode,
      @JsonKey(name: 'referral_points')
          int? referralPoints,
      @JsonKey(name: 'referred_by')
          int? referredBy});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? nickName = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
    Object? isTraveller = freezed,
    Object? isDriver = freezed,
    Object? isHotel = freezed,
    Object? isRestaurant = freezed,
    Object? isCrm = freezed,
    Object? gcmId = freezed,
    Object? status = freezed,
    Object? currentTeamId = freezed,
    Object? profilePic = freezed,
    Object? profilePhotoPath = freezed,
    Object? socialId = freezed,
    Object? socialType = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? twoFactorSecret = freezed,
    Object? twoFactorRecoveryCodes = freezed,
    Object? twoFactorConfirmedAt = freezed,
    Object? otp = freezed,
    Object? otpTimestamp = freezed,
    Object? referralCode = freezed,
    Object? referralPoints = freezed,
    Object? referredBy = freezed,
  }) {
    return _then(_$_UserModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTraveller: freezed == isTraveller
          ? _value.isTraveller
          : isTraveller // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDriver: freezed == isDriver
          ? _value.isDriver
          : isDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHotel: freezed == isHotel
          ? _value.isHotel
          : isHotel // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRestaurant: freezed == isRestaurant
          ? _value.isRestaurant
          : isRestaurant // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCrm: freezed == isCrm
          ? _value.isCrm
          : isCrm // ignore: cast_nullable_to_non_nullable
              as bool?,
      gcmId: freezed == gcmId
          ? _value.gcmId
          : gcmId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentTeamId: freezed == currentTeamId
          ? _value.currentTeamId
          : currentTeamId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePhotoPath: freezed == profilePhotoPath
          ? _value.profilePhotoPath
          : profilePhotoPath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      socialType: freezed == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twoFactorRecoveryCodes: freezed == twoFactorRecoveryCodes
          ? _value.twoFactorRecoveryCodes
          : twoFactorRecoveryCodes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twoFactorConfirmedAt: freezed == twoFactorConfirmedAt
          ? _value.twoFactorConfirmedAt
          : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      otpTimestamp: freezed == otpTimestamp
          ? _value.otpTimestamp
          : otpTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralPoints: freezed == referralPoints
          ? _value.referralPoints
          : referralPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {this.id,
      @JsonKey(name: 'name') this.name,
      this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'nick_name') this.nickName,
      this.phone,
      this.gender,
      this.dob,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'is_admin') this.isAdmin,
      @JsonKey(name: 'is_traveller') this.isTraveller,
      @JsonKey(name: 'is_driver') this.isDriver,
      @JsonKey(name: 'is_hotel') this.isHotel,
      @JsonKey(name: 'is_restaurant') this.isRestaurant,
      @JsonKey(name: 'is_crm') this.isCrm,
      @JsonKey(name: 'gcm_id') this.gcmId,
      this.status,
      @JsonKey(name: 'current_team_id') this.currentTeamId,
      @JsonKey(name: 'profile_pic') this.profilePic,
      @JsonKey(name: 'profile_photo_path') this.profilePhotoPath,
      @JsonKey(name: 'social_id') this.socialId,
      @JsonKey(name: 'social_type') this.socialType,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'two_factor_secret') this.twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes') this.twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at') this.twoFactorConfirmedAt,
      this.otp,
      @JsonKey(name: 'otp_timestamp') this.otpTimestamp,
      @JsonKey(name: 'referral_code') this.referralCode,
      @JsonKey(name: 'referral_points') this.referralPoints,
      @JsonKey(name: 'referred_by') this.referredBy});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final dynamic emailVerifiedAt;
  @override
  @JsonKey(name: 'nick_name')
  final String? nickName;
  @override
  final String? phone;
  @override
  final String? gender;
  @override
  final dynamic dob;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'is_admin')
  final bool? isAdmin;
  @override
  @JsonKey(name: 'is_traveller')
  final bool? isTraveller;
  @override
  @JsonKey(name: 'is_driver')
  final bool? isDriver;
  @override
  @JsonKey(name: 'is_hotel')
  final bool? isHotel;
  @override
  @JsonKey(name: 'is_restaurant')
  final bool? isRestaurant;
  @override
  @JsonKey(name: 'is_crm')
  final bool? isCrm;
  @override
  @JsonKey(name: 'gcm_id')
  final dynamic gcmId;
  @override
  final bool? status;
  @override
  @JsonKey(name: 'current_team_id')
  final dynamic currentTeamId;
  @override
  @JsonKey(name: 'profile_pic')
  final dynamic profilePic;
  @override
  @JsonKey(name: 'profile_photo_path')
  final dynamic profilePhotoPath;
  @override
  @JsonKey(name: 'social_id')
  final dynamic socialId;
  @override
  @JsonKey(name: 'social_type')
  final dynamic socialType;
  @override
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'two_factor_secret')
  final dynamic twoFactorSecret;
  @override
  @JsonKey(name: 'two_factor_recovery_codes')
  final dynamic twoFactorRecoveryCodes;
  @override
  @JsonKey(name: 'two_factor_confirmed_at')
  final dynamic twoFactorConfirmedAt;
  @override
  final int? otp;
  @override
  @JsonKey(name: 'otp_timestamp')
  final String? otpTimestamp;
  @override
  @JsonKey(name: 'referral_code')
  final String? referralCode;
  @override
  @JsonKey(name: 'referral_points')
  final int? referralPoints;
  @override
  @JsonKey(name: 'referred_by')
  final int? referredBy;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, nickName: $nickName, phone: $phone, gender: $gender, dob: $dob, isActive: $isActive, isAdmin: $isAdmin, isTraveller: $isTraveller, isDriver: $isDriver, isHotel: $isHotel, isRestaurant: $isRestaurant, isCrm: $isCrm, gcmId: $gcmId, status: $status, currentTeamId: $currentTeamId, profilePic: $profilePic, profilePhotoPath: $profilePhotoPath, socialId: $socialId, socialType: $socialType, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, twoFactorSecret: $twoFactorSecret, twoFactorRecoveryCodes: $twoFactorRecoveryCodes, twoFactorConfirmedAt: $twoFactorConfirmedAt, otp: $otp, otpTimestamp: $otpTimestamp, referralCode: $referralCode, referralPoints: $referralPoints, referredBy: $referredBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.isTraveller, isTraveller) ||
                other.isTraveller == isTraveller) &&
            (identical(other.isDriver, isDriver) ||
                other.isDriver == isDriver) &&
            (identical(other.isHotel, isHotel) || other.isHotel == isHotel) &&
            (identical(other.isRestaurant, isRestaurant) ||
                other.isRestaurant == isRestaurant) &&
            (identical(other.isCrm, isCrm) || other.isCrm == isCrm) &&
            const DeepCollectionEquality().equals(other.gcmId, gcmId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.currentTeamId, currentTeamId) &&
            const DeepCollectionEquality()
                .equals(other.profilePic, profilePic) &&
            const DeepCollectionEquality()
                .equals(other.profilePhotoPath, profilePhotoPath) &&
            const DeepCollectionEquality().equals(other.socialId, socialId) &&
            const DeepCollectionEquality()
                .equals(other.socialType, socialType) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.twoFactorSecret, twoFactorSecret) &&
            const DeepCollectionEquality()
                .equals(other.twoFactorRecoveryCodes, twoFactorRecoveryCodes) &&
            const DeepCollectionEquality()
                .equals(other.twoFactorConfirmedAt, twoFactorConfirmedAt) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpTimestamp, otpTimestamp) ||
                other.otpTimestamp == otpTimestamp) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referralPoints, referralPoints) ||
                other.referralPoints == referralPoints) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        const DeepCollectionEquality().hash(emailVerifiedAt),
        nickName,
        phone,
        gender,
        const DeepCollectionEquality().hash(dob),
        isActive,
        isAdmin,
        isTraveller,
        isDriver,
        isHotel,
        isRestaurant,
        isCrm,
        const DeepCollectionEquality().hash(gcmId),
        status,
        const DeepCollectionEquality().hash(currentTeamId),
        const DeepCollectionEquality().hash(profilePic),
        const DeepCollectionEquality().hash(profilePhotoPath),
        const DeepCollectionEquality().hash(socialId),
        const DeepCollectionEquality().hash(socialType),
        const DeepCollectionEquality().hash(deletedAt),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(twoFactorSecret),
        const DeepCollectionEquality().hash(twoFactorRecoveryCodes),
        const DeepCollectionEquality().hash(twoFactorConfirmedAt),
        otp,
        otpTimestamp,
        referralCode,
        referralPoints,
        referredBy
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final int? id,
      @JsonKey(name: 'name')
          final String? name,
      final String? email,
      @JsonKey(name: 'email_verified_at')
          final dynamic emailVerifiedAt,
      @JsonKey(name: 'nick_name')
          final String? nickName,
      final String? phone,
      final String? gender,
      final dynamic dob,
      @JsonKey(name: 'is_active')
          final bool? isActive,
      @JsonKey(name: 'is_admin')
          final bool? isAdmin,
      @JsonKey(name: 'is_traveller')
          final bool? isTraveller,
      @JsonKey(name: 'is_driver')
          final bool? isDriver,
      @JsonKey(name: 'is_hotel')
          final bool? isHotel,
      @JsonKey(name: 'is_restaurant')
          final bool? isRestaurant,
      @JsonKey(name: 'is_crm')
          final bool? isCrm,
      @JsonKey(name: 'gcm_id')
          final dynamic gcmId,
      final bool? status,
      @JsonKey(name: 'current_team_id')
          final dynamic currentTeamId,
      @JsonKey(name: 'profile_pic')
          final dynamic profilePic,
      @JsonKey(name: 'profile_photo_path')
          final dynamic profilePhotoPath,
      @JsonKey(name: 'social_id')
          final dynamic socialId,
      @JsonKey(name: 'social_type')
          final dynamic socialType,
      @JsonKey(name: 'deleted_at')
          final dynamic deletedAt,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @JsonKey(name: 'two_factor_secret')
          final dynamic twoFactorSecret,
      @JsonKey(name: 'two_factor_recovery_codes')
          final dynamic twoFactorRecoveryCodes,
      @JsonKey(name: 'two_factor_confirmed_at')
          final dynamic twoFactorConfirmedAt,
      final int? otp,
      @JsonKey(name: 'otp_timestamp')
          final String? otpTimestamp,
      @JsonKey(name: 'referral_code')
          final String? referralCode,
      @JsonKey(name: 'referral_points')
          final int? referralPoints,
      @JsonKey(name: 'referred_by')
          final int? referredBy}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(name: 'email_verified_at')
  dynamic get emailVerifiedAt;
  @override
  @JsonKey(name: 'nick_name')
  String? get nickName;
  @override
  String? get phone;
  @override
  String? get gender;
  @override
  dynamic get dob;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'is_admin')
  bool? get isAdmin;
  @override
  @JsonKey(name: 'is_traveller')
  bool? get isTraveller;
  @override
  @JsonKey(name: 'is_driver')
  bool? get isDriver;
  @override
  @JsonKey(name: 'is_hotel')
  bool? get isHotel;
  @override
  @JsonKey(name: 'is_restaurant')
  bool? get isRestaurant;
  @override
  @JsonKey(name: 'is_crm')
  bool? get isCrm;
  @override
  @JsonKey(name: 'gcm_id')
  dynamic get gcmId;
  @override
  bool? get status;
  @override
  @JsonKey(name: 'current_team_id')
  dynamic get currentTeamId;
  @override
  @JsonKey(name: 'profile_pic')
  dynamic get profilePic;
  @override
  @JsonKey(name: 'profile_photo_path')
  dynamic get profilePhotoPath;
  @override
  @JsonKey(name: 'social_id')
  dynamic get socialId;
  @override
  @JsonKey(name: 'social_type')
  dynamic get socialType;
  @override
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'two_factor_secret')
  dynamic get twoFactorSecret;
  @override
  @JsonKey(name: 'two_factor_recovery_codes')
  dynamic get twoFactorRecoveryCodes;
  @override
  @JsonKey(name: 'two_factor_confirmed_at')
  dynamic get twoFactorConfirmedAt;
  @override
  int? get otp;
  @override
  @JsonKey(name: 'otp_timestamp')
  String? get otpTimestamp;
  @override
  @JsonKey(name: 'referral_code')
  String? get referralCode;
  @override
  @JsonKey(name: 'referral_points')
  int? get referralPoints;
  @override
  @JsonKey(name: 'referred_by')
  int? get referredBy;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
