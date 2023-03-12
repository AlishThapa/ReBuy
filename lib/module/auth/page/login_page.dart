import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common_widget/header_text.dart';
import '../../navigation_bar/navigation_screen.dart';
import '../widget/button.dart';
import '../widget/signup_options.dart';
import '../widget/signup_text.dart';
import '../widget/text_field.dart';
import '../widget/top_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              title: 'Log in',
              fontSize: 48,
            ),
            const SizedBox(height: 30),
            Text(
              'Log up with one of the following options',
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
            Textfield(controller: email, name: 'Email'),
            const SizedBox(height: 18),
            Textfield(controller: password, name: 'Password'),
            const SizedBox(height: 18),
            GestureDetector(
                onTap: () {
                  if (email.text.isEmpty && password.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your email.'),
                      ),
                    );
                  }
                  else if (email.text.isNotEmpty && password.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your password.'),
                      ),
                    );
                  }
                  else if (email.text.isEmpty && password.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your email and password.'),
                      ),
                    );
                  }
                  else if(email.text.isNotEmpty && password.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavBar(),
                      ),
                    );
                  }
                },
                child:  CreateOrLoginButton(
                  buttonName: 'Log in',
                ),
          ),
          const SizedBox(height: 18),
          const SignupText(),
          const SizedBox(height: 50)
          ],
        ),
      ),
    ),)
    ,
    );
  }
}
