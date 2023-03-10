import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../page/signup_page.dart';

class SignupText extends StatelessWidget {
  const SignupText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account? ',
        style: GoogleFonts.dosis(
          color: const Color(0xff8D8D8D),
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        children: [
          TextSpan(
            text: 'Signup',
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
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
