import 'package:after_exam/module/side_bar/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../side_bar/widget/sidebar_topbar.dart';

class HomepageTopBar extends StatelessWidget {
  const HomepageTopBar({
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
              'Hey Alice',
              style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: const Color(0xff3C3C3C),
              ),
            ),
            Text(
              'Welcome back!',
              style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: const Color(0xffFF5A5F),
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SideBarPage(),
              ),
            );
          },
          icon: const Icon(Icons.menu, size: 40),
        ),
      ],
    );
  }
}
