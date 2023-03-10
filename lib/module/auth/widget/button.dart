import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateOrLoginButton extends StatelessWidget {
  const CreateOrLoginButton({super.key});

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
        'Create account',
        style: GoogleFonts.dosis(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: const Color(0xfff5f5f5),
        ),
      ),
    );
  }
}
