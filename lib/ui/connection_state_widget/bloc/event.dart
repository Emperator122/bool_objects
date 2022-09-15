abstract class ConnectionStateEvent {}

class SetConnectionStateEvent extends ConnectionStateEvent {
  final bool isConnected;

  SetConnectionStateEvent({required this.isConnected});
}
