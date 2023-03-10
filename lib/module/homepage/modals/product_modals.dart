import 'dart:ui';

class ProductModals {
  String image;
  String productName;
  String dataAndComp;
  num price;

  ProductModals({required this.image, required this.productName, required this.dataAndComp, required this.price});
}

List<ProductModals> productModals = [
  ProductModals(image: 'assets/images/batman.png', productName: 'Batman Toy', dataAndComp: '2018 | FunSkool', price: 899),
  ProductModals(image: 'assets/images/book.png', productName: 'How to be rich by J. Paul Getty', dataAndComp: '2020 | H&C', price: 1299)
];
