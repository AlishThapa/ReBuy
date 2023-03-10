import 'package:after_exam/module/homepage/modals/recent_modals.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentlyViewedBloc extends Cubit<RecentState>{
  RecentlyViewedBloc(): super( RecentState(data: [
    RecentModals(image: 'assets/images/Pen and Table.svg', productName: 'Pen tablet',  price: 1299, isLoved: true),
    RecentModals(image: 'assets/images/coffeeBook.svg', productName: 'Amazon Kindle' , price: 439, isLoved: false)
  ])
  );

  void onLiked(int index, bool isLiked){
    RecentState recentState = state.copyWith();
    recentState.data[index].isLoved= !recentState.data[index].isLoved;

    emit(recentState);
  }

}


class RecentState{
  List<RecentModals> data;

  RecentState({required this.data});

  RecentState copyWith({List<RecentModals>? data}){
    return RecentState(data: data ?? this.data);
  }
}