// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() clientFailure,
    required TResult Function() networkFailure,
    required TResult Function() timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? clientFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? clientFailure,
    TResult Function()? networkFailure,
    TResult Function()? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_Timeout value) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_Timeout value)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_ServerFailure>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure();

  @override
  String toString() {
    return 'MainFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() clientFailure,
    required TResult Function() networkFailure,
    required TResult Function() timeout,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? clientFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? timeout,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? clientFailure,
    TResult Function()? networkFailure,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_Timeout value) timeout,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_Timeout value)? timeout,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MainFailure {
  const factory _ServerFailure() = _$_ServerFailure;
}

/// @nodoc
abstract class _$$_ClientFailureCopyWith<$Res> {
  factory _$$_ClientFailureCopyWith(
          _$_ClientFailure value, $Res Function(_$_ClientFailure) then) =
      __$$_ClientFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClientFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_ClientFailure>
    implements _$$_ClientFailureCopyWith<$Res> {
  __$$_ClientFailureCopyWithImpl(
      _$_ClientFailure _value, $Res Function(_$_ClientFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClientFailure implements _ClientFailure {
  const _$_ClientFailure();

  @override
  String toString() {
    return 'MainFailure.clientFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClientFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() clientFailure,
    required TResult Function() networkFailure,
    required TResult Function() timeout,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? clientFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? timeout,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? clientFailure,
    TResult Function()? networkFailure,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_Timeout value) timeout,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_Timeout value)? timeout,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements MainFailure {
  const factory _ClientFailure() = _$_ClientFailure;
}

/// @nodoc
abstract class _$$_NetworkFailureCopyWith<$Res> {
  factory _$$_NetworkFailureCopyWith(
          _$_NetworkFailure value, $Res Function(_$_NetworkFailure) then) =
      __$$_NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_NetworkFailure>
    implements _$$_NetworkFailureCopyWith<$Res> {
  __$$_NetworkFailureCopyWithImpl(
      _$_NetworkFailure _value, $Res Function(_$_NetworkFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkFailure implements _NetworkFailure {
  const _$_NetworkFailure();

  @override
  String toString() {
    return 'MainFailure.networkFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() clientFailure,
    required TResult Function() networkFailure,
    required TResult Function() timeout,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? clientFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? timeout,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? clientFailure,
    TResult Function()? networkFailure,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_Timeout value) timeout,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_Timeout value)? timeout,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements MainFailure {
  const factory _NetworkFailure() = _$_NetworkFailure;
}

/// @nodoc
abstract class _$$_TimeoutCopyWith<$Res> {
  factory _$$_TimeoutCopyWith(
          _$_Timeout value, $Res Function(_$_Timeout) then) =
      __$$_TimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimeoutCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_Timeout>
    implements _$$_TimeoutCopyWith<$Res> {
  __$$_TimeoutCopyWithImpl(_$_Timeout _value, $Res Function(_$_Timeout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Timeout implements _Timeout {
  const _$_Timeout();

  @override
  String toString() {
    return 'MainFailure.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Timeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() clientFailure,
    required TResult Function() networkFailure,
    required TResult Function() timeout,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? clientFailure,
    TResult? Function()? networkFailure,
    TResult? Function()? timeout,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? clientFailure,
    TResult Function()? networkFailure,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_Timeout value) timeout,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_Timeout value)? timeout,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements MainFailure {
  const factory _Timeout() = _$_Timeout;
}
