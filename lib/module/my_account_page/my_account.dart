import 'package:after_exam/module/my_account/widgets/account_details.dart';
import 'package:after_exam/module/my_account/widgets/my_account_topbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAccountTopBar(),
              const SizedBox(height: 53),
              Text(
                'My account',
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: const Color(0xff3c3c3c),
                ),
              ),
              const SizedBox(height: 15),
              AccountDetail(),
            ],
          ),
        ),
      ),
    );
  }
}
