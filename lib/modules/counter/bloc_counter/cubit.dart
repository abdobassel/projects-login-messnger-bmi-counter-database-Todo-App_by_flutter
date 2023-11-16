import 'package:bloc/bloc.dart';
import 'package:udemy_mansour/modules/counter/bloc_counter/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(super.initialState);

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
