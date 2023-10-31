// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginBaseModel _$LoginBaseModelFromJson(Map<String, dynamic> json) {
  return _LoginBaseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginBaseModelCopyWith<LoginBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBaseModelCopyWith<$Res> {
  factory $LoginBaseModelCopyWith(
          LoginBaseModel value, $Res Function(LoginBaseModel) then) =
      _$LoginBaseModelCopyWithImpl<$Res, LoginBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      UserModel? user,
      String? token});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginBaseModelCopyWithImpl<$Res, $Val extends LoginBaseModel>
    implements $LoginBaseModelCopyWith<$Res> {
  _$LoginBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginBaseModelCopyWith<$Res>
    implements $LoginBaseModelCopyWith<$Res> {
  factory _$$_LoginBaseModelCopyWith(
          _$_LoginBaseModel value, $Res Function(_$_LoginBaseModel) then) =
      __$$_LoginBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      UserModel? user,
      String? token});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LoginBaseModelCopyWithImpl<$Res>
    extends _$LoginBaseModelCopyWithImpl<$Res, _$_LoginBaseModel>
    implements _$$_LoginBaseModelCopyWith<$Res> {
  __$$_LoginBaseModelCopyWithImpl(
      _$_LoginBaseModel _value, $Res Function(_$_LoginBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_LoginBaseModel(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginBaseModel implements _LoginBaseModel {
  _$_LoginBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.user,
      this.token});

  factory _$_LoginBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  @override
  final UserModel? user;
  @override
  final String? token;

  @override
  String toString() {
    return 'LoginBaseModel(success: $success, statusCode: $statusCode, message: $message, user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, statusCode, message, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginBaseModelCopyWith<_$_LoginBaseModel> get copyWith =>
      __$$_LoginBaseModelCopyWithImpl<_$_LoginBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginBaseModelToJson(
      this,
    );
  }
}

abstract class _LoginBaseModel implements LoginBaseModel {
  factory _LoginBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code') final int? statusCode,
      final String? message,
      final UserModel? user,
      final String? token}) = _$_LoginBaseModel;

  factory _LoginBaseModel.fromJson(Map<String, dynamic> json) =
      _$_LoginBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  UserModel? get user;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_LoginBaseModelCopyWith<_$_LoginBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
