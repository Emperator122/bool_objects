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
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BuiltList<MyObject> objects, String? errorMessage)
        data,
    required TResult Function(String? errorMessage) errorOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageData value) data,
    required TResult Function(HomePageErrorOnly value) errorOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;
}

/// @nodoc
abstract class _$$HomePageLoadingCopyWith<$Res> {
  factory _$$HomePageLoadingCopyWith(
          _$HomePageLoading value, $Res Function(_$HomePageLoading) then) =
      __$$HomePageLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageLoadingCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$HomePageLoadingCopyWith<$Res> {
  __$$HomePageLoadingCopyWithImpl(
      _$HomePageLoading _value, $Res Function(_$HomePageLoading) _then)
      : super(_value, (v) => _then(v as _$HomePageLoading));

  @override
  _$HomePageLoading get _value => super._value as _$HomePageLoading;
}

/// @nodoc

class _$HomePageLoading extends HomePageLoading {
  const _$HomePageLoading() : super._();

  @override
  String toString() {
    return 'HomePageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BuiltList<MyObject> objects, String? errorMessage)
        data,
    required TResult Function(String? errorMessage) errorOnly,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageData value) data,
    required TResult Function(HomePageErrorOnly value) errorOnly,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomePageLoading extends HomePageState {
  const factory HomePageLoading() = _$HomePageLoading;
  const HomePageLoading._() : super._();
}

/// @nodoc
abstract class _$$HomePageDataCopyWith<$Res> {
  factory _$$HomePageDataCopyWith(
          _$HomePageData value, $Res Function(_$HomePageData) then) =
      __$$HomePageDataCopyWithImpl<$Res>;
  $Res call({BuiltList<MyObject> objects, String? errorMessage});
}

/// @nodoc
class __$$HomePageDataCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$HomePageDataCopyWith<$Res> {
  __$$HomePageDataCopyWithImpl(
      _$HomePageData _value, $Res Function(_$HomePageData) _then)
      : super(_value, (v) => _then(v as _$HomePageData));

  @override
  _$HomePageData get _value => super._value as _$HomePageData;

  @override
  $Res call({
    Object? objects = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomePageData(
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as BuiltList<MyObject>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomePageData extends HomePageData {
  const _$HomePageData({required this.objects, this.errorMessage}) : super._();

  @override
  final BuiltList<MyObject> objects;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomePageState.data(objects: $objects, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageData &&
            const DeepCollectionEquality().equals(other.objects, objects) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(objects),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$HomePageDataCopyWith<_$HomePageData> get copyWith =>
      __$$HomePageDataCopyWithImpl<_$HomePageData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BuiltList<MyObject> objects, String? errorMessage)
        data,
    required TResult Function(String? errorMessage) errorOnly,
  }) {
    return data(objects, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
  }) {
    return data?.call(objects, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(objects, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageData value) data,
    required TResult Function(HomePageErrorOnly value) errorOnly,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomePageData extends HomePageState {
  const factory HomePageData(
      {required final BuiltList<MyObject> objects,
      final String? errorMessage}) = _$HomePageData;
  const HomePageData._() : super._();

  BuiltList<MyObject> get objects;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$HomePageDataCopyWith<_$HomePageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomePageErrorOnlyCopyWith<$Res> {
  factory _$$HomePageErrorOnlyCopyWith(
          _$HomePageErrorOnly value, $Res Function(_$HomePageErrorOnly) then) =
      __$$HomePageErrorOnlyCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$HomePageErrorOnlyCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$HomePageErrorOnlyCopyWith<$Res> {
  __$$HomePageErrorOnlyCopyWithImpl(
      _$HomePageErrorOnly _value, $Res Function(_$HomePageErrorOnly) _then)
      : super(_value, (v) => _then(v as _$HomePageErrorOnly));

  @override
  _$HomePageErrorOnly get _value => super._value as _$HomePageErrorOnly;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomePageErrorOnly(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomePageErrorOnly extends HomePageErrorOnly {
  const _$HomePageErrorOnly([this.errorMessage]) : super._();

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomePageState.errorOnly(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageErrorOnly &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$HomePageErrorOnlyCopyWith<_$HomePageErrorOnly> get copyWith =>
      __$$HomePageErrorOnlyCopyWithImpl<_$HomePageErrorOnly>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BuiltList<MyObject> objects, String? errorMessage)
        data,
    required TResult Function(String? errorMessage) errorOnly,
  }) {
    return errorOnly(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
  }) {
    return errorOnly?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BuiltList<MyObject> objects, String? errorMessage)? data,
    TResult Function(String? errorMessage)? errorOnly,
    required TResult orElse(),
  }) {
    if (errorOnly != null) {
      return errorOnly(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageData value) data,
    required TResult Function(HomePageErrorOnly value) errorOnly,
  }) {
    return errorOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
  }) {
    return errorOnly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageData value)? data,
    TResult Function(HomePageErrorOnly value)? errorOnly,
    required TResult orElse(),
  }) {
    if (errorOnly != null) {
      return errorOnly(this);
    }
    return orElse();
  }
}

abstract class HomePageErrorOnly extends HomePageState {
  const factory HomePageErrorOnly([final String? errorMessage]) =
      _$HomePageErrorOnly;
  const HomePageErrorOnly._() : super._();

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$HomePageErrorOnlyCopyWith<_$HomePageErrorOnly> get copyWith =>
      throw _privateConstructorUsedError;
}
