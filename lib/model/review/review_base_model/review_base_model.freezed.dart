// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewBaseModel _$ReviewBaseModelFromJson(Map<String, dynamic> json) {
  return _ReviewBaseModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewBaseModel {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews', defaultValue: [])
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewBaseModelCopyWith<ReviewBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewBaseModelCopyWith<$Res> {
  factory $ReviewBaseModelCopyWith(
          ReviewBaseModel value, $Res Function(ReviewBaseModel) then) =
      _$ReviewBaseModelCopyWithImpl<$Res, ReviewBaseModel>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      @JsonKey(name: 'reviews', defaultValue: []) List<ReviewModel> reviews});
}

/// @nodoc
class _$ReviewBaseModelCopyWithImpl<$Res, $Val extends ReviewBaseModel>
    implements $ReviewBaseModelCopyWith<$Res> {
  _$ReviewBaseModelCopyWithImpl(this._value, this._then);

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
    Object? reviews = null,
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
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewBaseModelCopyWith<$Res>
    implements $ReviewBaseModelCopyWith<$Res> {
  factory _$$_ReviewBaseModelCopyWith(
          _$_ReviewBaseModel value, $Res Function(_$_ReviewBaseModel) then) =
      __$$_ReviewBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'status_code') int? statusCode,
      String? message,
      @JsonKey(name: 'reviews', defaultValue: []) List<ReviewModel> reviews});
}

/// @nodoc
class __$$_ReviewBaseModelCopyWithImpl<$Res>
    extends _$ReviewBaseModelCopyWithImpl<$Res, _$_ReviewBaseModel>
    implements _$$_ReviewBaseModelCopyWith<$Res> {
  __$$_ReviewBaseModelCopyWithImpl(
      _$_ReviewBaseModel _value, $Res Function(_$_ReviewBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? reviews = null,
  }) {
    return _then(_$_ReviewBaseModel(
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
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewBaseModel implements _ReviewBaseModel {
  _$_ReviewBaseModel(
      {this.success,
      @JsonKey(name: 'status_code')
          this.statusCode,
      this.message,
      @JsonKey(name: 'reviews', defaultValue: [])
          required final List<ReviewModel> reviews})
      : _reviews = reviews;

  factory _$_ReviewBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewBaseModelFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  final String? message;
  final List<ReviewModel> _reviews;
  @override
  @JsonKey(name: 'reviews', defaultValue: [])
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'ReviewBaseModel(success: $success, statusCode: $statusCode, message: $message, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewBaseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode, message,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewBaseModelCopyWith<_$_ReviewBaseModel> get copyWith =>
      __$$_ReviewBaseModelCopyWithImpl<_$_ReviewBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewBaseModelToJson(
      this,
    );
  }
}

abstract class _ReviewBaseModel implements ReviewBaseModel {
  factory _ReviewBaseModel(
      {final bool? success,
      @JsonKey(name: 'status_code')
          final int? statusCode,
      final String? message,
      @JsonKey(name: 'reviews', defaultValue: [])
          required final List<ReviewModel> reviews}) = _$_ReviewBaseModel;

  factory _ReviewBaseModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewBaseModel.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(name: 'reviews', defaultValue: [])
  List<ReviewModel> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewBaseModelCopyWith<_$_ReviewBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
