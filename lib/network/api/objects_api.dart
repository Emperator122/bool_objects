import 'package:bool_objects/network/fake_duration.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class ObjectsApi {
  Future<BuiltList<MyObject>> getObjects();
  Future<void> editObject(int dbPosition, String switchId, bool switchValue);
}

class ObjectsApiImpl extends ObjectsApi with FakeDuration {
  @override
  Future<BuiltList<MyObject>> getObjects() async {
    await fakeDuration;
    final firebaseRef = FirebaseDatabase.instance.ref("objects");
    final response = (await firebaseRef.get()).value;
    if (response is! List<dynamic>?) {
      throw const FormatException();
    }
    final objects = response
        ?.map((data) => MyObject.fromJson((data as Map<Object?, Object?>).cast()))
        .toBuiltList();

    return objects ?? BuiltList();
  }

  @override
  Future<void> editObject(int dbPosition, String switchId, bool switchValue) async {
    await fakeDuration;
    final firebaseRef = FirebaseDatabase.instance.ref("objects/$dbPosition");
    await firebaseRef.update({switchId: switchValue});
  }
}
