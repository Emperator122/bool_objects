import 'dart:async';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:rxdart/rxdart.dart';

abstract class ListenableObjectsApi {
  Stream<BuiltMap<String, MyObject>> get objectsStream;

  void close();
}

class ListenableObjectsApiImpl extends ListenableObjectsApi {
  late final PublishSubject<BuiltMap<String, MyObject>> _objects;
  late final StreamSubscription _objectsSubscription;

  ListenableObjectsApiImpl() {
    _objects = PublishSubject<BuiltMap<String, MyObject>>();
    final firebaseRef = FirebaseDatabase.instance.ref("objects");
    _objectsSubscription = firebaseRef.onValue.listen(_onDBUpdate);
  }

  @override
  Stream<BuiltMap<String, MyObject>> get objectsStream => _objects.stream;

  @override
  void close() {
    _objectsSubscription.cancel();
    _objects.close();
  }

  Future<void> _onDBUpdate(DatabaseEvent event) async {
    final response = event.snapshot;
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

    _objects.add(objectsMap);
  }
}
