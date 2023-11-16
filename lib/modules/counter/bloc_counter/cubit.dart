import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_mansour/modules/counter/bloc_counter/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(super.initialState);

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void minuscounter() {
    counter--;
    emit(MinusCounterState());
  }

  void plus_counter() {
    counter++;
    emit(PlusCounterState());
  }
}
