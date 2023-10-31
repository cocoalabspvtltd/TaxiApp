// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelBookingModel _$HotelBookingModelFromJson(Map<String, dynamic> json) {
  return _HotelBookingModel.fromJson(json);
}

/// @nodoc
mixin _$HotelBookingModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in')
  String? get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_out')
  String? get checkOut => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  int? get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  int? get hotelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String? get hotelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_phone')
  String? get hotelPhone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Room? get room => throw _privateConstructorUsedError;
  List<Guest>? get guests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelBookingModelCopyWith<HotelBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelBookingModelCopyWith<$Res> {
  factory $HotelBookingModelCopyWith(
          HotelBookingModel value, $Res Function(HotelBookingModel) then) =
      _$HotelBookingModelCopyWithImpl<$Res, HotelBookingModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'check_in') String? checkIn,
      @JsonKey(name: 'check_out') String? checkOut,
      @JsonKey(name: 'room_id') int? roomId,
      @JsonKey(name: 'hotel_id') int? hotelId,
      @JsonKey(name: 'hotel_name') String? hotelName,
      @JsonKey(name: 'hotel_phone') String? hotelPhone,
      String? image,
      String? status,
      Room? room,
      List<Guest>? guests});

  $RoomCopyWith<$Res>? get room;
}

/// @nodoc
class _$HotelBookingModelCopyWithImpl<$Res, $Val extends HotelBookingModel>
    implements $HotelBookingModelCopyWith<$Res> {
  _$HotelBookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? roomId = freezed,
    Object? hotelId = freezed,
    Object? hotelName = freezed,
    Object? hotelPhone = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? room = freezed,
    Object? guests = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelPhone: freezed == hotelPhone
          ? _value.hotelPhone
          : hotelPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      guests: freezed == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelBookingModelCopyWith<$Res>
    implements $HotelBookingModelCopyWith<$Res> {
  factory _$$_HotelBookingModelCopyWith(_$_HotelBookingModel value,
          $Res Function(_$_HotelBookingModel) then) =
      __$$_HotelBookingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'check_in') String? checkIn,
      @JsonKey(name: 'check_out') String? checkOut,
      @JsonKey(name: 'room_id') int? roomId,
      @JsonKey(name: 'hotel_id') int? hotelId,
      @JsonKey(name: 'hotel_name') String? hotelName,
      @JsonKey(name: 'hotel_phone') String? hotelPhone,
      String? image,
      String? status,
      Room? room,
      List<Guest>? guests});

  @override
  $RoomCopyWith<$Res>? get room;
}

/// @nodoc
class __$$_HotelBookingModelCopyWithImpl<$Res>
    extends _$HotelBookingModelCopyWithImpl<$Res, _$_HotelBookingModel>
    implements _$$_HotelBookingModelCopyWith<$Res> {
  __$$_HotelBookingModelCopyWithImpl(
      _$_HotelBookingModel _value, $Res Function(_$_HotelBookingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? roomId = freezed,
    Object? hotelId = freezed,
    Object? hotelName = freezed,
    Object? hotelPhone = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? room = freezed,
    Object? guests = freezed,
  }) {
    return _then(_$_HotelBookingModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      hotelName: freezed == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelPhone: freezed == hotelPhone
          ? _value.hotelPhone
          : hotelPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      guests: freezed == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelBookingModel implements _HotelBookingModel {
  _$_HotelBookingModel(
      {this.id,
      @JsonKey(name: 'check_in') this.checkIn,
      @JsonKey(name: 'check_out') this.checkOut,
      @JsonKey(name: 'room_id') this.roomId,
      @JsonKey(name: 'hotel_id') this.hotelId,
      @JsonKey(name: 'hotel_name') this.hotelName,
      @JsonKey(name: 'hotel_phone') this.hotelPhone,
      this.image,
      this.status,
      this.room,
      final List<Guest>? guests})
      : _guests = guests;

  factory _$_HotelBookingModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelBookingModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'check_in')
  final String? checkIn;
  @override
  @JsonKey(name: 'check_out')
  final String? checkOut;
  @override
  @JsonKey(name: 'room_id')
  final int? roomId;
  @override
  @JsonKey(name: 'hotel_id')
  final int? hotelId;
  @override
  @JsonKey(name: 'hotel_name')
  final String? hotelName;
  @override
  @JsonKey(name: 'hotel_phone')
  final String? hotelPhone;
  @override
  final String? image;
  @override
  final String? status;
  @override
  final Room? room;
  final List<Guest>? _guests;
  @override
  List<Guest>? get guests {
    final value = _guests;
    if (value == null) return null;
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HotelBookingModel(id: $id, checkIn: $checkIn, checkOut: $checkOut, roomId: $roomId, hotelId: $hotelId, hotelName: $hotelName, hotelPhone: $hotelPhone, image: $image, status: $status, room: $room, guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelBookingModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.hotelPhone, hotelPhone) ||
                other.hotelPhone == hotelPhone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality().equals(other._guests, _guests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      checkIn,
      checkOut,
      roomId,
      hotelId,
      hotelName,
      hotelPhone,
      image,
      status,
      room,
      const DeepCollectionEquality().hash(_guests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelBookingModelCopyWith<_$_HotelBookingModel> get copyWith =>
      __$$_HotelBookingModelCopyWithImpl<_$_HotelBookingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelBookingModelToJson(
      this,
    );
  }
}

abstract class _HotelBookingModel implements HotelBookingModel {
  factory _HotelBookingModel(
      {final int? id,
      @JsonKey(name: 'check_in') final String? checkIn,
      @JsonKey(name: 'check_out') final String? checkOut,
      @JsonKey(name: 'room_id') final int? roomId,
      @JsonKey(name: 'hotel_id') final int? hotelId,
      @JsonKey(name: 'hotel_name') final String? hotelName,
      @JsonKey(name: 'hotel_phone') final String? hotelPhone,
      final String? image,
      final String? status,
      final Room? room,
      final List<Guest>? guests}) = _$_HotelBookingModel;

  factory _HotelBookingModel.fromJson(Map<String, dynamic> json) =
      _$_HotelBookingModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'check_in')
  String? get checkIn;
  @override
  @JsonKey(name: 'check_out')
  String? get checkOut;
  @override
  @JsonKey(name: 'room_id')
  int? get roomId;
  @override
  @JsonKey(name: 'hotel_id')
  int? get hotelId;
  @override
  @JsonKey(name: 'hotel_name')
  String? get hotelName;
  @override
  @JsonKey(name: 'hotel_phone')
  String? get hotelPhone;
  @override
  String? get image;
  @override
  String? get status;
  @override
  Room? get room;
  @override
  List<Guest>? get guests;
  @override
  @JsonKey(ignore: true)
  _$$_HotelBookingModelCopyWith<_$_HotelBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
