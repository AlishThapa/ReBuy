import 'package:flutter/material.dart';

class Options {
  Icon icon;
  String text;
  String subtext;
  
  Options({required this.icon, required this.text, required this.subtext});
}

List<Options> options = [
  Options(icon: const Icon(Icons.person_outline), text: 'My Account', subtext: 'Edit you details, account settings '),
  Options(icon: const Icon(Icons.card_travel_sharp), text: 'My Orders', subtext: 'View all your orders'),
  Options(icon: const Icon(Icons.menu), text: 'My Listings', subtext: 'View your product listing for sale'),
  Options(icon: const Icon(Icons.favorite_outline), text: 'Liked Items', subtext: 'See the products you have wishlisted'),
];
