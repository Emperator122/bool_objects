import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';

extension MyObjectExt on BuiltList<MyObject> {
  BuiltList<MyObject> sortedByOrder() => rebuild((list) =>
      list.sort((el1, el2) => el1.sortOrder.compareTo(el2.sortOrder)));
}
