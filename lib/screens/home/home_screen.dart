import 'package:bool_objects/core/disposable_vm/disposable_vm.dart';
import 'package:bool_objects/core/error_snack_bar.dart';
import 'package:bool_objects/screens/home/bloc/bloc.dart';
import 'package:bool_objects/screens/home/bloc/state.dart';
import 'package:bool_objects/screens/home/components/object_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        title: const Text('Test'),
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
            data: (state) => _HomePageBody(data: state),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _HomePageBody extends StatelessWidget {
  final HomePageData data;

  const _HomePageBody({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: data.objects
          .map(
            (object) => ObjectCard(
              object: object,
            ),
          )
          .toList(),
    );
  }
}
