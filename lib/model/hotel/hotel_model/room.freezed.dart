// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  int? get hotelId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'bed_type')
  String? get bedType => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'hotel_id') int? hotelId,
      String? type,
      @JsonKey(name: 'bed_type') String? bedType,
      String? price,
      List<String>? images,
      dynamic status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = freezed,
    Object? type = freezed,
    Object? bedType = freezed,
    Object? price = freezed,
    Object? images = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      bedType: freezed == bedType
          ? _value.bedType
          : bedType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'hotel_id') int? hotelId,
      String? type,
      @JsonKey(name: 'bed_type') String? bedType,
      String? price,
      List<String>? images,
      dynamic status,
      @JsonKey(name: 'deleted_at') dynamic deletedAt});
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res, _$_Room>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = freezed,
    Object? type = freezed,
    Object? bedType = freezed,
    Object? price = freezed,
    Object? images = freezed,
    Object? status = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_Room(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      bedType: freezed == bedType
          ? _value.bedType
          : bedType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  _$_Room(
      {this.id,
      @JsonKey(name: 'hotel_id') this.hotelId,
      this.type,
      @JsonKey(name: 'bed_type') this.bedType,
      this.price,
      final List<String>? images,
      this.status,
      @JsonKey(name: 'deleted_at') this.deletedAt})
      : _images = images;

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'hotel_id')
  final int? hotelId;
  @override
  final String? type;
  @override
  @JsonKey(name: 'bed_type')
  final String? bedType;
  @override
  final String? price;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic status;
  @override
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;

  @override
  String toString() {
    return 'Room(id: $id, hotelId: $hotelId, type: $type, bedType: $bedType, price: $price, images: $images, status: $status, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bedType, bedType) || other.bedType == bedType) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hotelId,
      type,
      bedType,
      price,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  factory _Room(
      {final int? id,
      @JsonKey(name: 'hotel_id') final int? hotelId,
      final String? type,
      @JsonKey(name: 'bed_type') final String? bedType,
      final String? price,
      final List<String>? images,
      final dynamic status,
      @JsonKey(name: 'deleted_at') final dynamic deletedAt}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'hotel_id')
  int? get hotelId;
  @override
  String? get type;
  @override
  @JsonKey(name: 'bed_type')
  String? get bedType;
  @override
  String? get price;
  @override
  List<String>? get images;
  @override
  dynamic get status;
  @override
  @JsonKey(name: 'deleted_at')
  dynamic get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
