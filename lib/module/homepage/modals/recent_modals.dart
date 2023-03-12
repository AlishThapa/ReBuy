import 'dart:ui';

class RecentModals {
  String image;
  String productName;
  bool isLoved;
  num price;

  RecentModals({required this.image, required this.productName, required this.price, required this.isLoved});

  RecentModals copyWith({
    String? image,
    String? productName,
    bool? isLoved,
    num? price,
  }) {
    return RecentModals(
      image: image ?? this.image,
      productName: productName ?? this.productName,
      price: price ?? this.price,
      isLoved: isLoved ?? this.isLoved,
    );
  }
}
