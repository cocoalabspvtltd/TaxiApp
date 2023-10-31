// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripBaseModel _$TripBaseModelFromJson(Map<String, dynamic> json) {
  return _TripBaseModel.fromJson(json);
}

/// @nodoc
mixin _$TripBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<TripModel>? get trips => throw _privateConstructorUsedError;
  List<TripModel>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripBaseModelCopyWith<TripBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripBaseModelCopyWith<$Res> {
  factory $TripBaseModelCopyWith(
          TripBaseModel value, $Res Function(TripBaseModel) then) =
      _$TripBaseModelCopyWithImpl<$Res, TripBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<TripModel>? trips,
      List<TripModel>? users});
}

/// @nodoc
class _$TripBaseModelCopyWithImpl<$Res, $Val extends TripBaseModel>
    implements $TripBaseModelCopyWith<$Res> {
  _$TripBaseModelCopyWithImpl(this._value, this._then);

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
    Object? trips = freezed,
    Object? users = freezed,
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
      trips: freezed == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<TripModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripBaseModelCopyWith<$Res>
    implements $TripBaseModelCopyWith<$Res> {
  factory _$$_TripBaseModelCopyWith(
          _$_TripBaseModel value, $Res Function(_$_TripBaseModel) then) =
      __$$_TripBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      List<TripModel>? trips,
      List<TripModel>? users});
}

/// @nodoc
class __$$_TripBaseModelCopyWithImpl<$Res>
    extends _$TripBaseModelCopyWithImpl<$Res, _$_TripBaseModel>
    implements _$$_TripBaseModelCopyWith<$Res> {
  __$$_TripBaseModelCopyWithImpl(
      _$_TripBaseModel _value, $Res Function(_$_TripBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? trips = freezed,
    Object? users = freezed,
  }) {
    return _then(_$_TripBaseModel(
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
      trips: freezed == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<TripModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripBaseModel implements _TripBaseModel {
  _$_TripBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      final List<TripModel>? trips,
      final List<TripModel>? users})
      : _trips = trips,
        _users = users;

  factory _$_TripBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_TripBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  final List<TripModel>? _trips;
  @override
  List<TripModel>? get trips {
    final value = _trips;
    if (value == null) return null;
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TripModel>? _users;
  @override
  List<TripModel>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TripBaseModel(success: $success, statusCode: $statusCode, message: $message, trips: $trips, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      statusCode,
      message,
      const DeepCollectionEquality().hash(_trips),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripBaseModelCopyWith<_$_TripBaseModel> get copyWith =>
      __$$_TripBaseModelCopyWithImpl<_$_TripBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripBaseModelToJson(
      this,
    );
  }
}

abstract class _TripBaseModel implements TripBaseModel {
  factory _TripBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code') final int? statusCode,
      final String? message,
      final List<TripModel>? trips,
      final List<TripModel>? users}) = _$_TripBaseModel;

  factory _TripBaseModel.fromJson(Map<String, dynamic> json) =
      _$_TripBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  List<TripModel>? get trips;
  @override
  List<TripModel>? get users;
  @override
  @JsonKey(ignore: true)
  _$$_TripBaseModelCopyWith<_$_TripBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
