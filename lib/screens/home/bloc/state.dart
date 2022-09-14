import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();
  const factory HomePageState.loading() = HomePageLoading;
  const factory HomePageState.data({
    required BuiltList<MyObjectDto> objects,
    String? errorMessage,
    required bool loading,
  }) = HomePageData;
  const factory HomePageState.errorOnly([String? errorMessage]) =
      HomePageErrorOnly;

  HomePageState provideError([String? message]) => map(
        loading: (state) => HomePageState.errorOnly(message),
        data: (state) => state.copyWith(
          errorMessage: message,
          loading: false,
        ),
        errorOnly: (state) => HomePageState.errorOnly(message),
      );

  HomePageState provideLoading() => map(
        loading: (state) => state,
        data: (state) => state.copyWith(
          errorMessage: null,
          loading: true,
        ),
        errorOnly: (state) => const HomePageState.loading(),
      );

  String? get error => map(
        loading: (state) => null,
        data: (state) => state.errorMessage,
        errorOnly: (state) => state.errorMessage,
      );

  bool get loading => maybeMap(
        orElse: () => false,
        loading: (state) => true,
        data: (state) => state.loading,
      );
}
