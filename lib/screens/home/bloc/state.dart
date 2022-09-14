import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();
  const factory HomePageState.loading() = HomePageLoading;
  const factory HomePageState.data({
    required BuiltList<MyObject> objects,
    String? errorMessage,
  }) = HomePageData;
  const factory HomePageState.errorOnly([String? errorMessage]) = HomePageErrorOnly;

  HomePageState provideError([String? message]) => map(
        loading: (state) => HomePageState.errorOnly(message),
        data: (state) => state.copyWith(errorMessage: message),
        errorOnly: (state) => HomePageState.errorOnly(message),
      );

  String? get error => map(
    loading: (state) => null,
    data: (state) => state.errorMessage,
    errorOnly: (state) => state.errorMessage,
  );
}
