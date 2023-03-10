import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomWIdget extends StatelessWidget {
  const BottomWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 95,
          child: SvgPicture.asset('assets/images/Waves.svg', fit: BoxFit.fill),
        ),
        Positioned.fill(
          bottom: 5,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'ReBuy Inc. Version 1.0',
              style: GoogleFonts.firaSans(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xfff5f5f5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
