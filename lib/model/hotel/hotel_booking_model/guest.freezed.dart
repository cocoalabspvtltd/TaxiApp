// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Guest _$GuestFromJson(Map<String, dynamic> json) {
  return _Guest.fromJson(json);
}

/// @nodoc
mixin _$Guest {
  @JsonKey(name: 'booking_id')
  int? get bookingId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestCopyWith<Guest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestCopyWith<$Res> {
  factory $GuestCopyWith(Guest value, $Res Function(Guest) then) =
      _$GuestCopyWithImpl<$Res, Guest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'booking_id') int? bookingId,
      String? name,
      String? phone,
      int? age,
      String? gender,
      String? address});
}

/// @nodoc
class _$GuestCopyWithImpl<$Res, $Val extends Guest>
    implements $GuestCopyWith<$Res> {
  _$GuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestCopyWith<$Res> implements $GuestCopyWith<$Res> {
  factory _$$_GuestCopyWith(_$_Guest value, $Res Function(_$_Guest) then) =
      __$$_GuestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'booking_id') int? bookingId,
      String? name,
      String? phone,
      int? age,
      String? gender,
      String? address});
}

/// @nodoc
class __$$_GuestCopyWithImpl<$Res> extends _$GuestCopyWithImpl<$Res, _$_Guest>
    implements _$$_GuestCopyWith<$Res> {
  __$$_GuestCopyWithImpl(_$_Guest _value, $Res Function(_$_Guest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Guest(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Guest implements _Guest {
  _$_Guest(
      {@JsonKey(name: 'booking_id') this.bookingId,
      this.name,
      this.phone,
      this.age,
      this.gender,
      this.address});

  factory _$_Guest.fromJson(Map<String, dynamic> json) =>
      _$$_GuestFromJson(json);

  @override
  @JsonKey(name: 'booking_id')
  final int? bookingId;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final int? age;
  @override
  final String? gender;
  @override
  final String? address;

  @override
  String toString() {
    return 'Guest(bookingId: $bookingId, name: $name, phone: $phone, age: $age, gender: $gender, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Guest &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bookingId, name, phone, age, gender, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestCopyWith<_$_Guest> get copyWith =>
      __$$_GuestCopyWithImpl<_$_Guest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestToJson(
      this,
    );
  }
}

abstract class _Guest implements Guest {
  factory _Guest(
      {@JsonKey(name: 'booking_id') final int? bookingId,
      final String? name,
      final String? phone,
      final int? age,
      final String? gender,
      final String? address}) = _$_Guest;

  factory _Guest.fromJson(Map<String, dynamic> json) = _$_Guest.fromJson;

  @override
  @JsonKey(name: 'booking_id')
  int? get bookingId;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  int? get age;
  @override
  String? get gender;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_GuestCopyWith<_$_Guest> get copyWith =>
      throw _privateConstructorUsedError;
}
