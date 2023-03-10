import 'package:flutter_bloc/flutter_bloc.dart';

import 'counterEvent.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc():super (0){
    on<IncrementEvent>((event, emit) => emit(state+1),);
    on<DecrementEvent>((event, emit) => emit(state-1),);
  }
}
