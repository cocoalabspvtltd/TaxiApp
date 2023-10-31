// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantBaseModel _$RestaurantBaseModelFromJson(Map<String, dynamic> json) {
  return _RestaurantBaseModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  List<RestaurantModel>? get restaurants => throw _privateConstructorUsedError;
  List<BookingRestaurantModel>? get bookings =>
      throw _privateConstructorUsedError;
  List<FoodModel>? get food_items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantBaseModelCopyWith<RestaurantBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantBaseModelCopyWith<$Res> {
  factory $RestaurantBaseModelCopyWith(
          RestaurantBaseModel value, $Res Function(RestaurantBaseModel) then) =
      _$RestaurantBaseModelCopyWithImpl<$Res, RestaurantBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      String? page,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage,
      List<RestaurantModel>? restaurants,
      List<BookingRestaurantModel>? bookings,
      List<FoodModel>? food_items});
}

/// @nodoc
class _$RestaurantBaseModelCopyWithImpl<$Res, $Val extends RestaurantBaseModel>
    implements $RestaurantBaseModelCopyWith<$Res> {
  _$RestaurantBaseModelCopyWithImpl(this._value, this._then);

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
    Object? page = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? restaurants = freezed,
    Object? bookings = freezed,
    Object? food_items = freezed,
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
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurants: freezed == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantModel>?,
      bookings: freezed == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingRestaurantModel>?,
      food_items: freezed == food_items
          ? _value.food_items
          : food_items // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantBaseModelCopyWith<$Res>
    implements $RestaurantBaseModelCopyWith<$Res> {
  factory _$$_RestaurantBaseModelCopyWith(_$_RestaurantBaseModel value,
          $Res Function(_$_RestaurantBaseModel) then) =
      __$$_RestaurantBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      String? page,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage,
      List<RestaurantModel>? restaurants,
      List<BookingRestaurantModel>? bookings,
      List<FoodModel>? food_items});
}

/// @nodoc
class __$$_RestaurantBaseModelCopyWithImpl<$Res>
    extends _$RestaurantBaseModelCopyWithImpl<$Res, _$_RestaurantBaseModel>
    implements _$$_RestaurantBaseModelCopyWith<$Res> {
  __$$_RestaurantBaseModelCopyWithImpl(_$_RestaurantBaseModel _value,
      $Res Function(_$_RestaurantBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? restaurants = freezed,
    Object? bookings = freezed,
    Object? food_items = freezed,
  }) {
    return _then(_$_RestaurantBaseModel(
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
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurants: freezed == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantModel>?,
      bookings: freezed == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingRestaurantModel>?,
      food_items: freezed == food_items
          ? _value._food_items
          : food_items // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantBaseModel implements _RestaurantBaseModel {
  _$_RestaurantBaseModel(
      {this.success,
      @JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.page,
      this.total,
      @JsonKey(name: 'last_page') this.lastPage,
      final List<RestaurantModel>? restaurants,
      final List<BookingRestaurantModel>? bookings,
      final List<FoodModel>? food_items})
      : _restaurants = restaurants,
        _bookings = bookings,
        _food_items = food_items;

  factory _$_RestaurantBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  @override
  final String? page;
  @override
  final int? total;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  final List<RestaurantModel>? _restaurants;
  @override
  List<RestaurantModel>? get restaurants {
    final value = _restaurants;
    if (value == null) return null;
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BookingRestaurantModel>? _bookings;
  @override
  List<BookingRestaurantModel>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FoodModel>? _food_items;
  @override
  List<FoodModel>? get food_items {
    final value = _food_items;
    if (value == null) return null;
    if (_food_items is EqualUnmodifiableListView) return _food_items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestaurantBaseModel(success: $success, statusCode: $statusCode, message: $message, page: $page, total: $total, lastPage: $lastPage, restaurants: $restaurants, bookings: $bookings, food_items: $food_items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            const DeepCollectionEquality()
                .equals(other._food_items, _food_items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      statusCode,
      message,
      page,
      total,
      lastPage,
      const DeepCollectionEquality().hash(_restaurants),
      const DeepCollectionEquality().hash(_bookings),
      const DeepCollectionEquality().hash(_food_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantBaseModelCopyWith<_$_RestaurantBaseModel> get copyWith =>
      __$$_RestaurantBaseModelCopyWithImpl<_$_RestaurantBaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantBaseModelToJson(
      this,
    );
  }
}

abstract class _RestaurantBaseModel implements RestaurantBaseModel {
  factory _RestaurantBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code') final int? statusCode,
      final String? message,
      final String? page,
      final int? total,
      @JsonKey(name: 'last_page') final int? lastPage,
      final List<RestaurantModel>? restaurants,
      final List<BookingRestaurantModel>? bookings,
      final List<FoodModel>? food_items}) = _$_RestaurantBaseModel;

  factory _RestaurantBaseModel.fromJson(Map<String, dynamic> json) =
      _$_RestaurantBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  String? get page;
  @override
  int? get total;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  List<RestaurantModel>? get restaurants;
  @override
  List<BookingRestaurantModel>? get bookings;
  @override
  List<FoodModel>? get food_items;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantBaseModelCopyWith<_$_RestaurantBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
