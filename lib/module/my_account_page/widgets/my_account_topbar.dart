import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountTopBar extends StatelessWidget {
  const MyAccountTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          child: Image(
            image: AssetImage('assets/images/alice.png'),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alice Eve',
              style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w500,
                fontSize: 32,
                color: const Color(0xffFF5A5F),
              ),
            ),
            Text(
              'alice.eve@gmail.com',
              style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: const Color(0xff979797),
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.clear_sharp,
            size: 35,
          ),
        ),
      ],
    );
  }
}
