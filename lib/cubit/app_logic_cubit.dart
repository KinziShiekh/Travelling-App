import 'package:all_of_us_are_dead1/cubit/app_cubit.dart';
import 'package:all_of_us_are_dead1/cubit/app_cubit_states.dart';
import 'package:all_of_us_are_dead1/screen/navpage/homepage.dart';
import 'package:all_of_us_are_dead1/screen/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return const Welcomepage();
          }
          if (state is LoadedState) {
            return const HomePage();
          }
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
