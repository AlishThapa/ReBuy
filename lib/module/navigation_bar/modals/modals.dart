import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationIconModals {
  Icon icon;

  NavigationIconModals({required this.icon});
}

List<NavigationIconModals> navigationIconModals = [
  NavigationIconModals(icon: const Icon(Icons.home_outlined)),
  NavigationIconModals(icon: const Icon(Icons.explore_outlined)),
  NavigationIconModals(icon: const Icon(Icons.camera)),
  NavigationIconModals(icon: const Icon(Icons.favorite_outline)),
  NavigationIconModals(icon: const Icon(Icons.message_outlined))
];
