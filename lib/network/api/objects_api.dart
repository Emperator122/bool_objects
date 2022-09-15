import 'package:bool_objects/network/fake_duration.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class ObjectsApi {
  Future<BuiltMap<String, MyObject>> getObjects();
  Future<void> editObject(String dbKey, String switchId, bool switchValue);
}

class ObjectsApiImpl extends ObjectsApi with FakeDuration {
  @override
  Future<BuiltMap<String, MyObject>> getObjects() async {
    await fakeDuration;
    final firebaseRef = FirebaseDatabase.instance.ref("objects");
    final response = await firebaseRef.get();
    final objectsMap = BuiltMap<String, MyObject>.from(
      Map.fromEntries(
        response.children.map(
              (e) => MapEntry(
            e.key ?? '',
            MyObject.fromJson(
              (e.value as Map<Object?, Object?>).cast(),
            ),
          ),
        ),
      ),
    );

    return objectsMap;
  }

  @override
  Future<void> editObject(String dbKey, String switchId, bool switchValue) async {
    await fakeDuration;
    final firebaseRef = FirebaseDatabase.instance.ref("objects/$dbKey");
    await firebaseRef.update({switchId: switchValue});
  }
}
