// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pool_members.freezed.dart';
part 'pool_members.g.dart';

@freezed
class PoolMembers with _$PoolMembers {
  factory PoolMembers({
    @JsonKey(name: 'member_id') int? memberId,
    @JsonKey(name: 'pool_id') int? poolId,
    String? name,
    dynamic from,
    dynamic to,
  }) = _PoolMembers;

  factory PoolMembers.fromJson(Map<String, dynamic> json) =>
      _$PoolMembersFromJson(json);
}
