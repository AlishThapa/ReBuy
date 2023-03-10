import 'package:flutter/material.dart';

class IconsImage extends StatelessWidget {
  const IconsImage({Key? key, required this.images}) : super(key: key);
  final Widget images;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color:const Color(0xffDEDEDE),
      ),
      child: images,
    );
  }
}
