// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  factory Room({
    int? id,
    @JsonKey(name: 'hotel_id') int? hotelId,
    String? type,
    @JsonKey(name: 'bed_type') String? bedType,
    String? price,
    List<String>? images,
    dynamic status,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
