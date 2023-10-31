// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return _RestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_point')
  String? get locationPoint => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  List<dynamic>? get foods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantModelCopyWith<RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModelCopyWith<$Res> {
  factory $RestaurantModelCopyWith(
          RestaurantModel value, $Res Function(RestaurantModel) then) =
      _$RestaurantModelCopyWithImpl<$Res, RestaurantModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? name,
      String? phone,
      String? address,
      String? type,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'location_point') String? locationPoint,
      String? distance,
      String? time,
      String? image,
      String? date,
      String? status,
      String? state,
      String? district,
      String? city,
      @JsonKey(name: 'is_active') bool? isActive,
      List<dynamic>? foods});
}

/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res, $Val extends RestaurantModel>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? type = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? locationPoint = freezed,
    Object? distance = freezed,
    Object? time = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? state = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? isActive = freezed,
    Object? foods = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      foods: freezed == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantModelCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$_RestaurantModelCopyWith(
          _$_RestaurantModel value, $Res Function(_$_RestaurantModel) then) =
      __$$_RestaurantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? name,
      String? phone,
      String? address,
      String? type,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'location_point') String? locationPoint,
      String? distance,
      String? time,
      String? image,
      String? date,
      String? status,
      String? state,
      String? district,
      String? city,
      @JsonKey(name: 'is_active') bool? isActive,
      List<dynamic>? foods});
}

/// @nodoc
class __$$_RestaurantModelCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$_RestaurantModel>
    implements _$$_RestaurantModelCopyWith<$Res> {
  __$$_RestaurantModelCopyWithImpl(
      _$_RestaurantModel _value, $Res Function(_$_RestaurantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? type = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? locationPoint = freezed,
    Object? distance = freezed,
    Object? time = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? state = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? isActive = freezed,
    Object? foods = freezed,
  }) {
    return _then(_$_RestaurantModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      locationPoint: freezed == locationPoint
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      foods: freezed == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantModel implements _RestaurantModel {
  _$_RestaurantModel(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.name,
      this.phone,
      this.address,
      this.type,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'location_point') this.locationPoint,
      this.distance,
      this.time,
      this.image,
      this.date,
      this.status,
      this.state,
      this.district,
      this.city,
      @JsonKey(name: 'is_active') this.isActive,
      final List<dynamic>? foods})
      : _foods = foods;

  factory _$_RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? type;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  @JsonKey(name: 'location_point')
  final String? locationPoint;
  @override
  final String? distance;
  @override
  final String? time;
  @override
  final String? image;
  @override
  final String? date;
  @override
  final String? status;
  @override
  final String? state;
  @override
  final String? district;
  @override
  final String? city;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  final List<dynamic>? _foods;
  @override
  List<dynamic>? get foods {
    final value = _foods;
    if (value == null) return null;
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestaurantModel(id: $id, userId: $userId, name: $name, phone: $phone, address: $address, type: $type, latitude: $latitude, longitude: $longitude, locationPoint: $locationPoint, distance: $distance, time: $time, image: $image, date: $date, status: $status, state: $state, district: $district, city: $city, isActive: $isActive, foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.locationPoint, locationPoint) ||
                other.locationPoint == locationPoint) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        name,
        phone,
        address,
        type,
        latitude,
        longitude,
        locationPoint,
        distance,
        time,
        image,
        date,
        status,
        state,
        district,
        city,
        isActive,
        const DeepCollectionEquality().hash(_foods)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      __$$_RestaurantModelCopyWithImpl<_$_RestaurantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantModelToJson(
      this,
    );
  }
}

abstract class _RestaurantModel implements RestaurantModel {
  factory _RestaurantModel(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      final String? name,
      final String? phone,
      final String? address,
      final String? type,
      final String? latitude,
      final String? longitude,
      @JsonKey(name: 'location_point') final String? locationPoint,
      final String? distance,
      final String? time,
      final String? image,
      final String? date,
      final String? status,
      final String? state,
      final String? district,
      final String? city,
      @JsonKey(name: 'is_active') final bool? isActive,
      final List<dynamic>? foods}) = _$_RestaurantModel;

  factory _RestaurantModel.fromJson(Map<String, dynamic> json) =
      _$_RestaurantModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  String? get type;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(name: 'location_point')
  String? get locationPoint;
  @override
  String? get distance;
  @override
  String? get time;
  @override
  String? get image;
  @override
  String? get date;
  @override
  String? get status;
  @override
  String? get state;
  @override
  String? get district;
  @override
  String? get city;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  List<dynamic>? get foods;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
