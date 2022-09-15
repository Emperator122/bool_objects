import 'package:bool_objects/core/disposable_vm/disposable_vm.dart';
import 'package:bool_objects/core/error_snack_bar.dart';
import 'package:bool_objects/entities/my_object_dto.dart';
import 'package:bool_objects/presentation/screens/home/bloc/bloc.dart';
import 'package:bool_objects/presentation/screens/home/bloc/event.dart';
import 'package:bool_objects/presentation/screens/home/bloc/state.dart';
import 'package:bool_objects/presentation/screens/home/components/object_card.dart';
import 'package:bool_objects/presentation/ui/connection_state_widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const double _cardBottomMargin = 24.0;

class HomePageVm extends DisposableVM {
  late final HomePageBloc bloc;

  HomePageVm() {
    bloc = HomePageBloc();

    add(() => bloc.close());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> with ErrorSnackBar {
  late final HomePageVm _vm;

  @override
  void initState() {
    super.initState();
    _vm = HomePageVm();
  }

  @override
  void dispose() {
    super.dispose();
    _vm.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: BlocConsumer<HomePageBloc, HomePageState>(
        bloc: _vm.bloc,
        listener: (context, state) {
          state.mapOrNull(
            data: (state) {
              if (state.errorMessage != null) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(getErrorSnackBar(error: state.errorMessage!));
              }
            },
          );
        },
        builder: (context, state) {
          return state.map(
            loading: (state) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorOnly: (state) => Center(
              child: Text(state.errorMessage ?? ''),
            ),
            data: (state) => ConnectionStateWidget(
              child: _HomePageBody(
                data: state,
                vm: _vm,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  final HomePageData data;
  final HomePageVm vm;

  const _HomePageBody({
    required this.data,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        vm.bloc.add(LoadDataEvent());
        do {
          await Future.delayed(const Duration(microseconds: 200));
        } while (vm.bloc.state
            .maybeMap(orElse: () => false, data: (state) => state.loading));
      },
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: data.objects
            .map(
              (object) => Padding(
                padding: const EdgeInsets.only(bottom: _cardBottomMargin),
                child: ObjectCard(
                  object: object,
                  state: data,
                  onSwitchValue: (MyObjectDto objectDto, SwitchDto switchDto) {
                    vm.bloc.add(
                      SetSwitchValueEvent(
                        objectDto: objectDto,
                        switchDto: switchDto,
                      ),
                    );
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
