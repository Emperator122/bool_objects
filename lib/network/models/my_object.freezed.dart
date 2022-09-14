// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyObject _$MyObjectFromJson(Map<String, dynamic> json) {
  return _MyObject.fromJson(json);
}

/// @nodoc
mixin _$MyObject {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get switch1 => throw _privateConstructorUsedError;
  bool get switch2 => throw _privateConstructorUsedError;
  bool get switch3 => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyObjectCopyWith<MyObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyObjectCopyWith<$Res> {
  factory $MyObjectCopyWith(MyObject value, $Res Function(MyObject) then) =
      _$MyObjectCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      bool switch1,
      bool switch2,
      bool switch3,
      int sortOrder});
}

/// @nodoc
class _$MyObjectCopyWithImpl<$Res> implements $MyObjectCopyWith<$Res> {
  _$MyObjectCopyWithImpl(this._value, this._then);

  final MyObject _value;
  // ignore: unused_field
  final $Res Function(MyObject) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? switch1 = freezed,
    Object? switch2 = freezed,
    Object? switch3 = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      switch1: switch1 == freezed
          ? _value.switch1
          : switch1 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch2: switch2 == freezed
          ? _value.switch2
          : switch2 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch3: switch3 == freezed
          ? _value.switch3
          : switch3 // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MyObjectCopyWith<$Res> implements $MyObjectCopyWith<$Res> {
  factory _$$_MyObjectCopyWith(
          _$_MyObject value, $Res Function(_$_MyObject) then) =
      __$$_MyObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      bool switch1,
      bool switch2,
      bool switch3,
      int sortOrder});
}

/// @nodoc
class __$$_MyObjectCopyWithImpl<$Res> extends _$MyObjectCopyWithImpl<$Res>
    implements _$$_MyObjectCopyWith<$Res> {
  __$$_MyObjectCopyWithImpl(
      _$_MyObject _value, $Res Function(_$_MyObject) _then)
      : super(_value, (v) => _then(v as _$_MyObject));

  @override
  _$_MyObject get _value => super._value as _$_MyObject;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? switch1 = freezed,
    Object? switch2 = freezed,
    Object? switch3 = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$_MyObject(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      switch1: switch1 == freezed
          ? _value.switch1
          : switch1 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch2: switch2 == freezed
          ? _value.switch2
          : switch2 // ignore: cast_nullable_to_non_nullable
              as bool,
      switch3: switch3 == freezed
          ? _value.switch3
          : switch3 // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyObject implements _MyObject {
  const _$_MyObject(
      {required this.id,
      required this.name,
      required this.switch1,
      required this.switch2,
      required this.switch3,
      required this.sortOrder});

  factory _$_MyObject.fromJson(Map<String, dynamic> json) =>
      _$$_MyObjectFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool switch1;
  @override
  final bool switch2;
  @override
  final bool switch3;
  @override
  final int sortOrder;

  @override
  String toString() {
    return 'MyObject(id: $id, name: $name, switch1: $switch1, switch2: $switch2, switch3: $switch3, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyObject &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.switch1, switch1) &&
            const DeepCollectionEquality().equals(other.switch2, switch2) &&
            const DeepCollectionEquality().equals(other.switch3, switch3) &&
            const DeepCollectionEquality().equals(other.sortOrder, sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(switch1),
      const DeepCollectionEquality().hash(switch2),
      const DeepCollectionEquality().hash(switch3),
      const DeepCollectionEquality().hash(sortOrder));

  @JsonKey(ignore: true)
  @override
  _$$_MyObjectCopyWith<_$_MyObject> get copyWith =>
      __$$_MyObjectCopyWithImpl<_$_MyObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyObjectToJson(
      this,
    );
  }
}

abstract class _MyObject implements MyObject {
  const factory _MyObject(
      {required final int id,
      required final String name,
      required final bool switch1,
      required final bool switch2,
      required final bool switch3,
      required final int sortOrder}) = _$_MyObject;

  factory _MyObject.fromJson(Map<String, dynamic> json) = _$_MyObject.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get switch1;
  @override
  bool get switch2;
  @override
  bool get switch3;
  @override
  int get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$_MyObjectCopyWith<_$_MyObject> get copyWith =>
      throw _privateConstructorUsedError;
}
