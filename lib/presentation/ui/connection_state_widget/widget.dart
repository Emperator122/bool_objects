import 'package:bool_objects/presentation/ui/connection_state_widget/bloc/bloc.dart';
import 'package:bool_objects/presentation/ui/connection_state_widget/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionStateWidget extends StatefulWidget {
  final Widget child;
  const ConnectionStateWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<ConnectionStateWidget> createState() => ConnectionStateWidgetState();
}

class ConnectionStateWidgetState extends State<ConnectionStateWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionStateBloc, ConnectionCheckerStateBase>(
        builder: (context, state) {
      return Stack(
        children: [
          widget.child,
          if (state is ConnectionCheckerState && !state.isConnected)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red.withOpacity(0.5)),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Вы находитесь в оффлайн режиме!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}
