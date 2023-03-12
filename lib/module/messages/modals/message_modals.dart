class MessageModals {
  String assetsPath;
  String productName;
  String userName;
  String userMessages;

  MessageModals({required this.assetsPath, required this.productName, required this.userName, required this.userMessages});
}

List<MessageModals> messageModals = [
  MessageModals(
      assetsPath: 'assets/images/image1.png',
      productName: 'DJI Mavic Mini 2',
      userName: '| Paul Molive',
      userMessages: 'You: Does it come with an additional battery?'),
  MessageModals(
      assetsPath: 'assets/images/image2.png',
      productName: 'DJI Mavic Mini 2',
      userName: '| Petey Cruiser',
      userMessages: 'Petey: Sorry, I’m unlisting it'),
  MessageModals(
      assetsPath: 'assets/images/image3.png',
      productName: 'DJI Mavic Air 2',
      userName: '| Anna Sthesia',
      userMessages: 'Anna: I think you should go with Mavic Mini'),
  MessageModals(
      assetsPath: 'assets/images/image4.png', productName: 'Apple AirPods Pro', userName: '| Bob Frapples', userMessages: 'Bob: You’r welcome'),
  MessageModals(
    assetsPath: 'assets/images/image5.png',
    productName: 'JBL Charge 2 Spea...',
    userName: '| Greta Life',
    userMessages: 'Greta: Alright',
  ),
  MessageModals(
    assetsPath: 'assets/images/image6.png',
    productName: 'PlayStation Contro...',
    userName: '| Ira Membrit',
    userMessages: 'You: ',
  ),
];
