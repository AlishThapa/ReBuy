import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modals/my_order_modals.dart';

class OrderedItemList extends StatelessWidget {
  const OrderedItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: orderedItemModals.length,
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
                        child: Image.asset(orderedItemModals[index].image),
                      ),
                    ),
                    const SizedBox(width: 21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          orderedItemModals[index].productName,
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: const Color(0xff616161),
                          ),
                        ),
                        Text(
                          orderedItemModals[index].date,
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color(0xff898989),
                          ),
                        ),
                        Text(
                          '₹ ${orderedItemModals[index].price}',
                          style: GoogleFonts.firaSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color(0xff616161),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 7,
                right: 7,
                child: Container(
                  height: 30,
                  width: 88,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff3c3c3c),
                  ),
                  child: Text('Rate now', style:  GoogleFonts.firaSans(
                    color: const Color(0xffededed),
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
