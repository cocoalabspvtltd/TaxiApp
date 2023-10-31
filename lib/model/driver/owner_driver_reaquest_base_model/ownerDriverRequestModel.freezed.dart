// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ownerDriverRequestModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OwnerDriverRequestModel _$OwnerDriverRequestModelFromJson(
    Map<String, dynamic> json) {
  return _OwnerDriverRequestModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerDriverRequestModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_id')
  int? get tripId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get requestableId => throw _privateConstructorUsedError;
  @JsonKey(name: 'requestable_type')
  String? get requestableType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<OwnerDriverRequestModel>? get pooledTrips =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'pool')
  Map<dynamic, dynamic>? get pool => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerDriverRequestModelCopyWith<OwnerDriverRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerDriverRequestModelCopyWith<$Res> {
  factory $OwnerDriverRequestModelCopyWith(OwnerDriverRequestModel value,
          $Res Function(OwnerDriverRequestModel) then) =
      _$OwnerDriverRequestModelCopyWithImpl<$Res, OwnerDriverRequestModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'trip_id') int? tripId,
      @JsonKey(name: 'name') String? driverId,
      @JsonKey(name: 'phone') String? requestableId,
      @JsonKey(name: 'requestable_type') String? requestableType,
      String? status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<OwnerDriverRequestModel>? pooledTrips,
      @JsonKey(name: 'pool') Map<dynamic, dynamic>? pool});
}

/// @nodoc
class _$OwnerDriverRequestModelCopyWithImpl<$Res,
        $Val extends OwnerDriverRequestModel>
    implements $OwnerDriverRequestModelCopyWith<$Res> {
  _$OwnerDriverRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tripId = freezed,
    Object? driverId = freezed,
    Object? requestableId = freezed,
    Object? requestableType = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pooledTrips = freezed,
    Object? pool = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tripId: freezed == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestableId: freezed == requestableId
          ? _value.requestableId
          : requestableId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestableType: freezed == requestableType
          ? _value.requestableType
          : requestableType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pooledTrips: freezed == pooledTrips
          ? _value.pooledTrips
          : pooledTrips // ignore: cast_nullable_to_non_nullable
              as List<OwnerDriverRequestModel>?,
      pool: freezed == pool
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerDriverRequestModelCopyWith<$Res>
    implements $OwnerDriverRequestModelCopyWith<$Res> {
  factory _$$_OwnerDriverRequestModelCopyWith(_$_OwnerDriverRequestModel value,
          $Res Function(_$_OwnerDriverRequestModel) then) =
      __$$_OwnerDriverRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'trip_id') int? tripId,
      @JsonKey(name: 'name') String? driverId,
      @JsonKey(name: 'phone') String? requestableId,
      @JsonKey(name: 'requestable_type') String? requestableType,
      String? status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<OwnerDriverRequestModel>? pooledTrips,
      @JsonKey(name: 'pool') Map<dynamic, dynamic>? pool});
}

/// @nodoc
class __$$_OwnerDriverRequestModelCopyWithImpl<$Res>
    extends _$OwnerDriverRequestModelCopyWithImpl<$Res,
        _$_OwnerDriverRequestModel>
    implements _$$_OwnerDriverRequestModelCopyWith<$Res> {
  __$$_OwnerDriverRequestModelCopyWithImpl(_$_OwnerDriverRequestModel _value,
      $Res Function(_$_OwnerDriverRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tripId = freezed,
    Object? driverId = freezed,
    Object? requestableId = freezed,
    Object? requestableType = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pooledTrips = freezed,
    Object? pool = freezed,
  }) {
    return _then(_$_OwnerDriverRequestModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tripId: freezed == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestableId: freezed == requestableId
          ? _value.requestableId
          : requestableId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestableType: freezed == requestableType
          ? _value.requestableType
          : requestableType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pooledTrips: freezed == pooledTrips
          ? _value._pooledTrips
          : pooledTrips // ignore: cast_nullable_to_non_nullable
              as List<OwnerDriverRequestModel>?,
      pool: freezed == pool
          ? _value._pool
          : pool // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerDriverRequestModel implements _OwnerDriverRequestModel {
  _$_OwnerDriverRequestModel(
      {this.id,
      @JsonKey(name: 'trip_id') this.tripId,
      @JsonKey(name: 'name') this.driverId,
      @JsonKey(name: 'phone') this.requestableId,
      @JsonKey(name: 'requestable_type') this.requestableType,
      this.status,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final List<OwnerDriverRequestModel>? pooledTrips,
      @JsonKey(name: 'pool') final Map<dynamic, dynamic>? pool})
      : _pooledTrips = pooledTrips,
        _pool = pool;

  factory _$_OwnerDriverRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerDriverRequestModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'trip_id')
  final int? tripId;
  @override
  @JsonKey(name: 'name')
  final String? driverId;
  @override
  @JsonKey(name: 'phone')
  final String? requestableId;
  @override
  @JsonKey(name: 'requestable_type')
  final String? requestableType;
  @override
  final String? status;
  @override
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<OwnerDriverRequestModel>? _pooledTrips;
  @override
  List<OwnerDriverRequestModel>? get pooledTrips {
    final value = _pooledTrips;
    if (value == null) return null;
    if (_pooledTrips is EqualUnmodifiableListView) return _pooledTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<dynamic, dynamic>? _pool;
  @override
  @JsonKey(name: 'pool')
  Map<dynamic, dynamic>? get pool {
    final value = _pool;
    if (value == null) return null;
    if (_pool is EqualUnmodifiableMapView) return _pool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OwnerDriverRequestModel(id: $id, tripId: $tripId, driverId: $driverId, requestableId: $requestableId, requestableType: $requestableType, status: $status, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, pooledTrips: $pooledTrips, pool: $pool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerDriverRequestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.requestableId, requestableId) ||
                other.requestableId == requestableId) &&
            (identical(other.requestableType, requestableType) ||
                other.requestableType == requestableType) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._pooledTrips, _pooledTrips) &&
            const DeepCollectionEquality().equals(other._pool, _pool));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tripId,
      driverId,
      requestableId,
      requestableType,
      status,
      const DeepCollectionEquality().hash(deletedAt),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_pooledTrips),
      const DeepCollectionEquality().hash(_pool));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerDriverRequestModelCopyWith<_$_OwnerDriverRequestModel>
      get copyWith =>
          __$$_OwnerDriverRequestModelCopyWithImpl<_$_OwnerDriverRequestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerDriverRequestModelToJson(
      this,
    );
  }
}

abstract class _OwnerDriverRequestModel implements OwnerDriverRequestModel {
  factory _OwnerDriverRequestModel(
          {final int? id,
          @JsonKey(name: 'trip_id') final int? tripId,
          @JsonKey(name: 'name') final String? driverId,
          @JsonKey(name: 'phone') final String? requestableId,
          @JsonKey(name: 'requestable_type') final String? requestableType,
          final String? status,
          @JsonKey(name: 'deleted_at') final dynamic deletedAt,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          final List<OwnerDriverRequestModel>? pooledTrips,
          @JsonKey(name: 'pool') final Map<dynamic, dynamic>? pool}) =
      _$_OwnerDriverRequestModel;

  factory _OwnerDriverRequestModel.fromJson(Map<String, dynamic> json) =
      _$_OwnerDriverRequestModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'trip_id')
  int? get tripId;
  @override
  @JsonKey(name: 'name')
  String? get driverId;
  @override
  @JsonKey(name: 'phone')
  String? get requestableId;
  @override
  @JsonKey(name: 'requestable_type')
  String? get requestableType;
  @override
  String? get status;
  @override
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  List<OwnerDriverRequestModel>? get pooledTrips;
  @override
  @JsonKey(name: 'pool')
  Map<dynamic, dynamic>? get pool;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerDriverRequestModelCopyWith<_$_OwnerDriverRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
