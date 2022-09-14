import 'dart:async';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:rxdart/rxdart.dart';

abstract class ListenableObjectsApi {
  Stream<BuiltList<MyObject>> get objectsStream;

  void close();
}

class ListenableObjectsApiImpl extends ListenableObjectsApi {
  late final PublishSubject<BuiltList<MyObject>> _objects;
  late final StreamSubscription _objectsSubscription;

  ListenableObjectsApiImpl() {
    _objects = PublishSubject<BuiltList<MyObject>>();
    final firebaseRef = FirebaseDatabase.instance.ref("objects");
    _objectsSubscription = firebaseRef.onValue.listen(_onDBUpdate);
  }

  @override
  Stream<BuiltList<MyObject>> get objectsStream => _objects.stream;

  @override
  void close() {
    _objectsSubscription.cancel();
    _objects.close();
  }

  Future<void> _onDBUpdate(DatabaseEvent event) async {
    final response = event.snapshot.value;
    if (response is! List<dynamic>?) {
      throw const FormatException();
    }
    final objects = response
        ?.map(
            (data) => MyObject.fromJson((data as Map<Object?, Object?>).cast()))
        .toBuiltList();

    _objects.add(objects ?? BuiltList());
  }
}
