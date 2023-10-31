// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest.freezed.dart';
part 'guest.g.dart';

@freezed
class Guest with _$Guest {
  factory Guest({
    @JsonKey(name: 'booking_id') int? bookingId,
    String? name,
    String? phone,
    int? age,
    String? gender,
    String? address,
  }) = _Guest;

  factory Guest.fromJson(Map<String, dynamic> json) => _$GuestFromJson(json);
}
