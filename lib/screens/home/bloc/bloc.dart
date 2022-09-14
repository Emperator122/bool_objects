import 'package:bool_objects/extensions/objects_extension.dart';
import 'package:bool_objects/repositories/objects_repository.dart';
import 'package:bool_objects/screens/home/bloc/event.dart';
import 'package:bool_objects/screens/home/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  late final ObjectsRepository objectsRepository;

  HomePageBloc() : super(const HomePageState.loading()) {
    objectsRepository = ObjectsRepositoryImpl();

    on<LoadDataEvent>(_onLoadData);

    add(LoadDataEvent());
  }

  Future<void> _onLoadData(
    LoadDataEvent event,
    Emitter<HomePageState> emit,
  ) async {
    try {
      final result = await objectsRepository.getObjects();
      emit(HomePageState.data(objects: result.sortedByOrder()));
    } catch (e) {
      emit(state.provideError(e.toString()));
    }
  }

  @override
  Future<void> close() async {
    objectsRepository.close();
    super.close();
  }
}
