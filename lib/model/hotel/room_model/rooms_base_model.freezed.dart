// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsBaseModel _$RoomsBaseModelFromJson(Map<String, dynamic> json) {
  return _RoomsBaseModel.fromJson(json);
}

/// @nodoc
mixin _$RoomsBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  List<Room>? get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsBaseModelCopyWith<RoomsBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsBaseModelCopyWith<$Res> {
  factory $RoomsBaseModelCopyWith(
          RoomsBaseModel value, $Res Function(RoomsBaseModel) then) =
      _$RoomsBaseModelCopyWithImpl<$Res, RoomsBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      int? total,
      String? page,
      @JsonKey(name: 'last_page') int? lastPage,
      List<Room>? rooms});
}

/// @nodoc
class _$RoomsBaseModelCopyWithImpl<$Res, $Val extends RoomsBaseModel>
    implements $RoomsBaseModelCopyWith<$Res> {
  _$RoomsBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? lastPage = freezed,
    Object? rooms = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsBaseModelCopyWith<$Res>
    implements $RoomsBaseModelCopyWith<$Res> {
  factory _$$_RoomsBaseModelCopyWith(
          _$_RoomsBaseModel value, $Res Function(_$_RoomsBaseModel) then) =
      __$$_RoomsBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      int? total,
      String? page,
      @JsonKey(name: 'last_page') int? lastPage,
      List<Room>? rooms});
}

/// @nodoc
class __$$_RoomsBaseModelCopyWithImpl<$Res>
    extends _$RoomsBaseModelCopyWithImpl<$Res, _$_RoomsBaseModel>
    implements _$$_RoomsBaseModelCopyWith<$Res> {
  __$$_RoomsBaseModelCopyWithImpl(
      _$_RoomsBaseModel _value, $Res Function(_$_RoomsBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? lastPage = freezed,
    Object? rooms = freezed,
  }) {
    return _then(_$_RoomsBaseModel(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomsBaseModel implements _RoomsBaseModel {
  _$_RoomsBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.total,
      this.page,
      @JsonKey(name: 'last_page') this.lastPage,
      final List<Room>? rooms})
      : _rooms = rooms;

  factory _$_RoomsBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  @override
  final int? total;
  @override
  final String? page;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
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
  String toString() {
    return 'RoomsBaseModel(success: $success, statusCode: $statusCode, message: $message, total: $total, page: $page, lastPage: $lastPage, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomsBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode, message,
      total, page, lastPage, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomsBaseModelCopyWith<_$_RoomsBaseModel> get copyWith =>
      __$$_RoomsBaseModelCopyWithImpl<_$_RoomsBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsBaseModelToJson(
      this,
    );
  }
}

abstract class _RoomsBaseModel implements RoomsBaseModel {
  factory _RoomsBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code') final int? statusCode,
      final String? message,
      final int? total,
      final String? page,
      @JsonKey(name: 'last_page') final int? lastPage,
      final List<Room>? rooms}) = _$_RoomsBaseModel;

  factory _RoomsBaseModel.fromJson(Map<String, dynamic> json) =
      _$_RoomsBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  int? get total;
  @override
  String? get page;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  List<Room>? get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsBaseModelCopyWith<_$_RoomsBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
