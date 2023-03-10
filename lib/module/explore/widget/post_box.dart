import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PostBox extends StatelessWidget {
  const PostBox({
    super.key,
    required this.profileIcon,
    required this.name,
    required this.subName,
    required this.postImage,
    required this.productName,
    required this.productDateAndPlace,
    required this.productPrice
  });

  final Widget profileIcon;
  final String name;
  final String subName;
  final String postImage;
  final String productName;
  final String productDateAndPlace;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 431,
      width: double.infinity,
      color: const Color(0xffFFFFFF),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: profileIcon,
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      subName,
                      style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: const Color(0xff747474),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 298,
                width: double.infinity,
                color: const Color(0xffefe0e7),
                child: Image.asset(
                  postImage,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 13,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: const Color(0xfff1d3d9),
                  child: SvgPicture.asset('assets/images/heart.svg'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: const Color(0xff3C3C3C),
                      ),
                    ),
                    Text(
                      productDateAndPlace,
                      style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xff747474),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '₹/ $productPrice',
                  style: GoogleFonts.firaSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: const Color(0xff3C3C3C),
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
