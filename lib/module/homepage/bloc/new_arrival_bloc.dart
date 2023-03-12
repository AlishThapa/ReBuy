import 'package:flutter_bloc/flutter_bloc.dart';
import '../modals/product_modals.dart';

class NewArrivalBloc extends Cubit<NewArrivalBlocState> {
  NewArrivalBloc()
      : super(
          NewArrivalBlocState(
            data: [
              ProductModals(
                image: 'assets/images/batman.png',
                productName: 'Batman Toy',
                dataAndComp: '2018 | FunSkool',
                price: 899,
                isLoved: false,
              ),
              ProductModals(
                image: 'assets/images/book.png',
                productName: 'How to be rich by J. Paul Getty',
                dataAndComp: '2020 | H&C',
                price: 1299,
                isLoved: false,
              ),
              ProductModals(
                image: 'assets/images/shure.png',
                productName: 'shure',
                dataAndComp: '2020 | Shure',
                price: 2499,
                isLoved: false,
              )
            ],
          ),
        );

  void onLiked(int index, bool isLiked) {
    NewArrivalBlocState newArrivalBlocStateState = state.copyWith();
    newArrivalBlocStateState.data[index].isLoved = !newArrivalBlocStateState.data[index].isLoved;

    emit(newArrivalBlocStateState);
  }
}

class NewArrivalBlocState {
  List<ProductModals> data;

  NewArrivalBlocState({required this.data});

  NewArrivalBlocState copyWith({List<ProductModals>? data}) {
    return NewArrivalBlocState(data: data ?? this.data);
  }
}
