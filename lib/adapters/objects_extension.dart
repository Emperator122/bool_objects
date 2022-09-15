import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';

extension MyObjectsMapExt on BuiltMap<String, MyObject> {
  BuiltList<MyObjectDto> toMyObjectDtos() {
    final objectDtosList = entries.map((entry) => entry.value.toMyObjectDto(entry.key)).toList();
    objectDtosList.sort((el1, el2) => el1.sortOrder.compareTo(el2.sortOrder));
    return objectDtosList.toBuiltList();
  }
}

extension MyObjectExt on MyObject {
  MyObjectDto toMyObjectDto(String dbKey) => MyObjectDto(
      dbKey: dbKey,
      id: id,
      name: name,
      sortOrder: sortOrder,
      switch1: SwitchDto(type: SwitchType.switch1, value: switch1),
      switch2: SwitchDto(type: SwitchType.switch2, value: switch2),
      switch3: SwitchDto(type: SwitchType.switch3, value: switch3),
  );
}

extension SwitchTypeExt on SwitchType {
  String toServerString() {
    switch(this){
      case SwitchType.switch1:
        return 'switch1';
      case SwitchType.switch2:
        return 'switch2';
      case SwitchType.switch3:
        return 'switch3';
    }
  }
}
