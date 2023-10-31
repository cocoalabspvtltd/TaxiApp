import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel {
  int? id;
  String? name;
  String? description;
  String? type;
  String? price;
  String? image;
  FoodModel(
      this.id, this.name, this.description, this.type, this.price, this.image);
  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);
}
