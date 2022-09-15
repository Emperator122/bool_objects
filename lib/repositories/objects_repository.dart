import 'dart:async';
import 'package:bool_objects/adapters/objects_extension.dart';
import 'package:bool_objects/network/api/listenable_objects_api.dart';
import 'package:bool_objects/network/api/objects_api.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';

import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:rxdart/rxdart.dart';

abstract class ObjectsRepository {
  Future<BuiltList<MyObjectDto>> getObjects();

  Future<void> editObject(MyObjectDto objectDto, SwitchDto switchDto);

  Stream<BuiltList<MyObjectDto>> get listenableObjectsDtoStream;

  void close();
}

class ObjectsRepositoryImpl extends ObjectsRepository {
  final ObjectsApi _objectsApi;

  final ListenableObjectsApi _listenableObjectsApi;
  late final StreamSubscription _listenableObjectsApiSubscription;
  final PublishSubject<BuiltList<MyObjectDto>> _listenableObjectsDto;

  @override
  Stream<BuiltList<MyObjectDto>> get listenableObjectsDtoStream =>
      _listenableObjectsDto.stream;

  ObjectsRepositoryImpl()
      : _objectsApi = ObjectsApiImpl(),
        _listenableObjectsApi = ListenableObjectsApiImpl(),
        _listenableObjectsDto = PublishSubject<BuiltList<MyObjectDto>>() {
    _listenableObjectsApiSubscription =
        _listenableObjectsApi.objectsStream.listen(_onListenableObjectsApiData);
  }

  @override
  Future<BuiltList<MyObjectDto>> getObjects() async {
    return (await _objectsApi.getObjects()).toMyObjectDtos();
  }

  @override
  Future<void> editObject(MyObjectDto objectDto, SwitchDto switchDto) {
    return _objectsApi.editObject(
      objectDto.dbPosition,
      switchDto.type.toServerString(),
      switchDto.value,
    );
  }

  void _onListenableObjectsApiData(BuiltList<MyObject> objects) {
    _listenableObjectsDto.add(objects.toMyObjectDtos());
  }

  @override
  void close() {
    _listenableObjectsApiSubscription.cancel();
    _listenableObjectsApi.close();
    _listenableObjectsDto.close();
  }
}
