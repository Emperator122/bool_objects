import 'package:bool_objects/adapters/objects_extension.dart';
import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:test/test.dart';

void main() async {
  group('objects sorting', () {
    test('list of converted objects should be sorted by sortOrder', () async {
      final objects = [
        const MyObject(
          id: 111,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 10,
        ).toMyObjectDto('0'),
        const MyObject(
          id: 222,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 9,
        ).toMyObjectDto('1'),
        const MyObject(
          id: 333,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 0,
        ).toMyObjectDto('2'),
        const MyObject(
          id: 444,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 1,
        ).toMyObjectDto('3'),
      ];
      final correctSortedObjects = [
        const MyObject(
          id: 333,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 0,
        ).toMyObjectDto('2'),
        const MyObject(
          id: 444,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 1,
        ).toMyObjectDto('3'),
        const MyObject(
          id: 222,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 9,
        ).toMyObjectDto('1'),
        const MyObject(
          id: 111,
          name: 'Test',
          switch1: true,
          switch2: true,
          switch3: true,
          sortOrder: 10,
        ).toMyObjectDto('0'),
      ];
      objects.sortByOrder();
      for (var i = 0; i < objects.length; i++) {
        expect(objects[i], correctSortedObjects[i]);
      }
    });

    test('list of objectsDto should be sorted by sortOrder', () async {
      final objects = [
        const MyObjectDto(
          id: 111,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 10,
          dbKey: '0',
        ),
        const MyObjectDto(
          id: 222,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 9,
          dbKey: '1',
        ),
        const MyObjectDto(
          id: 333,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 0,
          dbKey: '2',
        ),
        const MyObjectDto(
          id: 444,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 1,
          dbKey: '3',
        ),
      ];
      final correctSortedObjects = [
        const MyObjectDto(
          id: 333,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 0,
          dbKey: '2',
        ),
        const MyObjectDto(
          id: 444,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 1,
          dbKey: '3',
        ),
        const MyObjectDto(
          id: 222,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 9,
          dbKey: '1',
        ),
        const MyObjectDto(
          id: 111,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 10,
          dbKey: '0',
        ),
      ];
      objects.sortByOrder();
      for (var i = 0; i < objects.length; i++) {
        expect(objects[i], correctSortedObjects[i]);
      }
    });

    test('sorted list of objectsDto should be same after sort', () async {
      final correctSortedObjects = [
        const MyObjectDto(
          id: 333,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 0,
          dbKey: '2',
        ),
        const MyObjectDto(
          id: 444,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 1,
          dbKey: '3',
        ),
        const MyObjectDto(
          id: 222,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 9,
          dbKey: '1',
        ),
        const MyObjectDto(
          id: 111,
          name: 'Test',
          switch1: SwitchDto(type: SwitchType.switch1, value: true),
          switch2: SwitchDto(type: SwitchType.switch2, value: true),
          switch3: SwitchDto(type: SwitchType.switch3, value: true),
          sortOrder: 10,
          dbKey: '0',
        ),
      ];

      final correctSortedObjects2 = List<MyObjectDto>.from(correctSortedObjects);
      correctSortedObjects2.sortByOrder();
      for (var i = 0; i < correctSortedObjects2.length; i++) {
        expect(correctSortedObjects2[i], correctSortedObjects[i]);
      }
    });
  });
}
