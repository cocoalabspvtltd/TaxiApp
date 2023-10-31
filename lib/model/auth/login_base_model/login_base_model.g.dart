// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginBaseModel _$$_LoginBaseModelFromJson(Map<String, dynamic> json) =>
    _$_LoginBaseModel(
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_LoginBaseModelToJson(_$_LoginBaseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
    };
