// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_routes_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverRoutesBaseModel _$DriverRoutesBaseModelFromJson(
    Map<String, dynamic> json) {
  return _DriverRoutesBaseModel.fromJson(json);
}

/// @nodoc
mixin _$DriverRoutesBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Driver>? get drivers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverRoutesBaseModelCopyWith<DriverRoutesBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverRoutesBaseModelCopyWith<$Res> {
  factory $DriverRoutesBaseModelCopyWith(DriverRoutesBaseModel value,
          $Res Function(DriverRoutesBaseModel) then) =
      _$DriverRoutesBaseModelCopyWithImpl<$Res, DriverRoutesBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<Driver>? drivers});
}

/// @nodoc
class _$DriverRoutesBaseModelCopyWithImpl<$Res,
        $Val extends DriverRoutesBaseModel>
    implements $DriverRoutesBaseModelCopyWith<$Res> {
  _$DriverRoutesBaseModelCopyWithImpl(this._value, this._then);

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
    Object? drivers = freezed,
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
      drivers: freezed == drivers
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverRoutesBaseModelCopyWith<$Res>
    implements $DriverRoutesBaseModelCopyWith<$Res> {
  factory _$$_DriverRoutesBaseModelCopyWith(_$_DriverRoutesBaseModel value,
          $Res Function(_$_DriverRoutesBaseModel) then) =
      __$$_DriverRoutesBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<Driver>? drivers});
}

/// @nodoc
class __$$_DriverRoutesBaseModelCopyWithImpl<$Res>
    extends _$DriverRoutesBaseModelCopyWithImpl<$Res, _$_DriverRoutesBaseModel>
    implements _$$_DriverRoutesBaseModelCopyWith<$Res> {
  __$$_DriverRoutesBaseModelCopyWithImpl(_$_DriverRoutesBaseModel _value,
      $Res Function(_$_DriverRoutesBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? drivers = freezed,
  }) {
    return _then(_$_DriverRoutesBaseModel(
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
      drivers: freezed == drivers
          ? _value._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverRoutesBaseModel implements _DriverRoutesBaseModel {
  _$_DriverRoutesBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      final List<Driver>? drivers})
      : _drivers = drivers;

  factory _$_DriverRoutesBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_DriverRoutesBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  final List<Driver>? _drivers;
  @override
  List<Driver>? get drivers {
    final value = _drivers;
    if (value == null) return null;
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DriverRoutesBaseModel(success: $success, statusCode: $statusCode, message: $message, drivers: $drivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverRoutesBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._drivers, _drivers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode, message,
      const DeepCollectionEquality().hash(_drivers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverRoutesBaseModelCopyWith<_$_DriverRoutesBaseModel> get copyWith =>
      __$$_DriverRoutesBaseModelCopyWithImpl<_$_DriverRoutesBaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverRoutesBaseModelToJson(
      this,
    );
  }
}

abstract class _DriverRoutesBaseModel implements DriverRoutesBaseModel {
  factory _DriverRoutesBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code') final int? statusCode,
      final String? message,
      final List<Driver>? drivers}) = _$_DriverRoutesBaseModel;

  factory _DriverRoutesBaseModel.fromJson(Map<String, dynamic> json) =
      _$_DriverRoutesBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  List<Driver>? get drivers;
  @override
  @JsonKey(ignore: true)
  _$$_DriverRoutesBaseModelCopyWith<_$_DriverRoutesBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
