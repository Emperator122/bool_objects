import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:built_collection/built_collection.dart';

abstract class HomePageEvent {}

class LoadDataEvent extends HomePageEvent {}

class SetDataEvent extends HomePageEvent {
  final BuiltList<MyObjectDto> objects;

  SetDataEvent({required this.objects});
}

class SetSwitchValueEvent extends HomePageEvent {
  final MyObjectDto objectDto;
  final SwitchDto switchDto;

  SetSwitchValueEvent({
    required this.objectDto,
    required this.switchDto,
  });
}

class SendSwitchValueToDBEvent extends HomePageEvent {
  final MyObjectDto objectDto;
  final SwitchDto switchDto;

  SendSwitchValueToDBEvent({
    required this.objectDto,
    required this.switchDto,
  });
}
