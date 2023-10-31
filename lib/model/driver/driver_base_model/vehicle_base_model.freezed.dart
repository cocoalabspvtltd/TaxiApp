// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleBaseModel _$VehicleBaseModelFromJson(Map<String, dynamic> json) {
  return _VehicleBaseModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VehicleModel? get driver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleBaseModelCopyWith<VehicleBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleBaseModelCopyWith<$Res> {
  factory $VehicleBaseModelCopyWith(
          VehicleBaseModel value, $Res Function(VehicleBaseModel) then) =
      _$VehicleBaseModelCopyWithImpl<$Res, VehicleBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      VehicleModel? driver});

  $VehicleModelCopyWith<$Res>? get driver;
}

/// @nodoc
class _$VehicleBaseModelCopyWithImpl<$Res, $Val extends VehicleBaseModel>
    implements $VehicleBaseModelCopyWith<$Res> {
  _$VehicleBaseModelCopyWithImpl(this._value, this._then);

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
    Object? driver = freezed,
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
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as VehicleModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleModelCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $VehicleModelCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VehicleBaseModelCopyWith<$Res>
    implements $VehicleBaseModelCopyWith<$Res> {
  factory _$$_VehicleBaseModelCopyWith(
          _$_VehicleBaseModel value, $Res Function(_$_VehicleBaseModel) then) =
      __$$_VehicleBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      VehicleModel? driver});

  @override
  $VehicleModelCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$_VehicleBaseModelCopyWithImpl<$Res>
    extends _$VehicleBaseModelCopyWithImpl<$Res, _$_VehicleBaseModel>
    implements _$$_VehicleBaseModelCopyWith<$Res> {
  __$$_VehicleBaseModelCopyWithImpl(
      _$_VehicleBaseModel _value, $Res Function(_$_VehicleBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? driver = freezed,
  }) {
    return _then(_$_VehicleBaseModel(
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
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as VehicleModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleBaseModel implements _VehicleBaseModel {
  _$_VehicleBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.driver});

  factory _$_VehicleBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  @override
  final VehicleModel? driver;

  @override
  String toString() {
    return 'VehicleBaseModel(success: $success, statusCode: $statusCode, message: $message, driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, statusCode, message, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleBaseModelCopyWith<_$_VehicleBaseModel> get copyWith =>
      __$$_VehicleBaseModelCopyWithImpl<_$_VehicleBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleBaseModelToJson(
      this,
    );
  }
}

abstract class _VehicleBaseModel implements VehicleBaseModel {
  factory _VehicleBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code') final int? statusCode,
      final String? message,
      final VehicleModel? driver}) = _$_VehicleBaseModel;

  factory _VehicleBaseModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  VehicleModel? get driver;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleBaseModelCopyWith<_$_VehicleBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
