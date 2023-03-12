import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../my_account_page/my_account.dart';
import '../modal/sidebar_modals.dart';

class SideBarOptions extends StatelessWidget {
  SideBarOptions({super.key});

  List<Widget> listOption = [
    const MyAccountPage(),
    const Center(child: Text('index 1')),
    const Center(child: Text('index 2')),
    const Center(child: Text('index 3')),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => listOption[0]));
              }
              if (index == 1) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => listOption[1]));
              }
              if (index == 2) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => listOption[2]));
              }
              if (index == 3) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => listOption[3]));
              }
            },
            child: Container(
              height: 88,
              width: 346,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: const Color(0xffD4E4E6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 22.0),
                child: Row(
                  children: [
                    options[index].icon,
                    const SizedBox(width: 25),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          options[index].text,
                          style: GoogleFonts.firaSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff5f5f5f),
                          ),
                        ),
                        Text(
                          options[index].subtext,
                          style: GoogleFonts.firaSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff5f5f5f),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
