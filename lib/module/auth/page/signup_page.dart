import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common_widget/header_text.dart';
import '../widget/button.dart';
import '../widget/login_text.dart';
import '../widget/signup_options.dart';
import '../widget/text_field.dart';
import '../widget/top_bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.only(left: 35, top: 30, right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(),
                const SizedBox(height: 57),
                const HeaderText(
                  title: 'Sign up',
                  fontSize: 48,
                ),
                const SizedBox(height: 30),
                Text(
                  'Sign up with one of the following options',
                  style: GoogleFonts.dosis(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xff828282),
                  ),
                ),
                const SizedBox(height: 20),
                const SignupOption(),
                const SizedBox(height: 52),
                Row(
                  children: [
                    const Expanded(child: Divider(color: Color(0xff555555), height: 1)),
                    Text(
                      ' Or ',
                      style: GoogleFonts.dosis(
                        fontSize: 12,
                        color: const Color(0xff828282),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Expanded(child: Divider(color: Color(0xff555555), height: 1))
                  ],
                ),
                const SizedBox(height: 52),
                Textfield(controller: name, name: 'Name'),
                const SizedBox(height: 18),
                Textfield(controller: email, name: 'Email'),
                const SizedBox(height: 18),
                Textfield(controller: password, name: 'Password'),
                const SizedBox(height: 18),
                 CreateOrLoginButton(
                  buttonName: 'Sign up',
                ),
                const SizedBox(height: 18),
                const LoginText(),
                const SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
