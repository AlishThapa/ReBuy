import 'package:after_exam/module/side_bar/widget/bottom_widget.dart';
import 'package:after_exam/module/side_bar/widget/button_container.dart';
import 'package:after_exam/module/side_bar/widget/sidebar_options.dart';
import 'package:after_exam/module/side_bar/widget/sidebar_topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBarPage extends StatelessWidget {
  const SideBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SideBarTopBar(),
              Expanded(
                  child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children:  [
                    const SizedBox(height: 74),
                    SideBarOptions(),
                    const SizedBox(height: 46),
                    const ButtonContainer(),
                    const SizedBox(height: 122),
                    const BottomWIdget(),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
