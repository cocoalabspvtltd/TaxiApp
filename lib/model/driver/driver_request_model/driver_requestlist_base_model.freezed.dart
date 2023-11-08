// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_requestlist_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverRequsetlistBaseModel _$DriverRequsetlistBaseModelFromJson(
    Map<String, dynamic> json) {
  return _DriverRequsetlistBaseModel.fromJson(json);
}

/// @nodoc
mixin _$DriverRequsetlistBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<DriverRequestModel>? get requests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverRequsetlistBaseModelCopyWith<DriverRequsetlistBaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverRequsetlistBaseModelCopyWith<$Res> {
  factory $DriverRequsetlistBaseModelCopyWith(DriverRequsetlistBaseModel value,
          $Res Function(DriverRequsetlistBaseModel) then) =
      _$DriverRequsetlistBaseModelCopyWithImpl<$Res,
          DriverRequsetlistBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<DriverRequestModel>? requests});
}

/// @nodoc
class _$DriverRequsetlistBaseModelCopyWithImpl<$Res,
        $Val extends DriverRequsetlistBaseModel>
    implements $DriverRequsetlistBaseModelCopyWith<$Res> {
  _$DriverRequsetlistBaseModelCopyWithImpl(this._value, this._then);

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
    Object? requests = freezed,
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
      requests: freezed == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<DriverRequestModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverRequsetlistBaseModelCopyWith<$Res>
    implements $DriverRequsetlistBaseModelCopyWith<$Res> {
  factory _$$_DriverRequsetlistBaseModelCopyWith(
          _$_DriverRequsetlistBaseModel value,
          $Res Function(_$_DriverRequsetlistBaseModel) then) =
      __$$_DriverRequsetlistBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<DriverRequestModel>? requests});
}

/// @nodoc
class __$$_DriverRequsetlistBaseModelCopyWithImpl<$Res>
    extends _$DriverRequsetlistBaseModelCopyWithImpl<$Res,
        _$_DriverRequsetlistBaseModel>
    implements _$$_DriverRequsetlistBaseModelCopyWith<$Res> {
  __$$_DriverRequsetlistBaseModelCopyWithImpl(
      _$_DriverRequsetlistBaseModel _value,
      $Res Function(_$_DriverRequsetlistBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? requests = freezed,
  }) {
    return _then(_$_DriverRequsetlistBaseModel(
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
      requests: freezed == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<DriverRequestModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverRequsetlistBaseModel implements _DriverRequsetlistBaseModel {
  _$_DriverRequsetlistBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      final List<DriverRequestModel>? requests})
      : _requests = requests;

  factory _$_DriverRequsetlistBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_DriverRequsetlistBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  final List<DriverRequestModel>? _requests;
  @override
  List<DriverRequestModel>? get requests {
    final value = _requests;
    if (value == null) return null;
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DriverRequsetlistBaseModel(success: $success, statusCode: $statusCode, message: $message, requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverRequsetlistBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode, message,
      const DeepCollectionEquality().hash(_requests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverRequsetlistBaseModelCopyWith<_$_DriverRequsetlistBaseModel>
      get copyWith => __$$_DriverRequsetlistBaseModelCopyWithImpl<
          _$_DriverRequsetlistBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverRequsetlistBaseModelToJson(
      this,
    );
  }
}

abstract class _DriverRequsetlistBaseModel
    implements DriverRequsetlistBaseModel {
  factory _DriverRequsetlistBaseModel(
          {final bool? success,
          @JsonKey(name: 'status_code') final int? statusCode,
          final String? message,
          final List<DriverRequestModel>? requests}) =
      _$_DriverRequsetlistBaseModel;

  factory _DriverRequsetlistBaseModel.fromJson(Map<String, dynamic> json) =
      _$_DriverRequsetlistBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  List<DriverRequestModel>? get requests;
  @override
  @JsonKey(ignore: true)
  _$$_DriverRequsetlistBaseModelCopyWith<_$_DriverRequsetlistBaseModel>
      get copyWith => throw _privateConstructorUsedError;
}
