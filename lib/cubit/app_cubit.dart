import 'package:all_of_us_are_dead1/services/data_service.dart';
import 'package:bloc/bloc.dart';

import 'app_cubit_states.dart';

class AppCubit extends Cubit<CubitStates>{
  AppCubit({required this.data}): super(LoadingState()){
    emit(WelcomeState());
  }
  final DataServices data;
   late final  places;
  Future<void> getData() async {
    try{
      emit(LoadingState());
      places =  await data.getInfo();
    emit(LoadingState());

    }
    // ignore: empty_catches
    catch(e){

    }
  }
}