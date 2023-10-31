// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  factory ReviewModel({
    int? id,
    String? name,
    @JsonKey(name: 'user_id') int? userId,
    int? rating,
    String? comment,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    String? time,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
