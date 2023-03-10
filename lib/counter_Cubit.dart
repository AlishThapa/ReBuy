import 'package:flutter_bloc/flutter_bloc.dart';

class Counte extends Cubit<int>{
  Counte():super(0);

  void incrementer (){
    emit(state+1);
  }

  void decrementer (){
    emit(state-1);
  }

}