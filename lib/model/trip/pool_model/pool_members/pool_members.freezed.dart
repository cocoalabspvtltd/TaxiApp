// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_members.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PoolMembers _$PoolMembersFromJson(Map<String, dynamic> json) {
  return _PoolMembers.fromJson(json);
}

/// @nodoc
mixin _$PoolMembers {
  @JsonKey(name: 'member_id')
  int? get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pool_id')
  int? get poolId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get from => throw _privateConstructorUsedError;
  dynamic get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoolMembersCopyWith<PoolMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolMembersCopyWith<$Res> {
  factory $PoolMembersCopyWith(
          PoolMembers value, $Res Function(PoolMembers) then) =
      _$PoolMembersCopyWithImpl<$Res, PoolMembers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int? memberId,
      @JsonKey(name: 'pool_id') int? poolId,
      String? name,
      dynamic from,
      dynamic to});
}

/// @nodoc
class _$PoolMembersCopyWithImpl<$Res, $Val extends PoolMembers>
    implements $PoolMembersCopyWith<$Res> {
  _$PoolMembersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
    Object? poolId = freezed,
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      poolId: freezed == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PoolMembersCopyWith<$Res>
    implements $PoolMembersCopyWith<$Res> {
  factory _$$_PoolMembersCopyWith(
          _$_PoolMembers value, $Res Function(_$_PoolMembers) then) =
      __$$_PoolMembersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int? memberId,
      @JsonKey(name: 'pool_id') int? poolId,
      String? name,
      dynamic from,
      dynamic to});
}

/// @nodoc
class __$$_PoolMembersCopyWithImpl<$Res>
    extends _$PoolMembersCopyWithImpl<$Res, _$_PoolMembers>
    implements _$$_PoolMembersCopyWith<$Res> {
  __$$_PoolMembersCopyWithImpl(
      _$_PoolMembers _value, $Res Function(_$_PoolMembers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
    Object? poolId = freezed,
    Object? name = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_PoolMembers(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      poolId: freezed == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PoolMembers implements _PoolMembers {
  _$_PoolMembers(
      {@JsonKey(name: 'member_id') this.memberId,
      @JsonKey(name: 'pool_id') this.poolId,
      this.name,
      this.from,
      this.to});

  factory _$_PoolMembers.fromJson(Map<String, dynamic> json) =>
      _$$_PoolMembersFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int? memberId;
  @override
  @JsonKey(name: 'pool_id')
  final int? poolId;
  @override
  final String? name;
  @override
  final dynamic from;
  @override
  final dynamic to;

  @override
  String toString() {
    return 'PoolMembers(memberId: $memberId, poolId: $poolId, name: $name, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PoolMembers &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      memberId,
      poolId,
      name,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PoolMembersCopyWith<_$_PoolMembers> get copyWith =>
      __$$_PoolMembersCopyWithImpl<_$_PoolMembers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PoolMembersToJson(
      this,
    );
  }
}

abstract class _PoolMembers implements PoolMembers {
  factory _PoolMembers(
      {@JsonKey(name: 'member_id') final int? memberId,
      @JsonKey(name: 'pool_id') final int? poolId,
      final String? name,
      final dynamic from,
      final dynamic to}) = _$_PoolMembers;

  factory _PoolMembers.fromJson(Map<String, dynamic> json) =
      _$_PoolMembers.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int? get memberId;
  @override
  @JsonKey(name: 'pool_id')
  int? get poolId;
  @override
  String? get name;
  @override
  dynamic get from;
  @override
  dynamic get to;
  @override
  @JsonKey(ignore: true)
  _$$_PoolMembersCopyWith<_$_PoolMembers> get copyWith =>
      throw _privateConstructorUsedError;
}
