// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverRequestModel _$DriverRequestModelFromJson(Map<String, dynamic> json) {
  return _DriverRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DriverRequestModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_point')
  String? get locationPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_lat')
  String? get startLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_long')
  String? get startLong => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance')
  String? get distance => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pool')
  Map<String, dynamic>? get pool => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverRequestModelCopyWith<DriverRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverRequestModelCopyWith<$Res> {
  factory $DriverRequestModelCopyWith(
          DriverRequestModel value, $Res Function(DriverRequestModel) then) =
      _$DriverRequestModelCopyWithImpl<$Res, DriverRequestModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'location_point') String? locationPoint,
      @JsonKey(name: 'start_lat') String? startLat,
      @JsonKey(name: 'start_long') String? startLong,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'phone') String? phoneNo,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'distance') String? distance,
      String? status,
      @JsonKey(name: 'pool') Map<String, dynamic>? pool});
}

/// @nodoc
class _$DriverRequestModelCopyWithImpl<$Res, $Val extends DriverRequestModel>
    implements $DriverRequestModelCopyWith<$Res> {
  _$DriverRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? locationPoint = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? name = freezed,
    Object? phoneNo = freezed,
    Object? userId = freezed,
    Object? distance = freezed,
    Object? status = freezed,
    Object? pool = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      startLat: freezed == startLat
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as String?,
      startLong: freezed == startLong
          ? _value.startLong
          : startLong // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: freezed == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      pool: freezed == pool
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverRequestModelCopyWith<$Res>
    implements $DriverRequestModelCopyWith<$Res> {
  factory _$$_DriverRequestModelCopyWith(_$_DriverRequestModel value,
          $Res Function(_$_DriverRequestModel) then) =
      __$$_DriverRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'location_point') String? locationPoint,
      @JsonKey(name: 'start_lat') String? startLat,
      @JsonKey(name: 'start_long') String? startLong,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'phone') String? phoneNo,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'distance') String? distance,
      String? status,
      @JsonKey(name: 'pool') Map<String, dynamic>? pool});
}

/// @nodoc
class __$$_DriverRequestModelCopyWithImpl<$Res>
    extends _$DriverRequestModelCopyWithImpl<$Res, _$_DriverRequestModel>
    implements _$$_DriverRequestModelCopyWith<$Res> {
  __$$_DriverRequestModelCopyWithImpl(
      _$_DriverRequestModel _value, $Res Function(_$_DriverRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? locationPoint = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? name = freezed,
    Object? phoneNo = freezed,
    Object? userId = freezed,
    Object? distance = freezed,
    Object? status = freezed,
    Object? pool = freezed,
  }) {
    return _then(_$_DriverRequestModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      startLat: freezed == startLat
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as String?,
      startLong: freezed == startLong
          ? _value.startLong
          : startLong // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: freezed == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      pool: freezed == pool
          ? _value._pool
          : pool // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverRequestModel implements _DriverRequestModel {
  _$_DriverRequestModel(
      {this.id,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'location_point') this.locationPoint,
      @JsonKey(name: 'start_lat') this.startLat,
      @JsonKey(name: 'start_long') this.startLong,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'phone') this.phoneNo,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'distance') this.distance,
      this.status,
      @JsonKey(name: 'pool') final Map<String, dynamic>? pool})
      : _pool = pool;

  factory _$_DriverRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_DriverRequestModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
  @override
  @JsonKey(name: 'location_point')
  final String? locationPoint;
  @override
  @JsonKey(name: 'start_lat')
  final String? startLat;
  @override
  @JsonKey(name: 'start_long')
  final String? startLong;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'phone')
  final String? phoneNo;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'distance')
  final String? distance;
  @override
  final String? status;
  final Map<String, dynamic>? _pool;
  @override
  @JsonKey(name: 'pool')
  Map<String, dynamic>? get pool {
    final value = _pool;
    if (value == null) return null;
    if (_pool is EqualUnmodifiableMapView) return _pool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DriverRequestModel(id: $id, from: $from, to: $to, locationPoint: $locationPoint, startLat: $startLat, startLong: $startLong, name: $name, phoneNo: $phoneNo, userId: $userId, distance: $distance, status: $status, pool: $pool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverRequestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.locationPoint, locationPoint) ||
                other.locationPoint == locationPoint) &&
            (identical(other.startLat, startLat) ||
                other.startLat == startLat) &&
            (identical(other.startLong, startLong) ||
                other.startLong == startLong) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._pool, _pool));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      from,
      to,
      locationPoint,
      startLat,
      startLong,
      name,
      phoneNo,
      userId,
      distance,
      status,
      const DeepCollectionEquality().hash(_pool));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverRequestModelCopyWith<_$_DriverRequestModel> get copyWith =>
      __$$_DriverRequestModelCopyWithImpl<_$_DriverRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverRequestModelToJson(
      this,
    );
  }
}

abstract class _DriverRequestModel implements DriverRequestModel {
  factory _DriverRequestModel(
          {final int? id,
          @JsonKey(name: 'from') final String? from,
          @JsonKey(name: 'to') final String? to,
          @JsonKey(name: 'location_point') final String? locationPoint,
          @JsonKey(name: 'start_lat') final String? startLat,
          @JsonKey(name: 'start_long') final String? startLong,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'phone') final String? phoneNo,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'distance') final String? distance,
          final String? status,
          @JsonKey(name: 'pool') final Map<String, dynamic>? pool}) =
      _$_DriverRequestModel;

  factory _DriverRequestModel.fromJson(Map<String, dynamic> json) =
      _$_DriverRequestModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(name: 'location_point')
  String? get locationPoint;
  @override
  @JsonKey(name: 'start_lat')
  String? get startLat;
  @override
  @JsonKey(name: 'start_long')
  String? get startLong;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'phone')
  String? get phoneNo;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'distance')
  String? get distance;
  @override
  String? get status;
  @override
  @JsonKey(name: 'pool')
  Map<String, dynamic>? get pool;
  @override
  @JsonKey(ignore: true)
  _$$_DriverRequestModelCopyWith<_$_DriverRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
