class ListingItemModels {
  String image;
  String productName;
  String date;
  String count;
  num price;

  ListingItemModels({
    required this.image,
    required this.productName,
    required this.date,
    required this.price,
    required this.count
  });
}

List<ListingItemModels> listingItemModals = [
  ListingItemModels(image: 'assets/images/jabra.png', productName: 'Jabra Wireless Earbuds', date: '21 Jan 2021', price: 8999, count: '1K'),
  ListingItemModels(image: 'assets/images/macbook.png', productName: 'JBL Charge 2 Speaker', date: '20 Dec 2020', price: 6499, count: '1.8K'),
  ListingItemModels(image: 'assets/images/Alexa.png', productName: 'PlayStation Controller ', date: '14 Nov 2020', price: 1299, count: '2,2K'),
  ListingItemModels(image: 'assets/images/LG monitor.png', productName: 'Nexus Mountain Bike', date: '05 Oct 2020', price: 9100, count: '2.6K'),
  ListingItemModels(image: 'assets/images/google home mini.png', productName: 'Wildcraft Ranger Tent', date: '30 Sep 2020', price: 999, count: '3.5K')
];
