import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_restaurant_model.g.dart';

@JsonSerializable()
class BookingRestaurantModel {
  int? id;
  String? date;
  String? time;
  String? status;
  String? name;

  BookingRestaurantModel(this.id, this.date, this.time, this.status, this.name);
  factory BookingRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$BookingRestaurantModelFromJson(json);
}
