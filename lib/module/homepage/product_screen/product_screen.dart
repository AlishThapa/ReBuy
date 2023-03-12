import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widget/button_back.dart';
import '../../../common_widget/header_text.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.90,
            padding: const EdgeInsets.only(top: 60, left: 18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ButtonBack(),
                    HeaderText(
                      title: 'ReBuy',
                      fontSize: 32,
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 41),
                        SizedBox(
                          height: 260,
                          width: double.infinity,
                          child: Image.asset('assets/images/shure.png'),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Shure podcast micro- phone',
                                style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: const Color(0xff3c3c3c),
                                ),
                              ),
                            ),
                            // const SizedBox(width: 10),
                            const Spacer(),
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xffFF5A5F),
                              child: Icon(
                                Icons.message,
                                color: Color(0xffF5F5F5),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 7),
                        Text(
                          '₹ 24,999',
                          style: GoogleFonts.firaSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff087E8B),
                          ),
                        ),
                        const SizedBox(height: 9),
                        RichText(
                          text: TextSpan(
                            text:
                                'The Shure SM7B reigns as king of studio recording for good reason: vocal recording and reproduction is clear and crisp, especially when recording in a ',
                            style: GoogleFonts.firaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff666666).withOpacity(0.7),
                            ),
                            children: [
                              TextSpan(
                                text: 'more...',
                                style: GoogleFonts.firaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff666666),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            text: 'Make:',
                            style: GoogleFonts.firaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4F4F4F),
                            ),
                            children: [
                              TextSpan(
                                text: ' Shure |',
                                style: GoogleFonts.firaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff4F4F4F).withOpacity(0.7),
                                ),
                              ),
                              TextSpan(
                                text: ' Year:',
                                style: GoogleFonts.firaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff4F4F4F),
                                ),
                              ),
                              TextSpan(
                                text: ' 2020',
                                style: GoogleFonts.firaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff4F4F4F).withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 9),
                        Row(
                          children: [
                            Text(
                              'Within Warranty',
                              style: GoogleFonts.firaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff4F4F4F),
                              ),
                            ),
                            const Icon(
                              Icons.done,
                              color: Color(0xff00A12D),
                            ),
                            Text(
                              '. Original Packing',
                              style: GoogleFonts.firaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff4F4F4F),
                              ),
                            ),
                            const Icon(
                              Icons.clear_sharp,
                              color: Color(0xffD30000),
                            ),
                          ],
                        ),
                        const SizedBox(height: 9),
                        Container(
                          height: 40,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xff000000), width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('assets/images/Google.svg', height: 20, width: 20),
                              Text(
                                'Search Details',
                                style: GoogleFonts.firaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 41),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: const Color(0xff727272),
                  alignment: Alignment.center,
                  child: Text(
                    'Save item',
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffECECEC),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: const Color(0xffFF5A5F),
                  alignment: Alignment.center,
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffECECEC),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
