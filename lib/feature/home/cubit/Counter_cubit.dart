import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<double> {
  CounterCubit() : super(0);
  double x = 0;

  void increment() {
    x++;
    emit(x);
  }

  void decrement() {
    x--;
    emit(x);
  }
   void reset() {
    x=0;
    emit(x);
  }
}
