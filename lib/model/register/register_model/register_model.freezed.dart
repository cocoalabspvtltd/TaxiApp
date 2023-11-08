// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nick_name')
  String? get nickName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String? get passwordConfirmation => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_code')
  String? get referralCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res, RegisterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'nick_name') String? nickName,
      String? email,
      int? phone,
      String? password,
      @JsonKey(name: 'password_confirmation') String? passwordConfirmation,
      String? gender,
      @JsonKey(name: 'referral_code') String? referralCode});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res, $Val extends RegisterModel>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? nickName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
    Object? gender = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$_RegisterModelCopyWith(
          _$_RegisterModel value, $Res Function(_$_RegisterModel) then) =
      __$$_RegisterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'nick_name') String? nickName,
      String? email,
      int? phone,
      String? password,
      @JsonKey(name: 'password_confirmation') String? passwordConfirmation,
      String? gender,
      @JsonKey(name: 'referral_code') String? referralCode});
}

/// @nodoc
class __$$_RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res, _$_RegisterModel>
    implements _$$_RegisterModelCopyWith<$Res> {
  __$$_RegisterModelCopyWithImpl(
      _$_RegisterModel _value, $Res Function(_$_RegisterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? nickName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
    Object? gender = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_$_RegisterModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  _$_RegisterModel(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'nick_name') this.nickName,
      this.email,
      this.phone,
      this.password,
      @JsonKey(name: 'password_confirmation') this.passwordConfirmation,
      this.gender,
      @JsonKey(name: 'referral_code') this.referralCode});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'nick_name')
  final String? nickName;
  @override
  final String? email;
  @override
  final int? phone;
  @override
  final String? password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String? passwordConfirmation;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'referral_code')
  final String? referralCode;

  @override
  String toString() {
    return 'RegisterModel(name: $name, nickName: $nickName, email: $email, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation, gender: $gender, referralCode: $referralCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, nickName, email, phone,
      password, passwordConfirmation, gender, referralCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      __$$_RegisterModelCopyWithImpl<_$_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(
      this,
    );
  }
}

abstract class _RegisterModel implements RegisterModel {
  factory _RegisterModel(
      {@JsonKey(name: 'name')
          final String? name,
      @JsonKey(name: 'nick_name')
          final String? nickName,
      final String? email,
      final int? phone,
      final String? password,
      @JsonKey(name: 'password_confirmation')
          final String? passwordConfirmation,
      final String? gender,
      @JsonKey(name: 'referral_code')
          final String? referralCode}) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'nick_name')
  String? get nickName;
  @override
  String? get email;
  @override
  int? get phone;
  @override
  String? get password;
  @override
  @JsonKey(name: 'password_confirmation')
  String? get passwordConfirmation;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'referral_code')
  String? get referralCode;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
