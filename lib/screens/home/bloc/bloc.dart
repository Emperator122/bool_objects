import 'dart:async';
import 'package:bool_objects/adapters/objects_extension.dart';
import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:bool_objects/network/models/my_object.dart';
import 'package:bool_objects/repositories/objects_repository.dart';
import 'package:bool_objects/screens/home/bloc/event.dart';
import 'package:bool_objects/screens/home/bloc/state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  late final ObjectsRepository objectsRepository;
  late final StreamSubscription objectsStreamSubscription;

  HomePageBloc() : super(const HomePageState.loading()) {
    objectsRepository = ObjectsRepositoryImpl();

    on<LoadDataEvent>(_onLoadData);
    on<SetDataEvent>(_onSetData);

    add(LoadDataEvent());

    objectsStreamSubscription =
        objectsRepository.listenableObjectsDtoStream.listen(_onUpdateData);
  }

  Future<void> _onLoadData(
    LoadDataEvent event,
    Emitter<HomePageState> emit,
  ) async {
    try {
      emit(state.provideLoading());
      final result = await objectsRepository.getObjects();
      emit(HomePageState.data(
        objects: result,
        loading: false,
      ));
    } catch (e) {
      emit(state.provideError(e.toString()));
    }
  }

  Future<void> _onSetData(
    SetDataEvent event,
    Emitter<HomePageState> emit,
  ) async {
    emit(HomePageState.data(
      objects: event.objects,
      loading: false,
    ));
  }

  void _onUpdateData(BuiltList<MyObjectDto> myObjects) {
    add(SetDataEvent(objects: myObjects));
  }

  @override
  Future<void> close() async {
    objectsRepository.close();
    super.close();
  }
}
