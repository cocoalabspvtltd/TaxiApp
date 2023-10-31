// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vechicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return _VehicleModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_number')
  String? get licenseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'exp_date')
  String? get expDate => throw _privateConstructorUsedError;
  String? get documents => throw _privateConstructorUsedError;
  dynamic get latitude => throw _privateConstructorUsedError;
  dynamic get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_location')
  dynamic get currentLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_point')
  dynamic get locationPoint => throw _privateConstructorUsedError;
  dynamic get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_picture')
  String? get licensePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'taxi_permit')
  String? get taxiPermit => throw _privateConstructorUsedError;
  @JsonKey(name: 'car')
  CarModel? get car => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelCopyWith<VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelCopyWith<$Res> {
  factory $VehicleModelCopyWith(
          VehicleModel value, $Res Function(VehicleModel) then) =
      _$VehicleModelCopyWithImpl<$Res, VehicleModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'license_number') String? licenseNumber,
      @JsonKey(name: 'exp_date') String? expDate,
      String? documents,
      dynamic latitude,
      dynamic longitude,
      @JsonKey(name: 'current_location') dynamic currentLocation,
      @JsonKey(name: 'location_point') dynamic locationPoint,
      dynamic area,
      @JsonKey(name: 'is_active') bool? isActive,
      bool? status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'license_picture') String? licensePicture,
      @JsonKey(name: 'taxi_permit') String? taxiPermit,
      @JsonKey(name: 'car') CarModel? car});

  $CarModelCopyWith<$Res>? get car;
}

/// @nodoc
class _$VehicleModelCopyWithImpl<$Res, $Val extends VehicleModel>
    implements $VehicleModelCopyWith<$Res> {
  _$VehicleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? licenseNumber = freezed,
    Object? expDate = freezed,
    Object? documents = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? currentLocation = freezed,
    Object? locationPoint = freezed,
    Object? area = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? licensePicture = freezed,
    Object? taxiPermit = freezed,
    Object? car = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate: freezed == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      licensePicture: freezed == licensePicture
          ? _value.licensePicture
          : licensePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      taxiPermit: freezed == taxiPermit
          ? _value.taxiPermit
          : taxiPermit // ignore: cast_nullable_to_non_nullable
              as String?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as CarModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarModelCopyWith<$Res>? get car {
    if (_value.car == null) {
      return null;
    }

    return $CarModelCopyWith<$Res>(_value.car!, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VehicleModelCopyWith<$Res>
    implements $VehicleModelCopyWith<$Res> {
  factory _$$_VehicleModelCopyWith(
          _$_VehicleModel value, $Res Function(_$_VehicleModel) then) =
      __$$_VehicleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'license_number') String? licenseNumber,
      @JsonKey(name: 'exp_date') String? expDate,
      String? documents,
      dynamic latitude,
      dynamic longitude,
      @JsonKey(name: 'current_location') dynamic currentLocation,
      @JsonKey(name: 'location_point') dynamic locationPoint,
      dynamic area,
      @JsonKey(name: 'is_active') bool? isActive,
      bool? status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'license_picture') String? licensePicture,
      @JsonKey(name: 'taxi_permit') String? taxiPermit,
      @JsonKey(name: 'car') CarModel? car});

  @override
  $CarModelCopyWith<$Res>? get car;
}

/// @nodoc
class __$$_VehicleModelCopyWithImpl<$Res>
    extends _$VehicleModelCopyWithImpl<$Res, _$_VehicleModel>
    implements _$$_VehicleModelCopyWith<$Res> {
  __$$_VehicleModelCopyWithImpl(
      _$_VehicleModel _value, $Res Function(_$_VehicleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? licenseNumber = freezed,
    Object? expDate = freezed,
    Object? documents = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? currentLocation = freezed,
    Object? locationPoint = freezed,
    Object? area = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? licensePicture = freezed,
    Object? taxiPermit = freezed,
    Object? car = freezed,
  }) {
    return _then(_$_VehicleModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate: freezed == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      licensePicture: freezed == licensePicture
          ? _value.licensePicture
          : licensePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      taxiPermit: freezed == taxiPermit
          ? _value.taxiPermit
          : taxiPermit // ignore: cast_nullable_to_non_nullable
              as String?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as CarModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleModel implements _VehicleModel {
  _$_VehicleModel(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'license_number') this.licenseNumber,
      @JsonKey(name: 'exp_date') this.expDate,
      this.documents,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'current_location') this.currentLocation,
      @JsonKey(name: 'location_point') this.locationPoint,
      this.area,
      @JsonKey(name: 'is_active') this.isActive,
      this.status,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'license_picture') this.licensePicture,
      @JsonKey(name: 'taxi_permit') this.taxiPermit,
      @JsonKey(name: 'car') this.car});

  factory _$_VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'license_number')
  final String? licenseNumber;
  @override
  @JsonKey(name: 'exp_date')
  final String? expDate;
  @override
  final String? documents;
  @override
  final dynamic latitude;
  @override
  final dynamic longitude;
  @override
  @JsonKey(name: 'current_location')
  final dynamic currentLocation;
  @override
  @JsonKey(name: 'location_point')
  final dynamic locationPoint;
  @override
  final dynamic area;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  final bool? status;
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
  @JsonKey(name: 'license_picture')
  final String? licensePicture;
  @override
  @JsonKey(name: 'taxi_permit')
  final String? taxiPermit;
  @override
  @JsonKey(name: 'car')
  final CarModel? car;

  @override
  String toString() {
    return 'VehicleModel(id: $id, userId: $userId, licenseNumber: $licenseNumber, expDate: $expDate, documents: $documents, latitude: $latitude, longitude: $longitude, currentLocation: $currentLocation, locationPoint: $locationPoint, area: $area, isActive: $isActive, status: $status, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, licensePicture: $licensePicture, taxiPermit: $taxiPermit, car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.expDate, expDate) || other.expDate == expDate) &&
            (identical(other.documents, documents) ||
                other.documents == documents) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.currentLocation, currentLocation) &&
            const DeepCollectionEquality()
                .equals(other.locationPoint, locationPoint) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.licensePicture, licensePicture) ||
                other.licensePicture == licensePicture) &&
            (identical(other.taxiPermit, taxiPermit) ||
                other.taxiPermit == taxiPermit) &&
            (identical(other.car, car) || other.car == car));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      licenseNumber,
      expDate,
      documents,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(currentLocation),
      const DeepCollectionEquality().hash(locationPoint),
      const DeepCollectionEquality().hash(area),
      isActive,
      status,
      const DeepCollectionEquality().hash(deletedAt),
      createdAt,
      updatedAt,
      licensePicture,
      taxiPermit,
      car);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      __$$_VehicleModelCopyWithImpl<_$_VehicleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleModelToJson(
      this,
    );
  }
}

abstract class _VehicleModel implements VehicleModel {
  factory _VehicleModel(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'license_number') final String? licenseNumber,
      @JsonKey(name: 'exp_date') final String? expDate,
      final String? documents,
      final dynamic latitude,
      final dynamic longitude,
      @JsonKey(name: 'current_location') final dynamic currentLocation,
      @JsonKey(name: 'location_point') final dynamic locationPoint,
      final dynamic area,
      @JsonKey(name: 'is_active') final bool? isActive,
      final bool? status,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'license_picture') final String? licensePicture,
      @JsonKey(name: 'taxi_permit') final String? taxiPermit,
      @JsonKey(name: 'car') final CarModel? car}) = _$_VehicleModel;

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'license_number')
  String? get licenseNumber;
  @override
  @JsonKey(name: 'exp_date')
  String? get expDate;
  @override
  String? get documents;
  @override
  dynamic get latitude;
  @override
  dynamic get longitude;
  @override
  @JsonKey(name: 'current_location')
  dynamic get currentLocation;
  @override
  @JsonKey(name: 'location_point')
  dynamic get locationPoint;
  @override
  dynamic get area;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  bool? get status;
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
  @JsonKey(name: 'license_picture')
  String? get licensePicture;
  @override
  @JsonKey(name: 'taxi_permit')
  String? get taxiPermit;
  @override
  @JsonKey(name: 'car')
  CarModel? get car;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
