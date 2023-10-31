// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String? get hotelName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_phone')
  String? get hotelPhone => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_point')
  String? get locationPoint => throw _privateConstructorUsedError;
  dynamic get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<Room>? get rooms => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_rating')
  String? get avgRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'hotel_name') String? hotelName,
      String? address,
      String? type,
      String? image,
      @JsonKey(name: 'hotel_phone') String? hotelPhone,
      String? state,
      String? district,
      String? city,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'location_point') String? locationPoint,
      dynamic area,
      @JsonKey(name: 'is_active') bool? isActive,
      dynamic status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<Room>? rooms,
      @JsonKey(name: 'avg_rating') String? avgRating});
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? hotelName = freezed,
    Object? address = freezed,
    Object? type = freezed,
    Object? image = freezed,
    Object? hotelPhone = freezed,
    Object? state = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? locationPoint = freezed,
    Object? area = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rooms = freezed,
    Object? avgRating = freezed,
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
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelPhone: freezed == hotelPhone
          ? _value.hotelPhone
          : hotelPhone // ignore: cast_nullable_to_non_nullable
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
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelModelCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$_HotelModelCopyWith(
          _$_HotelModel value, $Res Function(_$_HotelModel) then) =
      __$$_HotelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'hotel_name') String? hotelName,
      String? address,
      String? type,
      String? image,
      @JsonKey(name: 'hotel_phone') String? hotelPhone,
      String? state,
      String? district,
      String? city,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'location_point') String? locationPoint,
      dynamic area,
      @JsonKey(name: 'is_active') bool? isActive,
      dynamic status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<Room>? rooms,
      @JsonKey(name: 'avg_rating') String? avgRating});
}

/// @nodoc
class __$$_HotelModelCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$_HotelModel>
    implements _$$_HotelModelCopyWith<$Res> {
  __$$_HotelModelCopyWithImpl(
      _$_HotelModel _value, $Res Function(_$_HotelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? hotelName = freezed,
    Object? address = freezed,
    Object? type = freezed,
    Object? image = freezed,
    Object? hotelPhone = freezed,
    Object? state = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? locationPoint = freezed,
    Object? area = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rooms = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_$_HotelModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelPhone: freezed == hotelPhone
          ? _value.hotelPhone
          : hotelPhone // ignore: cast_nullable_to_non_nullable
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
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelModel implements _HotelModel {
  _$_HotelModel(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'hotel_name') this.hotelName,
      this.address,
      this.type,
      this.image,
      @JsonKey(name: 'hotel_phone') this.hotelPhone,
      this.state,
      this.district,
      this.city,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'location_point') this.locationPoint,
      this.area,
      @JsonKey(name: 'is_active') this.isActive,
      this.status,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final List<Room>? rooms,
      @JsonKey(name: 'avg_rating') this.avgRating})
      : _rooms = rooms;

  factory _$_HotelModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'hotel_name')
  final String? hotelName;
  @override
  final String? address;
  @override
  final String? type;
  @override
  final String? image;
  @override
  @JsonKey(name: 'hotel_phone')
  final String? hotelPhone;
  @override
  final String? state;
  @override
  final String? district;
  @override
  final String? city;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  @JsonKey(name: 'location_point')
  final String? locationPoint;
  @override
  final dynamic area;
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
  final List<Room>? _rooms;
  @override
  List<Room>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'avg_rating')
  final String? avgRating;

  @override
  String toString() {
    return 'HotelModel(id: $id, userId: $userId, hotelName: $hotelName, address: $address, type: $type, image: $image, hotelPhone: $hotelPhone, state: $state, district: $district, city: $city, latitude: $latitude, longitude: $longitude, locationPoint: $locationPoint, area: $area, isActive: $isActive, status: $status, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, rooms: $rooms, avgRating: $avgRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.hotelPhone, hotelPhone) ||
                other.hotelPhone == hotelPhone) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.locationPoint, locationPoint) ||
                other.locationPoint == locationPoint) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        hotelName,
        address,
        type,
        image,
        hotelPhone,
        state,
        district,
        city,
        latitude,
        longitude,
        locationPoint,
        const DeepCollectionEquality().hash(area),
        isActive,
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(deletedAt),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_rooms),
        avgRating
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelModelCopyWith<_$_HotelModel> get copyWith =>
      __$$_HotelModelCopyWithImpl<_$_HotelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelModelToJson(
      this,
    );
  }
}

abstract class _HotelModel implements HotelModel {
  factory _HotelModel(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'hotel_name') final String? hotelName,
      final String? address,
      final String? type,
      final String? image,
      @JsonKey(name: 'hotel_phone') final String? hotelPhone,
      final String? state,
      final String? district,
      final String? city,
      final String? latitude,
      final String? longitude,
      @JsonKey(name: 'location_point') final String? locationPoint,
      final dynamic area,
      @JsonKey(name: 'is_active') final bool? isActive,
      final dynamic status,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final List<Room>? rooms,
      @JsonKey(name: 'avg_rating') final String? avgRating}) = _$_HotelModel;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$_HotelModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'hotel_name')
  String? get hotelName;
  @override
  String? get address;
  @override
  String? get type;
  @override
  String? get image;
  @override
  @JsonKey(name: 'hotel_phone')
  String? get hotelPhone;
  @override
  String? get state;
  @override
  String? get district;
  @override
  String? get city;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(name: 'location_point')
  String? get locationPoint;
  @override
  dynamic get area;
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
  List<Room>? get rooms;
  @override
  @JsonKey(name: 'avg_rating')
  String? get avgRating;
  @override
  @JsonKey(ignore: true)
  _$$_HotelModelCopyWith<_$_HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
