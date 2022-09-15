import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

abstract class ConnectionCheckerStateBase {}

@freezed
class ConnectionCheckerState extends ConnectionCheckerStateBase
    with _$ConnectionCheckerState {
  const factory ConnectionCheckerState({required bool isConnected}) =
      _ConnectionCheckerState;
}
