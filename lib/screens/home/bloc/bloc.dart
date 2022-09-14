import 'dart:async';
import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:bool_objects/repositories/objects_repository.dart';
import 'package:bool_objects/screens/home/bloc/event.dart';
import 'package:bool_objects/screens/home/bloc/state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

const _serverGetDebounceDuration = Duration(milliseconds: 5000);
const _serverSendDebounceDuration = Duration(milliseconds: 2000);

EventTransformer<SendSwitchValueToDBEvent> debounce(Duration duration) {
  return (events, mapper) => events
      .groupBy((event) => '${event.switchDto.type}${event.objectDto.id}')
      .flatMap((groupedStream) => groupedStream.debounceTime(duration))
      .switchMap(mapper);
}

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  late final ObjectsRepository objectsRepository;
  late final StreamSubscription objectsStreamSubscription;

  HomePageBloc() : super(const HomePageState.loading()) {
    objectsRepository = ObjectsRepositoryImpl();

    on<LoadDataEvent>(_onLoadData);
    on<SetDataEvent>(_onSetData);
    on<SetSwitchValueEvent>(_onSetSwitchValue);
    on<SendSwitchValueToDBEvent>(
      _onSendSwitchValueToDB,
      transformer: debounce(
        _serverSendDebounceDuration,
      ),
    );

    add(LoadDataEvent());

    objectsStreamSubscription = objectsRepository.listenableObjectsDtoStream
        .debounceTime(_serverGetDebounceDuration)
        .listen(_onUpdateData);
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

  Future<void> _onSetSwitchValue(
    SetSwitchValueEvent event,
    Emitter<HomePageState> emit,
  ) async {
    // do optimistic update
    final newState = state.mapOrNull(
      data: (state) => state.copyWith(
        objects: state.objects.replaceSwitch(
          event.objectDto.id,
          event.switchDto,
        ),
      ),
    );
    if (newState != null) {
      emit(newState);
    }
    // and add send event
    add(SendSwitchValueToDBEvent(
      objectDto: event.objectDto,
      switchDto: event.switchDto,
    ));
  }

  Future<void> _onSendSwitchValueToDB(
    SendSwitchValueToDBEvent event,
    Emitter<HomePageState> emit,
  ) async {
    await objectsRepository.editObject(event.objectDto, event.switchDto);
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

extension on BuiltList<MyObjectDto> {
  BuiltList<MyObjectDto> replaceSwitch(int objectId, SwitchDto switchDto) {
    final index = indexWhere((object) => object.id == objectId);
    if (index != -1) {
      switch (switchDto.type) {
        case SwitchType.switch1:
          return rebuild(
              (list) => list[index] = list[index].copyWith(switch1: switchDto));
        case SwitchType.switch2:
          return rebuild(
              (list) => list[index] = list[index].copyWith(switch2: switchDto));
        case SwitchType.switch3:
          return rebuild(
              (list) => list[index] = list[index].copyWith(switch3: switchDto));
      }
    }
    return this;
  }
}
