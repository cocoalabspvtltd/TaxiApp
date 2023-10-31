// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pool_members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PoolMembers _$$_PoolMembersFromJson(Map<String, dynamic> json) =>
    _$_PoolMembers(
      memberId: json['member_id'] as int?,
      poolId: json['pool_id'] as int?,
      name: json['name'] as String?,
      from: json['from'],
      to: json['to'],
    );

Map<String, dynamic> _$$_PoolMembersToJson(_$_PoolMembers instance) =>
    <String, dynamic>{
      'member_id': instance.memberId,
      'pool_id': instance.poolId,
      'name': instance.name,
      'from': instance.from,
      'to': instance.to,
    };
