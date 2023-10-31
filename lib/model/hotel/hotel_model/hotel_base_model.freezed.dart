// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelBaseModel _$HotelBaseModelFromJson(Map<String, dynamic> json) {
  return _HotelBaseModel.fromJson(json);
}

/// @nodoc
mixin _$HotelBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotels', defaultValue: [])
  List<HotelModel> get hotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelBaseModelCopyWith<HotelBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelBaseModelCopyWith<$Res> {
  factory $HotelBaseModelCopyWith(
          HotelBaseModel value, $Res Function(HotelBaseModel) then) =
      _$HotelBaseModelCopyWithImpl<$Res, HotelBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      int? total,
      String? page,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'hotels', defaultValue: []) List<HotelModel> hotels});
}

/// @nodoc
class _$HotelBaseModelCopyWithImpl<$Res, $Val extends HotelBaseModel>
    implements $HotelBaseModelCopyWith<$Res> {
  _$HotelBaseModelCopyWithImpl(this._value, this._then);

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
    Object? hotels = null,
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
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelBaseModelCopyWith<$Res>
    implements $HotelBaseModelCopyWith<$Res> {
  factory _$$_HotelBaseModelCopyWith(
          _$_HotelBaseModel value, $Res Function(_$_HotelBaseModel) then) =
      __$$_HotelBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      int? total,
      String? page,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'hotels', defaultValue: []) List<HotelModel> hotels});
}

/// @nodoc
class __$$_HotelBaseModelCopyWithImpl<$Res>
    extends _$HotelBaseModelCopyWithImpl<$Res, _$_HotelBaseModel>
    implements _$$_HotelBaseModelCopyWith<$Res> {
  __$$_HotelBaseModelCopyWithImpl(
      _$_HotelBaseModel _value, $Res Function(_$_HotelBaseModel) _then)
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
    Object? hotels = null,
  }) {
    return _then(_$_HotelBaseModel(
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
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelBaseModel implements _HotelBaseModel {
  _$_HotelBaseModel(
      {this.success,
      @JsonKey(name: 'status_code')
          this.statusCode,
      this.message,
      this.total,
      this.page,
      @JsonKey(name: 'last_page')
          this.lastPage,
      @JsonKey(name: 'hotels', defaultValue: [])
          required final List<HotelModel> hotels})
      : _hotels = hotels;

  factory _$_HotelBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelBaseModelFromJson(json);

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
  final List<HotelModel> _hotels;
  @override
  @JsonKey(name: 'hotels', defaultValue: [])
  List<HotelModel> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'HotelBaseModel(success: $success, statusCode: $statusCode, message: $message, total: $total, page: $page, lastPage: $lastPage, hotels: $hotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode, message,
      total, page, lastPage, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelBaseModelCopyWith<_$_HotelBaseModel> get copyWith =>
      __$$_HotelBaseModelCopyWithImpl<_$_HotelBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelBaseModelToJson(
      this,
    );
  }
}

abstract class _HotelBaseModel implements HotelBaseModel {
  factory _HotelBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code')
          final int? statusCode,
      final String? message,
      final int? total,
      final String? page,
      @JsonKey(name: 'last_page')
          final int? lastPage,
      @JsonKey(name: 'hotels', defaultValue: [])
          required final List<HotelModel> hotels}) = _$_HotelBaseModel;

  factory _HotelBaseModel.fromJson(Map<String, dynamic> json) =
      _$_HotelBaseModel.fromJson;

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
  @JsonKey(name: 'hotels', defaultValue: [])
  List<HotelModel> get hotels;
  @override
  @JsonKey(ignore: true)
  _$$_HotelBaseModelCopyWith<_$_HotelBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
