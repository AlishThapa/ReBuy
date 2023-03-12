import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc_module/bloc_module.dart';
import '../modals/modals.dart';

//
// return Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// GestureDetector(
// onTap: () {
// context.read<BottomNavCubit>().onNavItemClick(0);
// },
// child: Container(
// height: 41,
// width: 55,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(22),
// color: const Color(0xff087E8B),
// ),
// child: const Icon(
// Icons.home_outlined,
// size: 28,
// color: Colors.white,
// ),
// ),
// ),
// GestureDetector(
//   onTap: () {
//     context.read<BottomNavCubit>().onNavItemClick(1);
//   },
//   child: Container(
//     height: 41,
//     width: 55,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(22),
//       color: selectedIndex ? const Color(0xff087E8B) : const Color(0xff3C3C3C),
//     ),
//     child: const Icon(
//       Icons.explore_outlined,
//       size: 28,
//       color: Colors.white,
//     ),
//   ),
// ),
// const SizedBox(width: 20),
// GestureDetector(
//   onTap: () async {
//     final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
//     print(photo);
//   },
//   child: const Icon(
//     Icons.camera_alt_outlined,
//     size: 28,
//     color: Colors.white,
//   ),
// ),
// const SizedBox(width: 20),
// GestureDetector(
//   onTap: () {
//     context.read<BottomNavCubit>().onNavItemClick(2);
//   },
//   child: Container(
//     height: 41,
//     width: 55,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(22),
//       color: selectedIndex ? const Color(0xff087E8B) : const Color(0xff3C3C3C),
//     ),
//     child: const Icon(
//       Icons.favorite_outline,
//       size: 28,
//       color: Colors.white,
//     ),
//   ),
// ),
// GestureDetector(
//   onTap: () {
//     context.read<BottomNavCubit>().onNavItemClick(3);
//   },
//   child: Container(
//     height: 41,
//     width: 55,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(22),
//       color: selectedIndex ? const Color(0xff087E8B) : const Color(0xff3C3C3C),
//     ),
//     child: const Icon(
//       Icons.message_outlined,
//       size: 28,
//       color: Colors.white,
//     ),
//   ),
// )
// ],
// );
