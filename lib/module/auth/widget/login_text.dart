import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../page/login_page.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Already have an account? ',
        style: GoogleFonts.dosis(
          color: const Color(0xff8D8D8D),
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        children: [
          TextSpan(
            text: 'login',
            style: GoogleFonts.dosis(
              color: const Color(0xffFF5A5F),
              fontWeight: FontWeight.w400,
              fontSize: 18,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
