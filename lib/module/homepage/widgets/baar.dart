import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Baar extends StatelessWidget {
  const Baar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.firaSans(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: const Color(0xff3C3C3C),
          ),
        ),
        const Spacer(),
        GestureDetector(
          child: Text(
            'View More',
            style: GoogleFonts.firaSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xff898989),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
