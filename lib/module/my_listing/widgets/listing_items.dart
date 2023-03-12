import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modals/listing_modals.dart';

class ListingItemList extends StatelessWidget {
  const ListingItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: listingItemModals.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                height: 114,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromRGBO(8, 126, 139, 0.14),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child:Image.asset(listingItemModals[index].image),
                      ),
                    ),
                    const SizedBox(width: 21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          listingItemModals[index].productName,
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: const Color(0xff616161),
                          ),
                        ),
                        Text(
                          'Views: ${listingItemModals[index].count}',
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xff898989),
                          ),
                        ),
                        Text(
                          '₹ ${listingItemModals[index].price}',
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color:  const Color(0xff087E8B),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Positioned(
                bottom: 7,
                right: 7,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Color(0xffFFFFFF),
                  child: Icon(
                    Icons.visibility_off,
                    color: Colors.black54,
                    size: 20,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
