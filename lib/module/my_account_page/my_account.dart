import 'package:after_exam/module/my_account_page/widgets/account_details.dart';
import 'package:after_exam/module/my_account_page/widgets/my_account_topbar.dart';
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
            children: [
              const MyAccountTopBar(),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 42),
                      Text(
                        'My account',
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: const Color(0xff3c3c3c),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const AccountDetail(),
                      const SizedBox(height: 30),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.settings_outlined),
                            Text(
                              ' Settings',
                              style: GoogleFonts.firaSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
