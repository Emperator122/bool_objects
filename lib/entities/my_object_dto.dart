import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_object_dto.freezed.dart';


@freezed
class MyObjectDto with _$MyObjectDto {
  const factory MyObjectDto({
    required int id,
    required String name,
    required SwitchDto switch1,
    required SwitchDto switch2,
    required SwitchDto switch3,
}) = _MyObjectDto;

}

@freezed
class SwitchDto with _$SwitchDto {
  const factory SwitchDto({
    required SwitchType type,
    required bool value,
}) = _SwitchDto;

}

enum SwitchType {
  switch1,
  switch2,
  switch3,
}
