import 'package:after_exam/module/homepage/modals/product_modals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 246,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: productModals.length,
        itemBuilder: (context, index) {
          final product = productModals[index];
          return Container(
            height: 246,
            width: 250,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
              color: Color(0xffF5F5F5),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        product.image,
                        height: 174,
                        width: 250,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 16,
                      child: CircleAvatar(
                        radius:16,
                        backgroundColor: const Color(0xffFFFFFF).withOpacity(0.8),
                        child: const Icon(
                          Icons.favorite_outline,
                          color: Color(0xffFF5858),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.productName,
                              style: GoogleFonts.firaSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: const Color(0xff3C3C3C),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              product.dataAndComp,
                              style: GoogleFonts.firaSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: const Color(0xffC1839F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '₹ ${product.price}',
                          style: GoogleFonts.firaSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff3C3C3C),
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
