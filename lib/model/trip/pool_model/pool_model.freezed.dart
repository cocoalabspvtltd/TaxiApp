// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PoolModel _$PoolModelFromJson(Map<String, dynamic> json) {
  return _PoolModel.fromJson(json);
}

/// @nodoc
mixin _$PoolModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  dynamic get from => throw _privateConstructorUsedError;
  dynamic get to => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_count')
  int? get userCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pool_id')
  int? get poolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_trip_id')
  int? get userTripId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_lat')
  dynamic get startLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_long')
  dynamic get startLong => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_lat')
  dynamic get endLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_long')
  dynamic get endLong => throw _privateConstructorUsedError;
  Trip? get trip => throw _privateConstructorUsedError;
  List<PoolMembers>? get members => throw _privateConstructorUsedError;
  Driver? get driver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoolModelCopyWith<PoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolModelCopyWith<$Res> {
  factory $PoolModelCopyWith(PoolModel value, $Res Function(PoolModel) then) =
      _$PoolModelCopyWithImpl<$Res, PoolModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      dynamic from,
      dynamic to,
      dynamic price,
      @JsonKey(name: 'user_count') int? userCount,
      @JsonKey(name: 'pool_id') int? poolId,
      @JsonKey(name: 'user_trip_id') int? userTripId,
      @JsonKey(name: 'start_lat') dynamic startLat,
      @JsonKey(name: 'start_long') dynamic startLong,
      @JsonKey(name: 'end_lat') dynamic endLat,
      @JsonKey(name: 'end_long') dynamic endLong,
      Trip? trip,
      List<PoolMembers>? members,
      Driver? driver});

  $TripCopyWith<$Res>? get trip;
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class _$PoolModelCopyWithImpl<$Res, $Val extends PoolModel>
    implements $PoolModelCopyWith<$Res> {
  _$PoolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? price = freezed,
    Object? userCount = freezed,
    Object? poolId = freezed,
    Object? userTripId = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? endLat = freezed,
    Object? endLong = freezed,
    Object? trip = freezed,
    Object? members = freezed,
    Object? driver = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userCount: freezed == userCount
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int?,
      poolId: freezed == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as int?,
      userTripId: freezed == userTripId
          ? _value.userTripId
          : userTripId // ignore: cast_nullable_to_non_nullable
              as int?,
      startLat: freezed == startLat
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startLong: freezed == startLong
          ? _value.startLong
          : startLong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endLat: freezed == endLat
          ? _value.endLat
          : endLat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endLong: freezed == endLong
          ? _value.endLong
          : endLong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<PoolMembers>?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res>? get trip {
    if (_value.trip == null) {
      return null;
    }

    return $TripCopyWith<$Res>(_value.trip!, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PoolModelCopyWith<$Res> implements $PoolModelCopyWith<$Res> {
  factory _$$_PoolModelCopyWith(
          _$_PoolModel value, $Res Function(_$_PoolModel) then) =
      __$$_PoolModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      dynamic from,
      dynamic to,
      dynamic price,
      @JsonKey(name: 'user_count') int? userCount,
      @JsonKey(name: 'pool_id') int? poolId,
      @JsonKey(name: 'user_trip_id') int? userTripId,
      @JsonKey(name: 'start_lat') dynamic startLat,
      @JsonKey(name: 'start_long') dynamic startLong,
      @JsonKey(name: 'end_lat') dynamic endLat,
      @JsonKey(name: 'end_long') dynamic endLong,
      Trip? trip,
      List<PoolMembers>? members,
      Driver? driver});

  @override
  $TripCopyWith<$Res>? get trip;
  @override
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$_PoolModelCopyWithImpl<$Res>
    extends _$PoolModelCopyWithImpl<$Res, _$_PoolModel>
    implements _$$_PoolModelCopyWith<$Res> {
  __$$_PoolModelCopyWithImpl(
      _$_PoolModel _value, $Res Function(_$_PoolModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? price = freezed,
    Object? userCount = freezed,
    Object? poolId = freezed,
    Object? userTripId = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? endLat = freezed,
    Object? endLong = freezed,
    Object? trip = freezed,
    Object? members = freezed,
    Object? driver = freezed,
  }) {
    return _then(_$_PoolModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userCount: freezed == userCount
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int?,
      poolId: freezed == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as int?,
      userTripId: freezed == userTripId
          ? _value.userTripId
          : userTripId // ignore: cast_nullable_to_non_nullable
              as int?,
      startLat: freezed == startLat
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startLong: freezed == startLong
          ? _value.startLong
          : startLong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endLat: freezed == endLat
          ? _value.endLat
          : endLat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endLong: freezed == endLong
          ? _value.endLong
          : endLong // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<PoolMembers>?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PoolModel implements _PoolModel {
  _$_PoolModel(
      {this.id,
      this.name,
      this.status,
      this.from,
      this.to,
      this.price,
      @JsonKey(name: 'user_count') this.userCount,
      @JsonKey(name: 'pool_id') this.poolId,
      @JsonKey(name: 'user_trip_id') this.userTripId,
      @JsonKey(name: 'start_lat') this.startLat,
      @JsonKey(name: 'start_long') this.startLong,
      @JsonKey(name: 'end_lat') this.endLat,
      @JsonKey(name: 'end_long') this.endLong,
      this.trip,
      final List<PoolMembers>? members,
      this.driver})
      : _members = members;

  factory _$_PoolModel.fromJson(Map<String, dynamic> json) =>
      _$$_PoolModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final dynamic from;
  @override
  final dynamic to;
  @override
  final dynamic price;
  @override
  @JsonKey(name: 'user_count')
  final int? userCount;
  @override
  @JsonKey(name: 'pool_id')
  final int? poolId;
  @override
  @JsonKey(name: 'user_trip_id')
  final int? userTripId;
  @override
  @JsonKey(name: 'start_lat')
  final dynamic startLat;
  @override
  @JsonKey(name: 'start_long')
  final dynamic startLong;
  @override
  @JsonKey(name: 'end_lat')
  final dynamic endLat;
  @override
  @JsonKey(name: 'end_long')
  final dynamic endLong;
  @override
  final Trip? trip;
  final List<PoolMembers>? _members;
  @override
  List<PoolMembers>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Driver? driver;

  @override
  String toString() {
    return 'PoolModel(id: $id, name: $name, status: $status, from: $from, to: $to, price: $price, userCount: $userCount, poolId: $poolId, userTripId: $userTripId, startLat: $startLat, startLong: $startLong, endLat: $endLat, endLong: $endLong, trip: $trip, members: $members, driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PoolModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            (identical(other.userCount, userCount) ||
                other.userCount == userCount) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.userTripId, userTripId) ||
                other.userTripId == userTripId) &&
            const DeepCollectionEquality().equals(other.startLat, startLat) &&
            const DeepCollectionEquality().equals(other.startLong, startLong) &&
            const DeepCollectionEquality().equals(other.endLat, endLat) &&
            const DeepCollectionEquality().equals(other.endLong, endLong) &&
            (identical(other.trip, trip) || other.trip == trip) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(price),
      userCount,
      poolId,
      userTripId,
      const DeepCollectionEquality().hash(startLat),
      const DeepCollectionEquality().hash(startLong),
      const DeepCollectionEquality().hash(endLat),
      const DeepCollectionEquality().hash(endLong),
      trip,
      const DeepCollectionEquality().hash(_members),
      driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PoolModelCopyWith<_$_PoolModel> get copyWith =>
      __$$_PoolModelCopyWithImpl<_$_PoolModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PoolModelToJson(
      this,
    );
  }
}

abstract class _PoolModel implements PoolModel {
  factory _PoolModel(
      {final int? id,
      final String? name,
      final String? status,
      final dynamic from,
      final dynamic to,
      final dynamic price,
      @JsonKey(name: 'user_count') final int? userCount,
      @JsonKey(name: 'pool_id') final int? poolId,
      @JsonKey(name: 'user_trip_id') final int? userTripId,
      @JsonKey(name: 'start_lat') final dynamic startLat,
      @JsonKey(name: 'start_long') final dynamic startLong,
      @JsonKey(name: 'end_lat') final dynamic endLat,
      @JsonKey(name: 'end_long') final dynamic endLong,
      final Trip? trip,
      final List<PoolMembers>? members,
      final Driver? driver}) = _$_PoolModel;

  factory _PoolModel.fromJson(Map<String, dynamic> json) =
      _$_PoolModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get status;
  @override
  dynamic get from;
  @override
  dynamic get to;
  @override
  dynamic get price;
  @override
  @JsonKey(name: 'user_count')
  int? get userCount;
  @override
  @JsonKey(name: 'pool_id')
  int? get poolId;
  @override
  @JsonKey(name: 'user_trip_id')
  int? get userTripId;
  @override
  @JsonKey(name: 'start_lat')
  dynamic get startLat;
  @override
  @JsonKey(name: 'start_long')
  dynamic get startLong;
  @override
  @JsonKey(name: 'end_lat')
  dynamic get endLat;
  @override
  @JsonKey(name: 'end_long')
  dynamic get endLong;
  @override
  Trip? get trip;
  @override
  List<PoolMembers>? get members;
  @override
  Driver? get driver;
  @override
  @JsonKey(ignore: true)
  _$$_PoolModelCopyWith<_$_PoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}
