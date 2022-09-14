import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:built_collection/built_collection.dart';

abstract class HomePageEvent {}

class LoadDataEvent extends HomePageEvent {}

class SetDataEvent extends HomePageEvent {
  final BuiltList<MyObjectDto> objects;

  SetDataEvent({required this.objects});
}

class SetSwitchValue {

}
