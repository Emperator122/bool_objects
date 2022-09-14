import 'package:bool_objects/network/models/my_object.dart';
import 'package:flutter/material.dart';

class ObjectCard extends StatelessWidget {
  final MyObject object;

  const ObjectCard({
    Key? key,
    required this.object,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          object.name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Divider(),
        Row(
          children: [
            const Text('Switch #1'),
            Switch(
              value: object.switch1,
              onChanged: (value) => print('lala'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Switch #2'),
            Switch(
              value: object.switch2,
              onChanged: (value) => print('lala'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Switch #3'),
            Switch(
              value: object.switch3,
              onChanged: (value) => print('lala'),
            ),
          ],
        ),
      ],
    );
  }
}
