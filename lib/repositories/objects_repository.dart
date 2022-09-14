import 'package:bool_objects/network/api/listenable_objects_api.dart';
import 'package:bool_objects/network/api/objects_api.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';

abstract class ObjectsRepository {
  Future<BuiltList<MyObject>> getObjects();

  Stream<BuiltList<MyObject>> get objectsStream;

  void close();
}

class ObjectsRepositoryImpl extends ObjectsRepository {
  final ObjectsApi _usersApi;
  final ListenableObjectsApi _listenableObjectsApi;

  @override
  Stream<BuiltList<MyObject>> get objectsStream => _listenableObjectsApi.objectsStream;

  ObjectsRepositoryImpl()
      : _usersApi = ObjectsApiImpl(),
        _listenableObjectsApi = ListenableObjectsApiImpl();

  @override
  Future<BuiltList<MyObject>> getObjects() {
    return _usersApi.getObjects();
  }

  @override
  void close() {
    _listenableObjectsApi.close();
  }
}
