// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'review_model.dart';

part 'review_base_model.freezed.dart';
part 'review_base_model.g.dart';

@freezed
class ReviewBaseModel with _$ReviewBaseModel {
  factory ReviewBaseModel({
    bool? success,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    @JsonKey(name: 'reviews', defaultValue: [])
        required List<ReviewModel> reviews,
  }) = _ReviewBaseModel;

  factory ReviewBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewBaseModelFromJson(json);
}
