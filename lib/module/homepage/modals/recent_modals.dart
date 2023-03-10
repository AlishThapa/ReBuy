import 'dart:ui';

class RecentModals {
  String image;
  String productName;

  num price;

  RecentModals({required this.image, required this.productName, required this.price});
}

List<RecentModals> recentModals = [
  RecentModals(image: 'assets/images/Pen and Table.svg', productName: 'Pen tablet',  price: 1299),
  RecentModals(image: 'assets/images/coffeeBook.svg', productName: 'Amazon Kindle' , price: 439)
];
