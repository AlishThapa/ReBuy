import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key, this.fontSize, required this.title}) : super(key: key);
  final double? fontSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.dosis(
        fontWeight: FontWeight.w800,
        color: const Color(0xff3C3C3C),
        fontSize: fontSize ?? 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}
