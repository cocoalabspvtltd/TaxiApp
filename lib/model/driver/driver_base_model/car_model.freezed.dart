// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$CarModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_number')
  String? get regNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_model')
  String? get carModel => throw _privateConstructorUsedError;
  dynamic get color => throw _privateConstructorUsedError;
  int? get seats => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  dynamic get latitude => throw _privateConstructorUsedError;
  dynamic get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_point')
  dynamic get locationPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarModelCopyWith<CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelCopyWith<$Res> {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) then) =
      _$CarModelCopyWithImpl<$Res, CarModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'reg_number') String? regNumber,
      @JsonKey(name: 'car_model') String? carModel,
      dynamic color,
      int? seats,
      String? category,
      dynamic latitude,
      dynamic longitude,
      @JsonKey(name: 'location_point') dynamic locationPoint,
      @JsonKey(name: 'is_active') bool? isActive,
      dynamic status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CarModelCopyWithImpl<$Res, $Val extends CarModel>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverId = freezed,
    Object? regNumber = freezed,
    Object? carModel = freezed,
    Object? color = freezed,
    Object? seats = freezed,
    Object? category = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? locationPoint = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      regNumber: freezed == regNumber
          ? _value.regNumber
          : regNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      carModel: freezed == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarModelCopyWith<$Res> implements $CarModelCopyWith<$Res> {
  factory _$$_CarModelCopyWith(
          _$_CarModel value, $Res Function(_$_CarModel) then) =
      __$$_CarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'reg_number') String? regNumber,
      @JsonKey(name: 'car_model') String? carModel,
      dynamic color,
      int? seats,
      String? category,
      dynamic latitude,
      dynamic longitude,
      @JsonKey(name: 'location_point') dynamic locationPoint,
      @JsonKey(name: 'is_active') bool? isActive,
      dynamic status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_CarModelCopyWithImpl<$Res>
    extends _$CarModelCopyWithImpl<$Res, _$_CarModel>
    implements _$$_CarModelCopyWith<$Res> {
  __$$_CarModelCopyWithImpl(
      _$_CarModel _value, $Res Function(_$_CarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverId = freezed,
    Object? regNumber = freezed,
    Object? carModel = freezed,
    Object? color = freezed,
    Object? seats = freezed,
    Object? category = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? locationPoint = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_CarModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      regNumber: freezed == regNumber
          ? _value.regNumber
          : regNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      carModel: freezed == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarModel implements _CarModel {
  _$_CarModel(
      {this.id,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'reg_number') this.regNumber,
      @JsonKey(name: 'car_model') this.carModel,
      this.color,
      this.seats,
      this.category,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'location_point') this.locationPoint,
      @JsonKey(name: 'is_active') this.isActive,
      this.status,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_CarModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'reg_number')
  final String? regNumber;
  @override
  @JsonKey(name: 'car_model')
  final String? carModel;
  @override
  final dynamic color;
  @override
  final int? seats;
  @override
  final String? category;
  @override
  final dynamic latitude;
  @override
  final dynamic longitude;
  @override
  @JsonKey(name: 'location_point')
  final dynamic locationPoint;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  final dynamic status;
  @override
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CarModel(id: $id, driverId: $driverId, regNumber: $regNumber, carModel: $carModel, color: $color, seats: $seats, category: $category, latitude: $latitude, longitude: $longitude, locationPoint: $locationPoint, isActive: $isActive, status: $status, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.regNumber, regNumber) ||
                other.regNumber == regNumber) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.locationPoint, locationPoint) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      driverId,
      regNumber,
      carModel,
      const DeepCollectionEquality().hash(color),
      seats,
      category,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(locationPoint),
      isActive,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(deletedAt),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      __$$_CarModelCopyWithImpl<_$_CarModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarModelToJson(
      this,
    );
  }
}

abstract class _CarModel implements CarModel {
  factory _CarModel(
      {final int? id,
      @JsonKey(name: 'driver_id') final int? driverId,
      @JsonKey(name: 'reg_number') final String? regNumber,
      @JsonKey(name: 'car_model') final String? carModel,
      final dynamic color,
      final int? seats,
      final String? category,
      final dynamic latitude,
      final dynamic longitude,
      @JsonKey(name: 'location_point') final dynamic locationPoint,
      @JsonKey(name: 'is_active') final bool? isActive,
      final dynamic status,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$_CarModel;

  factory _CarModel.fromJson(Map<String, dynamic> json) = _$_CarModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId;
  @override
  @JsonKey(name: 'reg_number')
  String? get regNumber;
  @override
  @JsonKey(name: 'car_model')
  String? get carModel;
  @override
  dynamic get color;
  @override
  int? get seats;
  @override
  String? get category;
  @override
  dynamic get latitude;
  @override
  dynamic get longitude;
  @override
  @JsonKey(name: 'location_point')
  dynamic get locationPoint;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  dynamic get status;
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
  @JsonKey(ignore: true)
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
