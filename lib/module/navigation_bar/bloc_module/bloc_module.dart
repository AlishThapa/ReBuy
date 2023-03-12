import 'package:flutter_bloc/flutter_bloc.dart';
import '../modals/modals.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void onNavItemClick(int index) {
    emit(index);
  }
}
