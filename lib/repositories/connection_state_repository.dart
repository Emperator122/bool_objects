import 'package:bool_objects/network/api/listenable_connection_state_api.dart';

abstract class ConnectionStateRepository {
  Stream<bool> get isConnectedStream;

  bool get isConnected;

  void close();
}

class ConnectionStateRepositoryImpl extends ConnectionStateRepository {
  final ListenableConnectionStateApi _listenableConnectionStateApi;

  ConnectionStateRepositoryImpl()
      : _listenableConnectionStateApi = ListenableConnectionStateApiImpl();

  @override
  bool get isConnected => _listenableConnectionStateApi.isConnected;

  @override
  Stream<bool> get isConnectedStream =>
      _listenableConnectionStateApi.isConnectedStream;

  @override
  void close() {
    _listenableConnectionStateApi.close();
  }
}
