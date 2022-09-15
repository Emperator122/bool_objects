import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:rxdart/rxdart.dart';

abstract class ListenableConnectionStateApi {
  Stream<bool> get isConnectedStream;

  bool get isConnected;

  void close();
}

class ListenableConnectionStateApiImpl extends ListenableConnectionStateApi {
  late final BehaviorSubject<bool> _isConnected;
  late final StreamSubscription _connectedSubscription;

  ListenableConnectionStateApiImpl() {
    _isConnected = BehaviorSubject<bool>.seeded(false);
    final connectedRef = FirebaseDatabase.instance.ref(".info/connected");
    _connectedSubscription = connectedRef.onValue.listen(_onConnectedStateUpdate);
  }

  @override
  Stream<bool> get isConnectedStream => _isConnected.stream;

  @override
  bool get isConnected => _isConnected.value;

  Future<void> _onConnectedStateUpdate(DatabaseEvent event) async {
    final connected = event.snapshot.value as bool? ?? false;
    _isConnected.add(connected);
  }

  @override
  void close() {
    _connectedSubscription.cancel();
    _isConnected.close();
  }
}
