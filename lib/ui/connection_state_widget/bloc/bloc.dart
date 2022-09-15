import 'dart:async';
import 'package:bool_objects/repositories/connection_state_repository.dart';
import 'package:bool_objects/ui/connection_state_widget/bloc/event.dart';
import 'package:bool_objects/ui/connection_state_widget/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionStateBloc
    extends Bloc<ConnectionStateEvent, ConnectionCheckerStateBase> {
  late final ConnectionStateRepository connectionStateRepository;
  late final StreamSubscription isConnectedStreamSubscription;

  ConnectionStateBloc()
      : super(const ConnectionCheckerState(isConnected: true)) {
    connectionStateRepository = ConnectionStateRepositoryImpl();

    on<SetConnectionStateEvent>(_onSetConnectionState);

    isConnectedStreamSubscription = connectionStateRepository.isConnectedStream
        .listen(_onChangeConnectionState);
  }

  Future<void> _onSetConnectionState(
    SetConnectionStateEvent event,
    Emitter<ConnectionCheckerStateBase> emit,
  ) async {
    emit(ConnectionCheckerState(isConnected: event.isConnected));
  }

  void _onChangeConnectionState(bool isConnected) {
    add(SetConnectionStateEvent(isConnected: isConnected));
  }

  @override
  Future<void> close() async {
    isConnectedStreamSubscription.cancel();
    connectionStateRepository.close();
    super.close();
  }
}
