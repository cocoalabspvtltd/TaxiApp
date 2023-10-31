// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
mixin _$Driver {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_rating')
  String? get avgRating => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  CarModel? get car => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_number')
  String? get licenseNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res, Driver>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'avg_rating') String? avgRating,
      String? distance,
      CarModel? car,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'license_number') String? licenseNumber});

  $CarModelCopyWith<$Res>? get car;
}

/// @nodoc
class _$DriverCopyWithImpl<$Res, $Val extends Driver>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avgRating = freezed,
    Object? distance = freezed,
    Object? car = freezed,
    Object? driverName = freezed,
    Object? licenseNumber = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as CarModel?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$_DriverCopyWith(_$_Driver value, $Res Function(_$_Driver) then) =
      __$$_DriverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? phone,
      @JsonKey(name: 'avg_rating') String? avgRating,
      String? distance,
      CarModel? car,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'license_number') String? licenseNumber});

  @override
  $CarModelCopyWith<$Res>? get car;
}

/// @nodoc
class __$$_DriverCopyWithImpl<$Res>
    extends _$DriverCopyWithImpl<$Res, _$_Driver>
    implements _$$_DriverCopyWith<$Res> {
  __$$_DriverCopyWithImpl(_$_Driver _value, $Res Function(_$_Driver) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avgRating = freezed,
    Object? distance = freezed,
    Object? car = freezed,
    Object? driverName = freezed,
    Object? licenseNumber = freezed,
  }) {
    return _then(_$_Driver(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as CarModel?,
      driverName: freezed == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver implements _Driver {
  _$_Driver(
      {this.id,
      this.name,
      this.email,
      this.phone,
      @JsonKey(name: 'avg_rating') this.avgRating,
      this.distance,
      this.car,
      @JsonKey(name: 'driver_name') this.driverName,
      @JsonKey(name: 'license_number') this.licenseNumber});

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$$_DriverFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'avg_rating')
  final String? avgRating;
  @override
  final String? distance;
  @override
  final CarModel? car;
  @override
  @JsonKey(name: 'driver_name')
  final String? driverName;
  @override
  @JsonKey(name: 'license_number')
  final String? licenseNumber;

  @override
  String toString() {
    return 'Driver(id: $id, name: $name, email: $email, phone: $phone, avgRating: $avgRating, distance: $distance, car: $car, driverName: $driverName, licenseNumber: $licenseNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Driver &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone,
      avgRating, distance, car, driverName, licenseNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      __$$_DriverCopyWithImpl<_$_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverToJson(
      this,
    );
  }
}

abstract class _Driver implements Driver {
  factory _Driver(
          {final int? id,
          final String? name,
          final String? email,
          final String? phone,
          @JsonKey(name: 'avg_rating') final String? avgRating,
          final String? distance,
          final CarModel? car,
          @JsonKey(name: 'driver_name') final String? driverName,
          @JsonKey(name: 'license_number') final String? licenseNumber}) =
      _$_Driver;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'avg_rating')
  String? get avgRating;
  @override
  String? get distance;
  @override
  CarModel? get car;
  @override
  @JsonKey(name: 'driver_name')
  String? get driverName;
  @override
  @JsonKey(name: 'license_number')
  String? get licenseNumber;
  @override
  @JsonKey(ignore: true)
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      throw _privateConstructorUsedError;
}
