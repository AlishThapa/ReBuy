import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 44,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 2,
                color: const Color(0xff3C3C3C),
              ),
            ),
            child: Text(
              'Feedback',
              style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            height: 44,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xff3C3C3C),
            ),
            child: Text(
              'Sign out',
              style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: const Color(0xffF5F5F5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
