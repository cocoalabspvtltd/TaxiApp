// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  @JsonKey(name: 'pool_trip_id')
  int? get poolTripId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_lat')
  dynamic get startLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_long')
  dynamic get startLong => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_lat')
  dynamic get endLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_long')
  dynamic get endLong => throw _privateConstructorUsedError;
  @JsonKey(name: 'laravel_through_key')
  int? get laravelThroughKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pool_trip_id') int? poolTripId,
      @JsonKey(name: 'start_lat') dynamic startLat,
      @JsonKey(name: 'start_long') dynamic startLong,
      @JsonKey(name: 'end_lat') dynamic endLat,
      @JsonKey(name: 'end_long') dynamic endLong,
      @JsonKey(name: 'laravel_through_key') int? laravelThroughKey});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolTripId = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? endLat = freezed,
    Object? endLong = freezed,
    Object? laravelThroughKey = freezed,
  }) {
    return _then(_value.copyWith(
      poolTripId: freezed == poolTripId
          ? _value.poolTripId
          : poolTripId // ignore: cast_nullable_to_non_nullable
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
      laravelThroughKey: freezed == laravelThroughKey
          ? _value.laravelThroughKey
          : laravelThroughKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$_TripCopyWith(_$_Trip value, $Res Function(_$_Trip) then) =
      __$$_TripCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pool_trip_id') int? poolTripId,
      @JsonKey(name: 'start_lat') dynamic startLat,
      @JsonKey(name: 'start_long') dynamic startLong,
      @JsonKey(name: 'end_lat') dynamic endLat,
      @JsonKey(name: 'end_long') dynamic endLong,
      @JsonKey(name: 'laravel_through_key') int? laravelThroughKey});
}

/// @nodoc
class __$$_TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res, _$_Trip>
    implements _$$_TripCopyWith<$Res> {
  __$$_TripCopyWithImpl(_$_Trip _value, $Res Function(_$_Trip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolTripId = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? endLat = freezed,
    Object? endLong = freezed,
    Object? laravelThroughKey = freezed,
  }) {
    return _then(_$_Trip(
      poolTripId: freezed == poolTripId
          ? _value.poolTripId
          : poolTripId // ignore: cast_nullable_to_non_nullable
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
      laravelThroughKey: freezed == laravelThroughKey
          ? _value.laravelThroughKey
          : laravelThroughKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trip implements _Trip {
  _$_Trip(
      {@JsonKey(name: 'pool_trip_id') this.poolTripId,
      @JsonKey(name: 'start_lat') this.startLat,
      @JsonKey(name: 'start_long') this.startLong,
      @JsonKey(name: 'end_lat') this.endLat,
      @JsonKey(name: 'end_long') this.endLong,
      @JsonKey(name: 'laravel_through_key') this.laravelThroughKey});

  factory _$_Trip.fromJson(Map<String, dynamic> json) => _$$_TripFromJson(json);

  @override
  @JsonKey(name: 'pool_trip_id')
  final int? poolTripId;
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
  @JsonKey(name: 'laravel_through_key')
  final int? laravelThroughKey;

  @override
  String toString() {
    return 'Trip(poolTripId: $poolTripId, startLat: $startLat, startLong: $startLong, endLat: $endLat, endLong: $endLong, laravelThroughKey: $laravelThroughKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trip &&
            (identical(other.poolTripId, poolTripId) ||
                other.poolTripId == poolTripId) &&
            const DeepCollectionEquality().equals(other.startLat, startLat) &&
            const DeepCollectionEquality().equals(other.startLong, startLong) &&
            const DeepCollectionEquality().equals(other.endLat, endLat) &&
            const DeepCollectionEquality().equals(other.endLong, endLong) &&
            (identical(other.laravelThroughKey, laravelThroughKey) ||
                other.laravelThroughKey == laravelThroughKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      poolTripId,
      const DeepCollectionEquality().hash(startLat),
      const DeepCollectionEquality().hash(startLong),
      const DeepCollectionEquality().hash(endLat),
      const DeepCollectionEquality().hash(endLong),
      laravelThroughKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripCopyWith<_$_Trip> get copyWith =>
      __$$_TripCopyWithImpl<_$_Trip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  factory _Trip(
          {@JsonKey(name: 'pool_trip_id') final int? poolTripId,
          @JsonKey(name: 'start_lat') final dynamic startLat,
          @JsonKey(name: 'start_long') final dynamic startLong,
          @JsonKey(name: 'end_lat') final dynamic endLat,
          @JsonKey(name: 'end_long') final dynamic endLong,
          @JsonKey(name: 'laravel_through_key') final int? laravelThroughKey}) =
      _$_Trip;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$_Trip.fromJson;

  @override
  @JsonKey(name: 'pool_trip_id')
  int? get poolTripId;
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
  @JsonKey(name: 'laravel_through_key')
  int? get laravelThroughKey;
  @override
  @JsonKey(ignore: true)
  _$$_TripCopyWith<_$_Trip> get copyWith => throw _privateConstructorUsedError;
}
