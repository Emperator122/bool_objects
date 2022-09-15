import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:bool_objects/presentation/screens/home/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;

const double _cardVerticalPadding = 16.0;
const double _cardHorizontalPadding = 24.0;

class ObjectCard extends StatelessWidget {
  final MyObjectDto object;
  final void Function(MyObjectDto objectDto, SwitchDto switchDto) onSwitchValue;
  final HomePageState state;

  const ObjectCard({
    Key? key,
    required this.object,
    required this.onSwitchValue,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          _CardHeader(
            name: object.name,
            id: object.id,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: _cardVerticalPadding,
              horizontal: _cardHorizontalPadding - 15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 15),
                    const Text('Switch name'),
                    Transform.scale(
                      scale: 0.6,
                      child: cupertino.CupertinoSwitch(
                        activeColor: Theme.of(context)
                            .switchTheme
                            .trackColor
                            ?.resolve({MaterialState.pressed}),
                        value: object.switch1.value,
                        onChanged: (value) {
                          if (state.loading) {
                            return;
                          }
                          final switchDto =
                              object.switch1.copyWith(value: value);
                          onSwitchValue(
                              object.copyWith(switch1: switchDto), switchDto);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<bool>(
                      value: true,
                      groupValue: object.switch2.value,
                      onChanged: (bool? value) {
                        if (state.loading) {
                          return;
                        }
                        final switchDto =
                            object.switch2.copyWith(value: (value ?? true));
                        onSwitchValue(
                            object.copyWith(switch2: switchDto), switchDto);
                      },
                    ),
                    const Text('Radio 1'),
                    const SizedBox(width: 15),
                    Radio<bool>(
                      value: false,
                      groupValue: object.switch2.value,
                      onChanged: (bool? value) {
                        if (state.loading) {
                          return;
                        }
                        final switchDto =
                            object.switch2.copyWith(value: (value ?? true));
                        onSwitchValue(
                            object.copyWith(switch2: switchDto), switchDto);
                      },
                    ),
                    const Text('Radio 2'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: object.switch3.value,
                      onChanged: (bool? value) {
                        if (state.loading) {
                          return;
                        }
                        final switchDto = object.switch3
                            .copyWith(value: (value ?? !object.switch3.value));
                        onSwitchValue(
                            object.copyWith(switch3: switchDto), switchDto);
                      },
                    ),
                    const Text('Checkbox'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardHeader extends StatelessWidget {
  final String name;
  final int id;

  const _CardHeader({
    required this.name,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: _cardVerticalPadding,
        horizontal: _cardHorizontalPadding,
      ),
      decoration: const BoxDecoration(color: Color(0XFFEAF2FC)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            'ID:$id',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).hintColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
