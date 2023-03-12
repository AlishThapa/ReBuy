class LikedItemModels {
  String image;
  String productName;
  String date;
  num price;

  LikedItemModels({
    required this.image,
    required this.productName,
    required this.date,
    required this.price,
  });
}

List<LikedItemModels> likedItemModals = [
  LikedItemModels(image: 'assets/images/airpod.png', productName: 'Apple AirPods Pro', date: '21 Jan 2021', price: 8999),
  LikedItemModels(image: 'assets/images/jbl.png', productName: 'JBL Charge 2 Speaker', date: '20 Dec 2020', price: 6499),
  LikedItemModels(image: 'assets/images/ps.png', productName: 'PlayStation Controller ', date: '14 Nov 2020', price: 1299),
  LikedItemModels(image: 'assets/images/cycle.png', productName: 'Nexus Mountain Bike', date: '05 Oct 2020', price: 9100),
  LikedItemModels(image: 'assets/images/tent.png', productName: 'Wildcraft Ranger Tent', date: '30 Sep 2020', price: 999)
];
