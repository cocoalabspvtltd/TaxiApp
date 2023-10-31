// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      name: json['name'] as String?,
      nickName: json['nick_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as int?,
      password: json['password'] as String?,
      passwordConfirmation: json['password_confirmation'] as String?,
      gender: json['gender'] as String?,
      referralCode: json['referral_code'] as String?,
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nick_name': instance.nickName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'gender': instance.gender,
      'referral_code': instance.referralCode,
    };
