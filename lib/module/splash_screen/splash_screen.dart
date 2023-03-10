import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation_bar/navigation_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is created
    Timer(const Duration(seconds: 5), () {
      // Navigate to the next page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => NavBar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFF5A5F), Color(0xffC1839F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: CircleAvatar(
            radius: 60,
            backgroundColor: const Color(0xffF5F5F5),
            child: Text(
              'ReBuy',
              style: GoogleFonts.dosis(
                fontWeight: FontWeight.w800,
                fontSize: 32,
                color: const Color(0xff3C3C3C),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
    ;
  }
}
