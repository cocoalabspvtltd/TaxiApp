// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_driver_request_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OwnerDriverRequestBaseModel _$OwnerDriverRequestBaseModelFromJson(
    Map<String, dynamic> json) {
  return _OwnerDriverRequestBaseModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerDriverRequestBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<OwnerDriverRequestModel>? get requests =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerDriverRequestBaseModelCopyWith<OwnerDriverRequestBaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerDriverRequestBaseModelCopyWith<$Res> {
  factory $OwnerDriverRequestBaseModelCopyWith(
          OwnerDriverRequestBaseModel value,
          $Res Function(OwnerDriverRequestBaseModel) then) =
      _$OwnerDriverRequestBaseModelCopyWithImpl<$Res,
          OwnerDriverRequestBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<OwnerDriverRequestModel>? requests});
}

/// @nodoc
class _$OwnerDriverRequestBaseModelCopyWithImpl<$Res,
        $Val extends OwnerDriverRequestBaseModel>
    implements $OwnerDriverRequestBaseModelCopyWith<$Res> {
  _$OwnerDriverRequestBaseModelCopyWithImpl(this._value, this._then);

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
              as List<OwnerDriverRequestModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerDriverRequestBaseModelCopyWith<$Res>
    implements $OwnerDriverRequestBaseModelCopyWith<$Res> {
  factory _$$_OwnerDriverRequestBaseModelCopyWith(
          _$_OwnerDriverRequestBaseModel value,
          $Res Function(_$_OwnerDriverRequestBaseModel) then) =
      __$$_OwnerDriverRequestBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<OwnerDriverRequestModel>? requests});
}

/// @nodoc
class __$$_OwnerDriverRequestBaseModelCopyWithImpl<$Res>
    extends _$OwnerDriverRequestBaseModelCopyWithImpl<$Res,
        _$_OwnerDriverRequestBaseModel>
    implements _$$_OwnerDriverRequestBaseModelCopyWith<$Res> {
  __$$_OwnerDriverRequestBaseModelCopyWithImpl(
      _$_OwnerDriverRequestBaseModel _value,
      $Res Function(_$_OwnerDriverRequestBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? requests = freezed,
  }) {
    return _then(_$_OwnerDriverRequestBaseModel(
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
              as List<OwnerDriverRequestModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerDriverRequestBaseModel implements _OwnerDriverRequestBaseModel {
  _$_OwnerDriverRequestBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      final List<OwnerDriverRequestModel>? requests})
      : _requests = requests;

  factory _$_OwnerDriverRequestBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerDriverRequestBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  final List<OwnerDriverRequestModel>? _requests;
  @override
  List<OwnerDriverRequestModel>? get requests {
    final value = _requests;
    if (value == null) return null;
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OwnerDriverRequestBaseModel(success: $success, statusCode: $statusCode, message: $message, requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerDriverRequestBaseModel &&
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
  _$$_OwnerDriverRequestBaseModelCopyWith<_$_OwnerDriverRequestBaseModel>
      get copyWith => __$$_OwnerDriverRequestBaseModelCopyWithImpl<
          _$_OwnerDriverRequestBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerDriverRequestBaseModelToJson(
      this,
    );
  }
}

abstract class _OwnerDriverRequestBaseModel
    implements OwnerDriverRequestBaseModel {
  factory _OwnerDriverRequestBaseModel(
          {final bool? success,
          @JsonKey(name: 'status_code') final int? statusCode,
          final String? message,
          final List<OwnerDriverRequestModel>? requests}) =
      _$_OwnerDriverRequestBaseModel;

  factory _OwnerDriverRequestBaseModel.fromJson(Map<String, dynamic> json) =
      _$_OwnerDriverRequestBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  List<OwnerDriverRequestModel>? get requests;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerDriverRequestBaseModelCopyWith<_$_OwnerDriverRequestBaseModel>
      get copyWith => throw _privateConstructorUsedError;
}
