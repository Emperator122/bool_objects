// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionCheckerState {
  bool get isConnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionCheckerStateCopyWith<ConnectionCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionCheckerStateCopyWith<$Res> {
  factory $ConnectionCheckerStateCopyWith(ConnectionCheckerState value,
          $Res Function(ConnectionCheckerState) then) =
      _$ConnectionCheckerStateCopyWithImpl<$Res>;
  $Res call({bool isConnected});
}

/// @nodoc
class _$ConnectionCheckerStateCopyWithImpl<$Res>
    implements $ConnectionCheckerStateCopyWith<$Res> {
  _$ConnectionCheckerStateCopyWithImpl(this._value, this._then);

  final ConnectionCheckerState _value;
  // ignore: unused_field
  final $Res Function(ConnectionCheckerState) _then;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ConnectionCheckerStateCopyWith<$Res>
    implements $ConnectionCheckerStateCopyWith<$Res> {
  factory _$$_ConnectionCheckerStateCopyWith(_$_ConnectionCheckerState value,
          $Res Function(_$_ConnectionCheckerState) then) =
      __$$_ConnectionCheckerStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isConnected});
}

/// @nodoc
class __$$_ConnectionCheckerStateCopyWithImpl<$Res>
    extends _$ConnectionCheckerStateCopyWithImpl<$Res>
    implements _$$_ConnectionCheckerStateCopyWith<$Res> {
  __$$_ConnectionCheckerStateCopyWithImpl(_$_ConnectionCheckerState _value,
      $Res Function(_$_ConnectionCheckerState) _then)
      : super(_value, (v) => _then(v as _$_ConnectionCheckerState));

  @override
  _$_ConnectionCheckerState get _value =>
      super._value as _$_ConnectionCheckerState;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_$_ConnectionCheckerState(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConnectionCheckerState implements _ConnectionCheckerState {
  const _$_ConnectionCheckerState({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'ConnectionCheckerState(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionCheckerState &&
            const DeepCollectionEquality()
                .equals(other.isConnected, isConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isConnected));

  @JsonKey(ignore: true)
  @override
  _$$_ConnectionCheckerStateCopyWith<_$_ConnectionCheckerState> get copyWith =>
      __$$_ConnectionCheckerStateCopyWithImpl<_$_ConnectionCheckerState>(
          this, _$identity);
}

abstract class _ConnectionCheckerState implements ConnectionCheckerState {
  const factory _ConnectionCheckerState({required final bool isConnected}) =
      _$_ConnectionCheckerState;

  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionCheckerStateCopyWith<_$_ConnectionCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}
