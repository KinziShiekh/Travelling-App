import 'package:all_of_us_are_dead1/model/data_model.dart';
import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable{

}
class InitialState extends CubitStates{
  @override
  List<Object> get props => [];
}
class WelcomeState extends CubitStates{
  @override
  List<Object> get props => [];
}
class LoadingState extends CubitStates{
  @override
  List<Object> get props => [];
}
class LoadedState extends CubitStates{
  LoadedState(this.places);
  final List<DataModel>places;
  @override
  List<Object> get props => [places];
}