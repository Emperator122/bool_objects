import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_object.g.dart';

part 'my_object.freezed.dart';

@freezed
class MyObject with _$MyObject {
  const factory MyObject({
    required int id,
    required String name,
    required bool switch1,
    required bool switch2,
    required bool switch3,
    required int sortOrder,
  }) = _MyObject;

  factory MyObject.fromJson(Map<String, dynamic> json) =>
      _$MyObjectFromJson(json);

  factory MyObject.fromDbData(Map<Object?, Object?> data) => MyObject.fromJson(jsonDecode(jsonEncode(data)));
}
