import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfield extends StatelessWidget {
   Textfield({super.key, required this.controller, required this.name});

  final TextEditingController controller;
  final String name;

  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        focusNode.unfocus();
      },
      child: Container(
        height: 57,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: const Color(0xffDEDEDE),
        ),
        child: TextField(
          focusNode: focusNode,
          controller: controller,
          decoration: InputDecoration(
            hintText: name,
            hintStyle: GoogleFonts.dosis(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: const Color(0xff6F6F6F),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 27),
          ),
        ),
      ),
    );
  }
}
