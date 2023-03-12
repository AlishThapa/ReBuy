import 'package:after_exam/module/navigation_bar/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateOrLoginButton extends StatelessWidget {
  CreateOrLoginButton({required this.buttonName});
  String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(
          colors: [Color(0xffFF5A5F), Color(0xffC1839F)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Text(
        buttonName,
        style: GoogleFonts.dosis(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: const Color(0xfff5f5f5),
        ),
      ),
    );
  }
}
